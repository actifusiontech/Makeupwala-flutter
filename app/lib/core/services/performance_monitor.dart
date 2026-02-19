import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/foundation.dart';
import 'logging_service.dart';

/// Performance monitoring service wrapper for Firebase Performance
class PerformanceMonitor {
  static final PerformanceMonitor _instance = PerformanceMonitor._internal();
  factory PerformanceMonitor() => _instance;
  PerformanceMonitor._internal();

  final LoggingService _logger = LoggingService();
  late final FirebasePerformance _performance;
  bool _initialized = false;

  final Map<String, Trace> _activeTraces = {};

  /// Initialize performance monitoring
  Future<void> initialize() async {
    if (_initialized) return;

    _performance = FirebasePerformance.instance;

    // Enable performance collection
    await _performance.setPerformanceCollectionEnabled(!kDebugMode);

    _initialized = true;
    _logger.info('PerformanceMonitor initialized');
  }

  /// Start a custom trace
  Future<void> startTrace(String name) async {
    try {
      if (_activeTraces.containsKey(name)) {
        _logger.warning('Trace already active: $name');
        return;
      }

      final trace = _performance.newTrace(name);
      await trace.start();
      _activeTraces[name] = trace;

      _logger.debug('Started trace: $name');
    } catch (e, stackTrace) {
      _logger.error('Failed to start trace: $name', e, stackTrace);
    }
  }

  /// Stop a custom trace
  Future<void> stopTrace(String name) async {
    try {
      final trace = _activeTraces.remove(name);
      if (trace == null) {
        _logger.warning('Trace not found: $name');
        return;
      }

      await trace.stop();
      _logger.debug('Stopped trace: $name');
    } catch (e, stackTrace) {
      _logger.error('Failed to stop trace: $name', e, stackTrace);
    }
  }

  /// Add metric to active trace
  Future<void> setTraceMetric({
    required String traceName,
    required String metricName,
    required int value,
  }) async {
    try {
      final trace = _activeTraces[traceName];
      if (trace == null) {
        _logger.warning('Trace not found: $traceName');
        return;
      }

      trace.setMetric(metricName, value);
      _logger.debug('Set metric for trace $traceName: $metricName = $value');
    } catch (e, stackTrace) {
      _logger.error('Failed to set trace metric', e, stackTrace);
    }
  }

  /// Increment metric in active trace
  Future<void> incrementTraceMetric({
    required String traceName,
    required String metricName,
    int incrementBy = 1,
  }) async {
    try {
      final trace = _activeTraces[traceName];
      if (trace == null) {
        _logger.warning('Trace not found: $traceName');
        return;
      }

      trace.incrementMetric(metricName, incrementBy);
      _logger.debug('Incremented metric for trace $traceName: $metricName by $incrementBy');
    } catch (e, stackTrace) {
      _logger.error('Failed to increment trace metric', e, stackTrace);
    }
  }

  /// Add attribute to active trace
  Future<void> setTraceAttribute({
    required String traceName,
    required String attributeName,
    required String value,
  }) async {
    try {
      final trace = _activeTraces[traceName];
      if (trace == null) {
        _logger.warning('Trace not found: $traceName');
        return;
      }

      trace.putAttribute(attributeName, value);
      _logger.debug('Set attribute for trace $traceName: $attributeName = $value');
    } catch (e, stackTrace) {
      _logger.error('Failed to set trace attribute', e, stackTrace);
    }
  }

  /// Create and monitor an HTTP metric
  Future<HttpMetric> createHttpMetric({
    required String url,
    required HttpMethod method,
  }) async {
    return _performance.newHttpMetric(url, method);
  }

  // Convenience methods for common traces

  /// Track screen load time
  Future<void> trackScreenLoad(String screenName, Future<void> Function() loadFunction) async {
    final traceName = 'screen_load_$screenName';
    await startTrace(traceName);

    try {
      await loadFunction();
    } finally {
      await stopTrace(traceName);
    }
  }

  /// Track API call performance
  Future<T> trackApiCall<T>({
    required String endpoint,
    required Future<T> Function() apiCall,
  }) async {
    final traceName = 'api_$endpoint';
    await startTrace(traceName);

    try {
      final result = await apiCall();
      await setTraceAttribute(
        traceName: traceName,
        attributeName: 'status',
        value: 'success',
      );
      return result;
    } catch (e) {
      await setTraceAttribute(
        traceName: traceName,
        attributeName: 'status',
        value: 'error',
      );
      rethrow;
    } finally {
      await stopTrace(traceName);
    }
  }

  /// Track booking flow performance
  Future<void> startBookingFlow() async {
    await startTrace('booking_flow');
  }

  /// Stop booking flow trace
  Future<void> stopBookingFlow({required bool success}) async {
    await setTraceAttribute(
      traceName: 'booking_flow',
      attributeName: 'success',
      value: success.toString(),
    );
    await stopTrace('booking_flow');
  }

  /// Track payment flow performance
  Future<void> startPaymentFlow() async {
    await startTrace('payment_flow');
  }

  /// Stop payment flow trace
  Future<void> stopPaymentFlow({required bool success}) async {
    await setTraceAttribute(
      traceName: 'payment_flow',
      attributeName: 'success',
      value: success.toString(),
    );
    await stopTrace('payment_flow');
  }
}
