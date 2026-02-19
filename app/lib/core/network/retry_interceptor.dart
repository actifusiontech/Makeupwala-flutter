import 'dart:io';
import 'package:dio/dio.dart';
import '../services/logging_service.dart';

/// Dio interceptor that automatically retries failed requests
class RetryInterceptor extends Interceptor {
  final Dio dio;
  final LoggingService _logger = LoggingService();
  
  /// Maximum number of retry attempts
  final int maxRetries;
  
  /// Initial delay before first retry (in milliseconds)
  final int retryDelay;
  
  /// Multiplier for exponential backoff
  final double backoffMultiplier;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 3,
    this.retryDelay = 1000,
    this.backoffMultiplier = 2.0,
  });

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err)) {
      final retryCount = err.requestOptions.extra['retryCount'] as int? ?? 0;
      
      if (retryCount < maxRetries) {
        final delay = _calculateDelay(retryCount);
        
        _logger.warning(
          'Retrying request (attempt ${retryCount + 1}/$maxRetries) after ${delay}ms',
          err,
        );
        
        await Future.delayed(Duration(milliseconds: delay));
        
        // Update retry count
        err.requestOptions.extra['retryCount'] = retryCount + 1;
        
        try {
          // Retry the request
          final response = await dio.fetch(err.requestOptions);
          return handler.resolve(response);
        } on DioException catch (e) {
          // If retry also fails, pass it to the next error handler
          return super.onError(e, handler);
        }
      }
    }
    
    // If we shouldn't retry or max retries exceeded, pass the error through
    return super.onError(err, handler);
  }

  /// Determine if the request should be retried
  bool _shouldRetry(DioException err) {
    // Don't retry on cancellation
    if (err.type == DioExceptionType.cancel) {
      return false;
    }
    
    // Don't retry client errors (4xx)
    if (err.response?.statusCode != null) {
      final statusCode = err.response!.statusCode!;
      if (statusCode >= 400 && statusCode < 500) {
        return false;
      }
    }
    
    // Retry on network errors
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.connectionError) {
      return true;
    }
    
    // Retry on socket exceptions
    if (err.error is SocketException) {
      return true;
    }
    
    // Retry on server errors (5xx)
    if (err.response?.statusCode != null) {
      final statusCode = err.response!.statusCode!;
      if (statusCode >= 500) {
        return true;
      }
    }
    
    return false;
  }

  /// Calculate delay with exponential backoff
  int _calculateDelay(int retryCount) {
    return (retryDelay * (backoffMultiplier * retryCount)).toInt();
  }
}
