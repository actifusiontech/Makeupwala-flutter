import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// Centralized logging service
/// Handles logging to console in debug mode and to Crashlytics in production
class LoggingService {
  static final LoggingService _instance = LoggingService._internal();
  factory LoggingService() => _instance;
  LoggingService._internal();

  late final Logger _logger;
  bool _initialized = false;
  bool _firebaseInitialized = false;

  /// Initialize the logging service
  Future<void> initialize() async {
    if (_initialized) return;

    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
      level: kDebugMode ? Level.debug : Level.warning,
    );

    _initialized = true;
    debug('LoggingService initialized');
  }

  /// Mark Firebase as initialized
  void markFirebaseInitialized() {
    _firebaseInitialized = true;
    info('Firebase connectivity established for logging');
    
    // Set up Crashlytics handlers now that Firebase is ready
    if (!kDebugMode) {
      FlutterError.onError = (errorDetails) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    }
  }

  /// Log debug message
  void debug(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  /// Log info message
  void info(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  /// Log warning message
  void warning(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w(message, error: error, stackTrace: stackTrace);
    
    if (!kDebugMode && error != null && _firebaseInitialized) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: false);
    }
  }

  /// Log error message
  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error: error, stackTrace: stackTrace);
    
    if (!kDebugMode && error != null && _firebaseInitialized) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: false);
    }
  }

  /// Log fatal error (crashes)
  void fatal(String message, dynamic error, StackTrace? stackTrace) {
    _logger.f(message, error: error, stackTrace: stackTrace);
    
    if (!kDebugMode && _firebaseInitialized) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
    }
  }

  /// Log API request
  void logRequest(String method, String url, {Map<String, dynamic>? data}) {
    if (kDebugMode) {
      debug('API Request: $method $url', data);
    }
  }

  /// Log API response
  void logResponse(String method, String url, int statusCode, {dynamic data}) {
    if (kDebugMode) {
      debug('API Response: $method $url [$statusCode]', data);
    }
  }

  /// Set user identifier for crash reports
  void setUserId(String userId) {
    if (!kDebugMode && _firebaseInitialized) {
      FirebaseCrashlytics.instance.setUserIdentifier(userId);
    }
  }

  /// Set custom key-value for crash reports
  void setCustomKey(String key, dynamic value) {
    if (!kDebugMode && _firebaseInitialized) {
      FirebaseCrashlytics.instance.setCustomKey(key, value.toString());
    }
  }
}
