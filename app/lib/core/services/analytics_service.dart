import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'logging_service.dart';

/// Analytics service wrapper for Firebase Analytics
class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();
  factory AnalyticsService() => _instance;
  AnalyticsService._internal();

  final LoggingService _logger = LoggingService();
  late final FirebaseAnalytics _analytics;
  late final FirebaseAnalyticsObserver _observer;
  bool _initialized = false;

  /// Initialize analytics
  Future<void> initialize() async {
    if (_initialized) return;

    _analytics = FirebaseAnalytics.instance;
    _observer = FirebaseAnalyticsObserver(analytics: _analytics);

    // Enable analytics collection
    await _analytics.setAnalyticsCollectionEnabled(!kDebugMode);

    _initialized = true;
    _logger.info('AnalyticsService initialized');
  }

  /// Get the analytics observer for navigation tracking
  FirebaseAnalyticsObserver get observer => _observer;

  /// Log a custom event
  Future<void> logEvent({
    required String name,
    Map<String, dynamic>? parameters,
  }) async {
    try {
      await _analytics.logEvent(
        name: name,
        parameters: parameters,
      );
      _logger.debug('Analytics event: $name', parameters);
    } catch (e, stackTrace) {
      _logger.error('Failed to log analytics event: $name', e, stackTrace);
    }
  }

  /// Log screen view
  Future<void> logScreenView({
    required String screenName,
    String? screenClass,
  }) async {
    try {
      await _analytics.logScreenView(
        screenName: screenName,
        screenClass: screenClass,
      );
      _logger.debug('Screen view: $screenName');
    } catch (e, stackTrace) {
      _logger.error('Failed to log screen view: $screenName', e, stackTrace);
    }
  }

  /// Set user ID
  Future<void> setUserId(String userId) async {
    try {
      await _analytics.setUserId(id: userId);
      _logger.debug('Set user ID: $userId');
    } catch (e, stackTrace) {
      _logger.error('Failed to set user ID', e, stackTrace);
    }
  }

  /// Set user property
  Future<void> setUserProperty({
    required String name,
    required String value,
  }) async {
    try {
      await _analytics.setUserProperty(name: name, value: value);
      _logger.debug('Set user property: $name = $value');
    } catch (e, stackTrace) {
      _logger.error('Failed to set user property: $name', e, stackTrace);
    }
  }

  // Predefined events for common actions

  /// Log login event
  Future<void> logLogin({required String method}) async {
    await logEvent(
      name: 'login',
      parameters: {'method': method},
    );
  }

  /// Log sign up event
  Future<void> logSignUp({required String method}) async {
    await logEvent(
      name: 'sign_up',
      parameters: {'method': method},
    );
  }

  /// Log booking created event
  Future<void> logBookingCreated({
    required String artistId,
    required String serviceId,
    required double amount,
  }) async {
    await logEvent(
      name: 'booking_created',
      parameters: {
        'artist_id': artistId,
        'service_id': serviceId,
        'amount': amount,
      },
    );
  }

  /// Log payment success event
  Future<void> logPaymentSuccess({
    required String paymentId,
    required double amount,
    required String currency,
  }) async {
    await logEvent(
      name: 'purchase',
      parameters: {
        'transaction_id': paymentId,
        'value': amount,
        'currency': currency,
      },
    );
  }

  /// Log payment failure event
  Future<void> logPaymentFailure({
    required String reason,
    required double amount,
  }) async {
    await logEvent(
      name: 'payment_failed',
      parameters: {
        'reason': reason,
        'amount': amount,
      },
    );
  }

  /// Log search event
  Future<void> logSearch({required String searchTerm}) async {
    await logEvent(
      name: 'search',
      parameters: {'search_term': searchTerm},
    );
  }

  /// Log share event
  Future<void> logShare({
    required String contentType,
    required String itemId,
  }) async {
    await logEvent(
      name: 'share',
      parameters: {
        'content_type': contentType,
        'item_id': itemId,
      },
    );
  }

  /// Log add to favorites event
  Future<void> logAddToFavorites({
    required String itemId,
    required String itemType,
  }) async {
    await logEvent(
      name: 'add_to_favorites',
      parameters: {
        'item_id': itemId,
        'item_type': itemType,
      },
    );
  }

  /// Log course enrollment event
  Future<void> logCourseEnrollment({
    required String courseId,
    required String courseName,
    required double amount,
  }) async {
    await logEvent(
      name: 'course_enrollment',
      parameters: {
        'course_id': courseId,
        'course_name': courseName,
        'amount': amount,
      },
    );
  }

  /// Log lesson completion event
  Future<void> logLessonCompletion({
    required String lessonId,
    required String courseId,
    required int progress,
  }) async {
    await logEvent(
      name: 'lesson_completed',
      parameters: {
        'lesson_id': lessonId,
        'course_id': courseId,
        'progress': progress,
      },
    );
  }
}
