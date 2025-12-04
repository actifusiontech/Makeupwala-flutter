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
      onError: (e, handler) {
        addDebugLog('❌ ERROR: ${e.type}');
        addDebugLog('🔴 Message: ${e.message}');
        if (e.response != null) {
          addDebugLog('📉 Status: ${e.response?.statusCode}');
          addDebugLog('📉 Response: ${e.response?.data}');
        }
        
        // Basic retry for network errors
        if (e.type == DioExceptionType.connectionError) {
          addDebugLog('🔄 Connection error detected');
        }
        handler.next(e);
      },
    ));
  }
}
