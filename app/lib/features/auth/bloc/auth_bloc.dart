import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer' as developer;
import '../../../core/models/user.dart';
import '../../../core/network/api_client.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ApiClient _apiClient;
  final FlutterSecureStorage _secureStorage;

  AuthBloc({
    ApiClient? apiClient,
    FlutterSecureStorage? secureStorage,
  })  : _apiClient = apiClient ?? ApiClient(),
        _secureStorage = secureStorage ?? const FlutterSecureStorage(),
        super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        login: (phone) => _onLogin(phone, emit),
        verifyOtp: (phone, otp) => _onVerifyOtp(phone, otp, emit),
        selectRole: (role) => _onSelectRole(role, emit),
        logout: () => _onLogout(emit),
        checkAuth: () => _onCheckAuth(emit),
      );
    });
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
