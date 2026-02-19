import 'dart:convert';
import 'package:hive/hive.dart';
import 'hive_boxes.dart';
import '../services/logging_service.dart';

/// Cache metadata for TTL support
class CacheMeta {
  final DateTime cachedAt;
  final int ttlSeconds;

  CacheMeta({
    required this.cachedAt,
    required this.ttlSeconds,
  });

  bool get isExpired {
    final expiryTime = cachedAt.add(Duration(seconds: ttlSeconds));
    return DateTime.now().isAfter(expiryTime);
  }

  Map<String, dynamic> toJson() => {
        'cachedAt': cachedAt.toIso8601String(),
        'ttlSeconds': ttlSeconds,
      };

  factory CacheMeta.fromJson(Map<String, dynamic> json) => CacheMeta(
        cachedAt: DateTime.parse(json['cachedAt']),
        ttlSeconds: json['ttlSeconds'],
      );
}

/// Generic cache manager service
class CacheManager {
  static final CacheManager _instance = CacheManager._internal();
  factory CacheManager() => _instance;
  CacheManager._internal();

  final LoggingService _logger = LoggingService();

  /// Get cached data with TTL support
  /// Returns null if cache is expired or doesn't exist
  Future<T?> get<T>({
    required String boxName,
    required String key,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    try {
      final box = Hive.box(boxName);
      final metaBox = HiveBoxes.getCacheMetaBox();

      // Check if data exists
      if (!box.containsKey(key)) {
        return null;
      }

      // Check TTL
      final metaKey = '${boxName}_$key';
      if (metaBox.containsKey(metaKey)) {
        final metaJson = jsonDecode(metaBox.get(metaKey));
        final meta = CacheMeta.fromJson(metaJson);

        if (meta.isExpired) {
          _logger.debug('Cache expired for key: $key');
          await delete(boxName: boxName, key: key);
          return null;
        }
      }

      // Get data
      final data = box.get(key);

      if (data == null) return null;

      // If fromJson provided, deserialize
      if (fromJson != null && data is String) {
        final json = jsonDecode(data);
        return fromJson(json);
      }

      return data as T;
    } catch (e, stackTrace) {
      _logger.error('Failed to get cache for key: $key', e, stackTrace);
      return null;
    }
  }

  /// Set cached data with optional TTL
  Future<void> set({
    required String boxName,
    required String key,
    required dynamic value,
    int ttlSeconds = 3600, // Default 1 hour
    Map<String, dynamic> Function(dynamic)? toJson,
  }) async {
    try {
      final box = Hive.box(boxName);
      final metaBox = HiveBoxes.getCacheMetaBox();

      // Serialize if toJson provided
      final dataToCache = toJson != null ? jsonEncode(toJson(value)) : value;

      // Save data
      await box.put(key, dataToCache);

      // Save metadata for TTL
      final meta = CacheMeta(
        cachedAt: DateTime.now(),
        ttlSeconds: ttlSeconds,
      );
      final metaKey = '${boxName}_$key';
      await metaBox.put(metaKey, jsonEncode(meta.toJson()));

      _logger.debug('Cached data for key: $key (TTL: ${ttlSeconds}s)');
    } catch (e, stackTrace) {
      _logger.error('Failed to set cache for key: $key', e, stackTrace);
    }
  }

  /// Delete cached data
  Future<void> delete({
    required String boxName,
    required String key,
  }) async {
    try {
      final box = Hive.box(boxName);
      final metaBox = HiveBoxes.getCacheMetaBox();

      await box.delete(key);
      await metaBox.delete('${boxName}_$key');

      _logger.debug('Deleted cache for key: $key');
    } catch (e, stackTrace) {
      _logger.error('Failed to delete cache for key: $key', e, stackTrace);
    }
  }

  /// Clear all data in a box
  Future<void> clearBox(String boxName) async {
    try {
      final box = Hive.box(boxName);
      await box.clear();
      _logger.debug('Cleared box: $boxName');
    } catch (e, stackTrace) {
      _logger.error('Failed to clear box: $boxName', e, stackTrace);
    }
  }

  /// Check if cache exists and is valid
  Future<bool> has({
    required String boxName,
    required String key,
  }) async {
    final data = await get<dynamic>(boxName: boxName, key: key);
    return data != null;
  }

  /// Get cache age in seconds
  Future<int?> getCacheAge({
    required String boxName,
    required String key,
  }) async {
    try {
      final metaBox = HiveBoxes.getCacheMetaBox();
      final metaKey = '${boxName}_$key';

      if (!metaBox.containsKey(metaKey)) {
        return null;
      }

      final metaJson = jsonDecode(metaBox.get(metaKey));
      final meta = CacheMeta.fromJson(metaJson);

      return DateTime.now().difference(meta.cachedAt).inSeconds;
    } catch (e) {
      return null;
    }
  }

  /// Clean up expired cache entries
  Future<void> cleanupExpired() async {
    try {
      final metaBox = HiveBoxes.getCacheMetaBox();
      final keysToDelete = <String>[];

      for (final key in metaBox.keys) {
        final metaJson = jsonDecode(metaBox.get(key));
        final meta = CacheMeta.fromJson(metaJson);

        if (meta.isExpired) {
          keysToDelete.add(key);
        }
      }

      for (final metaKey in keysToDelete) {
        final parts = metaKey.split('_');
        if (parts.length >= 2) {
          final boxName = parts[0];
          final key = parts.sublist(1).join('_');
          await delete(boxName: boxName, key: key);
        }
      }

      _logger.debug('Cleaned up ${keysToDelete.length} expired cache entries');
    } catch (e, stackTrace) {
      _logger.error('Failed to cleanup expired cache', e, stackTrace);
    }
  }
}
