/// Custom exceptions for the application
/// These are thrown by repositories and data sources

/// Exception thrown when a server error occurs
class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final dynamic data;

  ServerException({
    required this.message,
    this.statusCode,
    this.data,
  });

  @override
  String toString() => 'ServerException: $message (Status: $statusCode)';
}

/// Exception thrown when a cache operation fails
class CacheException implements Exception {
  final String message;
  final dynamic error;

  CacheException({
    required this.message,
    this.error,
  });

  @override
  String toString() => 'CacheException: $message';
}

/// Exception thrown when a network error occurs
class NetworkException implements Exception {
  final String message;
  final dynamic error;

  NetworkException({
    required this.message,
    this.error,
  });

  @override
  String toString() => 'NetworkException: $message';
}

/// Exception thrown when an authentication error occurs
class AuthException implements Exception {
  final String message;
  final String? code;

  AuthException({
    required this.message,
    this.code,
  });

  @override
  String toString() => 'AuthException: $message (Code: $code)';
}

/// Exception thrown when input validation fails
class ValidationException implements Exception {
  final String message;
  final Map<String, String>? fieldErrors;

  ValidationException({
    required this.message,
    this.fieldErrors,
  });

  @override
  String toString() => 'ValidationException: $message';
}

/// Exception thrown when a payment operation fails
class PaymentException implements Exception {
  final String message;
  final String? code;
  final dynamic data;

  PaymentException({
    required this.message,
    this.code,
    this.data,
  });

  @override
  String toString() => 'PaymentException: $message (Code: $code)';
}
