import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base class for all failures
/// Failures represent errors in a user-friendly way
@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.cache({
    required String message,
  }) = CacheFailure;

  const factory Failure.network({
    required String message,
  }) = NetworkFailure;

  const factory Failure.auth({
    required String message,
    String? code,
  }) = AuthFailure;

  const factory Failure.validation({
    required String message,
    Map<String, String>? fieldErrors,
  }) = ValidationFailure;

  const factory Failure.payment({
    required String message,
    String? code,
  }) = PaymentFailure;

  const factory Failure.unknown({
    required String message,
  }) = UnknownFailure;
}

/// Extension to get user-friendly error messages
extension FailureX on Failure {
  String get userMessage {
    return when(
      server: (message, statusCode) {
        if (statusCode == 500) {
          return 'Server error. Please try again later.';
        } else if (statusCode == 503) {
          return 'Service temporarily unavailable. Please try again.';
        }
        return message.isNotEmpty ? message : 'Something went wrong. Please try again.';
      },
      cache: (message) => 'Failed to load cached data. Please refresh.',
      network: (message) => 'No internet connection. Please check your network.',
      auth: (message, code) {
        if (code == 'invalid_credentials') {
          return 'Invalid phone number or OTP.';
        } else if (code == 'session_expired') {
          return 'Your session has expired. Please login again.';
        }
        return message.isNotEmpty ? message : 'Authentication failed.';
      },
      validation: (message, fieldErrors) => message,
      payment: (message, code) {
        if (code == 'payment_failed') {
          return 'Payment failed. Please try again.';
        } else if (code == 'insufficient_balance') {
          return 'Insufficient wallet balance.';
        }
        return message.isNotEmpty ? message : 'Payment error occurred.';
      },
      unknown: (message) => message.isNotEmpty ? message : 'An unexpected error occurred.',
    );
  }
}
