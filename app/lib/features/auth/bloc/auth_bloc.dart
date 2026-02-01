import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer' as developer;
import '../../../core/models/user.dart';
import '../../../core/network/api_client.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiClient _apiClient;
  final FlutterSecureStorage _secureStorage;
  final GoogleSignIn _googleSignIn;

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
        login: (phone) => _onLogin(phone, emit),
        verifyOtp: (phone, otp) => _onVerifyOtp(phone, otp, emit),
        selectRole: (role) => _onSelectRole(role, emit),
        logout: () => _onLogout(emit),
        checkAuth: () => _onCheckAuth(emit),
        socialLogin: (provider) => _onSocialLogin(provider, emit),
        register: (name, email, phone, password, role) => _onRegister(name, email, phone, password, role, emit),
        verifyRegistrationOtp: (phone, otp) => _onVerifyRegistrationOtp(phone, otp, emit),
      );
    });
  }

  Future<void> _onRegister(String fullName, String email, String phone, String password, String role, Emitter<AuthState> emit) async {
    developer.log('📝 Register requested: $email, $phone', name: 'AuthBloc');
    emit(const AuthState.loading());
    try {
      await _apiClient.dio.post('/auth/register', data: {
        'full_name': fullName,
        'email': email,
        'phone': phone,
        'password': password,
        'role': role,
      });
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
      // Depending on backend, might return token immediately or require login
      // Looking at `dto.go` OTPVerifyResponse has UserID and Verified bool, but not token?
      // Wait, VerifyOTPResponse has UserID.
      // If it doesn't return token, we might need to Auto-Login?
      
      // Checking Handler.VerifyRegistrationOTP calls svc.VerifyRegistrationOTP
      // svc.VerifyRegistrationOTP returns *OTPVerifyResponse*
      // DTO: {Verified: bool, UserID: uuid, Phone: string, Message: string}
      // It does NOT return Token!
      
      // So we must Auto-Login or ask user to login.
      // Better UX: Auto-Login. But we need password for standard login.
      // We don't have password here (unless specific flow).
      // Or we can ask user to Login.
      
      emit(const AuthState.unauthenticated()); // Or a success state message?
      // Actually, let's emit a specific state or just unauthenticated with message?
      // For now, let's emit unauthenticated but maybe show success message via listener.
      // Ideally we should auto-login.
      
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
        final String? idToken = googleAuth.idToken;
        final String? accessToken = googleAuth.accessToken;

        if (idToken == null) {
           throw Exception('Failed to retrieve Google ID Token');
        }

        developer.log('📞 Calling /auth/google-login', name: 'AuthBloc');
        final response = await _apiClient.dio.post('/auth/google-login', data: {
          'id_token': idToken,
          'access_token': accessToken,
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
}
