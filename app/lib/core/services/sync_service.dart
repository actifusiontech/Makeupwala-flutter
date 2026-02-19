import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../services/logging_service.dart';
import '../cache/cache_manager.dart';

/// Service to handle data synchronization between local cache and server
class SyncService {
  static final SyncService _instance = SyncService._internal();
  factory SyncService() => _instance;
  SyncService._internal();

  final LoggingService _logger = LoggingService();
  final CacheManager _cacheManager = CacheManager();
  final Connectivity _connectivity = Connectivity();

  bool _isOnline = true;
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  final List<PendingOperation> _pendingOperations = [];

  /// Initialize sync service
  Future<void> initialize() async {
    // Check initial connectivity
    final result = await _connectivity.checkConnectivity();
    _isOnline = !result.contains(ConnectivityResult.none);

    // Listen to connectivity changes
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
      final wasOffline = !_isOnline;
      _isOnline = !result.contains(ConnectivityResult.none);

      _logger.info('Connectivity changed: ${_isOnline ? "Online" : "Offline"}');

      // If we just came back online, sync pending operations
      if (wasOffline && _isOnline) {
        _syncPendingOperations();
      }
    });

    _logger.info('SyncService initialized (${_isOnline ? "Online" : "Offline"})');
  }

  /// Check if device is online
  bool get isOnline => _isOnline;

  /// Queue an operation to be executed when online
  void queueOperation(PendingOperation operation) {
    _pendingOperations.add(operation);
    _logger.debug('Queued operation: ${operation.type} (${_pendingOperations.length} pending)');

    // Try to sync immediately if online
    if (_isOnline) {
      _syncPendingOperations();
    }
  }

  /// Sync all pending operations
  Future<void> _syncPendingOperations() async {
    if (_pendingOperations.isEmpty) return;

    _logger.info('Syncing ${_pendingOperations.length} pending operations');

    final operations = List<PendingOperation>.from(_pendingOperations);
    _pendingOperations.clear();

    for (final operation in operations) {
      try {
        await operation.execute();
        _logger.debug('Synced operation: ${operation.type}');
      } catch (e, stackTrace) {
        _logger.error('Failed to sync operation: ${operation.type}', e, stackTrace);
        // Re-queue failed operation
        _pendingOperations.add(operation);
      }
    }
  }

  /// Manually trigger sync
  Future<void> sync() async {
    if (!_isOnline) {
      _logger.warning('Cannot sync: device is offline');
      return;
    }

    await _syncPendingOperations();
  }

  /// Get number of pending operations
  int get pendingCount => _pendingOperations.length;

  /// Dispose resources
  void dispose() {
    _connectivitySubscription?.cancel();
  }
}

/// Represents an operation that should be executed when online
class PendingOperation {
  final String type;
  final Future<void> Function() execute;
  final DateTime queuedAt;

  PendingOperation({
    required this.type,
    required this.execute,
  }) : queuedAt = DateTime.now();
}
