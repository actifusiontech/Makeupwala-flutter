import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer' as developer;
import '../config/env.dart';

class ApiClient {
  late final Dio dio;
  final FlutterSecureStorage _secureStorage;
  static final List<String> debugLogs = [];

  static void addDebugLog(String log) {
    final timestamp = DateTime.now().toIso8601String();
    debugLogs.add('[$timestamp] $log');
    if (debugLogs.length > 50) debugLogs.removeAt(0); // Keep last 50 logs
    developer.log(log, name: 'ApiClient');
  }

  ApiClient({String? baseUrl, FlutterSecureStorage? secureStorage})
      : _secureStorage = secureStorage ?? const FlutterSecureStorage() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl ?? Env.apiBaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 20),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    addDebugLog('🔧 ApiClient initialized with baseUrl: ${baseUrl ?? Env.apiBaseUrl}');

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Attach auth token if available
        final token = await _secureStorage.read(key: 'auth_token');
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
          addDebugLog('🔑 Token attached to request');
        }
        
        addDebugLog('📤 REQUEST: ${options.method} ${options.baseUrl}${options.path}');
        addDebugLog('📋 Headers: ${options.headers}');
        if (options.data != null) {
          addDebugLog('📦 Body: ${options.data}');
        }
        
        handler.next(options);
      },
      onResponse: (response, handler) {
        addDebugLog('✅ RESPONSE ${response.statusCode}: ${response.requestOptions.path}');
        addDebugLog('📥 Data: ${response.data}');
        handler.next(response);
      },
      onError: (e, handler) async {
        addDebugLog('❌ ERROR: ${e.type}');
        addDebugLog('🔴 Message: ${e.message}');
        if (e.response != null) {
          addDebugLog('📉 Status: ${e.response?.statusCode}');
          addDebugLog('📉 Response: ${e.response?.data}');
          
          // Handle 401 Unauthorized - Attempt Token Refresh
          if (e.response?.statusCode == 401) {
            addDebugLog('🔄 401 Detected - Attempting token refresh...');
            final success = await _refreshToken();
            if (success) {
              addDebugLog('✨ Token refreshed successfully. Retrying original request...');
              // Retry the original request
              try {
                final response = await _retry(e.requestOptions);
                return handler.resolve(response);
              } catch (retryError) {
                return handler.next(retryError is DioException ? retryError : e);
              }
            } else {
              addDebugLog('🚫 Token refresh failed. User must log in again.');
              // Clear tokens and notify app (could emit an event to a global bloc)
              await _secureStorage.delete(key: 'auth_token');
              await _secureStorage.delete(key: 'refresh_token');
            }
          }
        }
        
        // Basic retry for network errors
        if (e.type == DioExceptionType.connectionError) {
          addDebugLog('🔄 Connection error detected');
        }
        handler.next(e);
      },
    ));
  }

  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await _secureStorage.read(key: 'refresh_token');
      if (refreshToken == null) return false;

      final response = await dio.post('/auth/refresh', data: {
        'refresh_token': refreshToken,
      });

      if (response.statusCode == 200) {
        final newToken = response.data['access_token'];
        final newRefreshToken = response.data['refresh_token'];
        await _secureStorage.write(key: 'auth_token', value: newToken);
        await _secureStorage.write(key: 'refresh_token', value: newRefreshToken);
        return true;
      }
      return false;
    } catch (e) {
      addDebugLog('❌ Refresh token call failed: $e');
      return false;
    }
  }

  Future<Response> _retry(RequestOptions requestOptions) async {
    final token = await _secureStorage.read(key: 'auth_token');
    final options = Options(
      method: requestOptions.method,
      headers: {
        ...requestOptions.headers,
        'Authorization': 'Bearer $token',
      },
    );
    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
