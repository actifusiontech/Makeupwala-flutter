import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer' as developer;
import '../../../core/models/user.dart';
import '../../../core/network/api_client.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiClient _apiClient;
  final FlutterSecureStorage _secureStorage;
  final GoogleSignIn _googleSignIn;

  ApiClient get apiClient => _apiClient;

  AuthBloc({
    ApiClient? apiClient,
    FlutterSecureStorage? secureStorage,
    GoogleSignIn? googleSignIn,
  })  : _apiClient = apiClient ?? ApiClient(),
        _secureStorage = secureStorage ?? const FlutterSecureStorage(),
        _googleSignIn = googleSignIn ?? GoogleSignIn(scopes: ['email', 'profile']),
        super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        loginWithEmail: (email, password) => _onLoginWithEmail(email, password, emit),
        requestEmailOtp: (email) => _onRequestEmailOtp(email, emit),
        requestPhoneOtp: (phone) => _onRequestPhoneOtp(phone, emit),
        verifyContactOtp: (phone, email, otp, isRegistration, isProfileUpdate) => _onVerifyContactOtp(phone, email, otp, isRegistration, isProfileUpdate, emit),
        login: (phone) => _onLogin(phone, emit),
        verifyOtp: (phone, otp) => _onVerifyOtp(phone, otp, emit),
        selectRole: (role) => _onSelectRole(role, emit),
        switchPersona: (role) => _onSwitchPersona(role, emit),
        logout: () => _onLogout(emit),
        checkAuth: () => _onCheckAuth(emit),
        socialLogin: (provider) => _onSocialLogin(provider, emit),
        register: (name, email, phone, password, role) => _onRegister(name, email, phone, password, role, emit),
        verifyRegistrationOtp: (phone, otp) => _onVerifyRegistrationOtp(phone, otp, emit),
        forgotPassword: (email) => _onForgotPassword(email, emit),
        resetPassword: (token, tempPassword, newPassword) => _onResetPassword(token, tempPassword, newPassword, emit),
      );
    });
  }

  Future<void> _onLoginWithEmail(String email, String password, Emitter<AuthState> emit) async {
    developer.log('🔐 Email Login requested: $email', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      final response = await _apiClient.dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      final data = response.data;
      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final userData = data['user'] as Map<String, dynamic>;

      await _secureStorage.write(key: 'auth_token', value: token);
      await _secureStorage.write(key: 'refresh_token', value: refreshToken);

      final user = User.fromJson(userData);
      emit(AuthState.authenticated(user: user));
    } catch (e) {
      developer.log('❌ Email Login error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Login failed: Invalid credentials or unverified account.'));
    }
  }

  Future<void> _onRequestEmailOtp(String email, Emitter<AuthState> emit) async {
    developer.log('📧 Email OTP requested: $email', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      await _apiClient.dio.post('/auth/request-otp', data: {'email': email});
      emit(AuthState.otpSent(phoneNumber: email)); // Reuse otpSent state with email string
    } catch (e) {
      developer.log('❌ Email OTP error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Failed to send verification code to email.'));
    }
  }

  Future<void> _onRequestPhoneOtp(String phone, Emitter<AuthState> emit) async {
    developer.log('📱 Phone OTP requested: $phone', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      await _apiClient.dio.post('/auth/request-otp', data: {'phone': phone});
      emit(AuthState.otpSent(phoneNumber: phone));
    } catch (e) {
      developer.log('❌ Phone OTP error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Failed to send verification code to phone.'));
    }
  }

  Future<void> _onVerifyContactOtp(String? phone, String? email, String otp, bool isRegistration, bool isProfileUpdate, Emitter<AuthState> emit) async {
    developer.log('🔐 Verifying Contact OTP: ${phone ?? email} (ProfileUpdate: $isProfileUpdate)', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      if (isProfileUpdate) {
        // Just verify the OTP so it remains 'VERIFIED' in DB for profile update check
        await _apiClient.dio.post('/auth/verify-otp', data: {
          'otp': otp,
          if (phone != null) 'phone': phone,
          if (email != null) 'email': email,
        });
        emit(AuthState.phoneVerified(phone: phone ?? email ?? ''));
        return;
      }

      final endpoint = isRegistration ? '/auth/verify-registration' : '/auth/login-otp';
      final payload = {
        'otp': otp,
        if (phone != null) 'phone': phone,
        if (email != null) 'email': email,
      };

      final response = await _apiClient.dio.post(endpoint, data: payload);
      final data = response.data;

      if (!isRegistration && data['requires_registration'] == true) {
        emit(AuthState.needsRegistration(phoneNumber: phone ?? email ?? ''));
        return;
      }

      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final userData = data['user'] as Map<String, dynamic>;

      await _secureStorage.write(key: 'auth_token', value: token);
      await _secureStorage.write(key: 'refresh_token', value: refreshToken);

      final user = User.fromJson(userData);
      
      if (user.role == null || user.role!.isEmpty) {
        emit(AuthState.needsRoleSelection(user: user));
      } else {
        emit(AuthState.authenticated(user: user));
      }
    } catch (e) {
      developer.log('❌ Verify Contact OTP error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Invalid or expired verification code.'));
    }
  }

  Future<void> _onRegister(String fullName, String email, String phone, String password, String role, Emitter<AuthState> emit) async {
    developer.log('📝 Register requested: $email, $phone', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      final response = await _apiClient.dio.post('/auth/register', data: {
        'full_name': fullName,
        'email': email,
        'phone': phone,
        'password': password,
        'role': role,
      });

      final data = response.data;

      // Handle Auto-Login if OTP was skipped (pre-verified numbers)
      if (data['login_response'] != null) {
        developer.log('🚀 Registration skipped OTP (pre-verified). Auto-logging in...', name: 'AuthBloc');
        final loginData = data['login_response'] as Map<String, dynamic>;
        final token = loginData['access_token'] as String;
        final refreshToken = loginData['refresh_token'] as String;
        final userData = loginData['user'] as Map<String, dynamic>;

        await _secureStorage.write(key: 'auth_token', value: token);
        await _secureStorage.write(key: 'refresh_token', value: refreshToken);

        final user = User.fromJson(userData);
        emit(AuthState.authenticated(user: user));
        return;
      }

      emit(AuthState.otpSent(phoneNumber: phone));
    } catch (e) {
      developer.log('❌ Register error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Registration failed: ${e.toString()}'));
    }
  }

  Future<void> _onVerifyRegistrationOtp(String phone, String otp, Emitter<AuthState> emit) async {
    developer.log('📝 Verifying Registration OTP: $phone', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      final response = await _apiClient.dio.post('/auth/verify-registration', data: {
        'phone': phone,
        'otp': otp,
      });
      
      final data = response.data;
      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final userData = data['user'] as Map<String, dynamic>;

      await _secureStorage.write(key: 'auth_token', value: token);
      await _secureStorage.write(key: 'refresh_token', value: refreshToken);

      final user = User.fromJson(userData);
      emit(AuthState.authenticated(user: user));

    } catch (e) {
      developer.log('❌ Verify Registration OTP error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Invalid OTP'));
    }
  }

  Future<void> _onSocialLogin(String provider, Emitter<AuthState> emit) async {
    developer.log('🔐 Social Login requested: $provider', name: 'AuthBloc');
    emit(const AuthState.loading());
    
    try {
      if (provider == 'google') {
        final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
        
        if (googleUser == null) {
          emit(const AuthState.initial()); // User cancelled
          return;
        }

        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        
        // Authenticate with Firebase using Google credentials
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        
        final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
        final String? firebaseIdToken = await userCredential.user?.getIdToken();

        if (firebaseIdToken == null) {
           throw Exception('Failed to retrieve Firebase ID Token');
        }

        developer.log('📞 Calling /auth/google-login with Firebase ID token', name: 'AuthBloc');
        final response = await _apiClient.dio.post('/auth/google-login', data: {
          'id_token': firebaseIdToken,
          'access_token': googleAuth.accessToken,
          'email': googleUser.email,
          'displayName': googleUser.displayName,
          'photoUrl': googleUser.photoUrl,
        });

        final data = response.data;
        final token = data['access_token'] as String;
        final refreshToken = data['refresh_token'] as String;
        final userData = data['user'] as Map<String, dynamic>;

        await _secureStorage.write(key: 'auth_token', value: token);
        await _secureStorage.write(key: 'refresh_token', value: refreshToken);

        final user = User.fromJson(userData);
        
        // Check if user has a role assigned
        if (user.role.isEmpty || user.role == '') {
          developer.log('⚠️ Social User needs role selection', name: 'AuthBloc');
          emit(AuthState.needsRoleSelection(user: user));
        } else {
          emit(AuthState.authenticated(user: user));
        }
      }
    } catch (e) {
      developer.log('❌ Social Login error: $e', name: 'AuthBloc');
      String msg = 'Login Failed';
      if (e.toString().contains('sign_in_failed')) {
        msg = 'Sign in failed. Check google-services.json configuration.';
      }
      emit(AuthState.error(message: msg));
    }
  }

  Future<void> _onLogin(String phone, Emitter<AuthState> emit) async {
    developer.log('🔐 Login requested for phone: $phone', name: 'AuthBloc');
    ApiClient.addDebugLog('🔐 AuthBloc: Login requested for phone: $phone');
    emit(const AuthState.loading());
    
    try {
      developer.log('📞 Calling /auth/request-otp', name: 'AuthBloc');
      final response = await _apiClient.dio.post('/auth/request-otp', data: {
        'phone': phone,
      });
      
      developer.log('✅ OTP sent successfully: ${response.data}', name: 'AuthBloc');
      ApiClient.addDebugLog('✅ OTP sent successfully');
      emit(AuthState.otpSent(phoneNumber: phone));
    } catch (e) {
      developer.log('❌ Login error: $e', name: 'AuthBloc');
      ApiClient.addDebugLog('❌ Login failed: $e');
      String errorMessage = 'Failed to send OTP. Please try again.';
      if (e.toString().contains('connection error')) {
        errorMessage = 'Could not connect to server. Please check your internet connection.';
      }
      emit(AuthState.error(message: errorMessage));
    }
  }

  Future<void> _onVerifyOtp(
    String phone,
    String otp,
    Emitter<AuthState> emit,
  ) async {
    developer.log('🔐 Verifying OTP for phone: $phone', name: 'AuthBloc');
    ApiClient.addDebugLog('🔐 AuthBloc: Verifying OTP for phone: $phone, OTP: $otp');
    emit(const AuthState.loading());
    
    try {
      developer.log('📞 Calling /auth/login-otp', name: 'AuthBloc');
      final response = await _apiClient.dio.post('/auth/login-otp', data: {
        'phone': phone,
        'otp': otp,
      });
      
      developer.log('📦 Response data: ${response.data}', name: 'AuthBloc');
      final data = response.data;
      
      if (data['requires_registration'] == true) {
        developer.log('🆕 User needs registration', name: 'AuthBloc');
        ApiClient.addDebugLog('🆕 User needs registration for phone: $phone');
        emit(AuthState.needsRegistration(phoneNumber: phone));
        return;
      }

      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final userData = data['user'] as Map<String, dynamic>;
      
      developer.log('🔑 Saving tokens to secure storage', name: 'AuthBloc');
      // Save tokens to secure storage
      await _secureStorage.write(key: 'auth_token', value: token);
      await _secureStorage.write(key: 'refresh_token', value: refreshToken);
      
      developer.log('👤 Parsing user data: $userData', name: 'AuthBloc');
      final user = User.fromJson(userData);
      ApiClient.addDebugLog('👤 User parsed: ${user.fullName}, Role: ${user.role}');
      
      // Check if user has a role assigned
      if (user.role.isEmpty || user.role == '') {
        developer.log('⚠️ User needs role selection', name: 'AuthBloc');
        ApiClient.addDebugLog('⚠️ User needs role selection');
        emit(AuthState.needsRoleSelection(user: user));
      } else {
        developer.log('✅ User authenticated with role: ${user.role}', name: 'AuthBloc');
        ApiClient.addDebugLog('✅ User authenticated');
        emit(AuthState.authenticated(user: user));
      }
    } catch (e, stackTrace) {
      developer.log('❌ OTP verification error: $e', name: 'AuthBloc', stackTrace: stackTrace);
      ApiClient.addDebugLog('❌ OTP verification failed: $e');
      developer.log('❌ OTP verification error: $e', name: 'AuthBloc', stackTrace: stackTrace);
      ApiClient.addDebugLog('❌ OTP verification failed: $e');
      String errorMessage = 'Invalid OTP. Please try again.';
      if (e.toString().contains('400')) {
        errorMessage = 'Invalid or expired OTP.';
      }
      emit(AuthState.error(message: errorMessage));
    }
  }

  Future<void> _onSelectRole(String role, Emitter<AuthState> emit) async {
    final currentState = state;
    if (currentState is _NeedsRoleSelection) {
      emit(const AuthState.loading());
      
      try {
        // Update user role via API
        await _apiClient.dio.post('/auth/select-role', data: {
          'role': role.toLowerCase(),
        });
        
        final updatedUser = currentState.user.copyWith(role: role.toLowerCase());
        emit(AuthState.authenticated(user: updatedUser));
      } catch (e) {
        emit(AuthState.error(message: 'Failed to set role. Please try again.'));
        emit(AuthState.needsRoleSelection(user: currentState.user));
      }
    }
  }

  Future<void> _onSwitchPersona(String role, Emitter<AuthState> emit) async {
    final currentState = state;
    if (currentState is _Authenticated) {
      developer.log('🔄 Switching active persona to: $role', name: 'AuthBloc');
      emit(const AuthState.loading());
      try {
        // Here we can hit an endpoint to log the switch or fetch new context if needed.
        // For now, updating the local role state to drive UI routing:
        final updatedUser = currentState.user.copyWith(role: role.toLowerCase());
        emit(AuthState.authenticated(user: updatedUser));
      } catch (e) {
        emit(AuthState.error(message: 'Failed to switch persona.'));
        emit(AuthState.authenticated(user: currentState.user));
      }
    }
  }

  Future<void> _onLogout(Emitter<AuthState> emit) async {
    await _secureStorage.delete(key: 'auth_token');
    emit(const AuthState.unauthenticated());
  }

  Future<void> _onCheckAuth(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    
    try {
      final token = await _secureStorage.read(key: 'auth_token');
      
      if (token == null) {
        emit(const AuthState.unauthenticated());
        return;
      }
      
      // Fetch user data with the token
      final response = await _apiClient.dio.get('/auth/me');
      final userData = response.data['data'] as Map<String, dynamic>;
      final user = User.fromJson(userData);
      
      emit(AuthState.authenticated(user: user));
    } catch (e) {
      await _secureStorage.delete(key: 'auth_token');
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onForgotPassword(String email, Emitter<AuthState> emit) async {
    developer.log('📧 Forgot Password requested for: $email', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      await _apiClient.dio.post('/auth/forgot-password', data: {'email': email});
      emit(const AuthState.passwordResetSent());
    } catch (e) {
      developer.log('❌ Forgot Password error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Failed to send reset link. Please try again.'));
    }
  }

  Future<void> _onResetPassword(String token, String tempPassword, String newPassword, Emitter<AuthState> emit) async {
    developer.log('🔐 Reset Password requested', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      await _apiClient.dio.post('/auth/reset-password', data: {
        'token': token,
        'temporary_password': tempPassword,
        'new_password': newPassword,
      });
      emit(const AuthState.passwordResetSuccess());
    } catch (e) {
      developer.log('❌ Reset Password error: $e', name: 'AuthBloc');
      emit(AuthState.error(message: 'Failed to reset password. Please try again.'));
    }
  }
}
