import 'package:hive_flutter/hive_flutter.dart';
import '../../features/notifications/domain/notification_model.dart';
import '../../features/favorites/domain/favorite_model.dart';

/// Hive box names and type-safe accessors
class HiveBoxes {
  // Box names
  static const String userBox = 'user_box';
  static const String bookingsBox = 'bookings_box';
  static const String artistsBox = 'artists_box';
  static const String settingsBox = 'settings_box';
  static const String cacheMetaBox = 'cache_meta_box';
  static const String notificationsBox = 'notifications_box';
  static const String favoritesBox = 'favorites_box';

  /// Initialize all Hive boxes
  static Future<void> initialize() async {
    await Hive.initFlutter();
    
    // Register Adapters
    // Note: Generated adapters must be registered here if not auto-generated/registered elsewhere
    // Hive.registerAdapter(FavoriteModelAdapter()); // Will be generated
    
    // Open all boxes
    await Future.wait([
      Hive.openBox(userBox),
      Hive.openBox(bookingsBox),
      Hive.openBox(artistsBox),
      Hive.openBox(settingsBox),
      Hive.openBox(cacheMetaBox),
      Hive.openBox<NotificationModel>(notificationsBox),
      Hive.openBox<FavoriteModel>(favoritesBox),
    ]);
  }

  /// Get user box
  static Box getUserBox() => Hive.box(userBox);

  /// Get bookings box
  static Box getBookingsBox() => Hive.box(bookingsBox);

  /// Get artists box
  static Box getArtistsBox() => Hive.box(artistsBox);

  /// Get settings box
  static Box getSettingsBox() => Hive.box(settingsBox);

  /// Get cache metadata box
  static Box getCacheMetaBox() => Hive.box(cacheMetaBox);

  /// Get notifications box
  static Box<NotificationModel> getNotificationsBox() => Hive.box<NotificationModel>(notificationsBox);

  /// Get favorites box
  static Box<FavoriteModel> getFavoritesBox() => Hive.box<FavoriteModel>(favoritesBox);

  /// Clear all boxes (useful for logout)
  static Future<void> clearAll() async {
    await Future.wait([
      getUserBox().clear(),
      getBookingsBox().clear(),
      getArtistsBox().clear(),
      // Don't clear settings box on logout
      getFavoritesBox().clear(), 
    ]);
  }

  /// Close all boxes
  static Future<void> closeAll() async {
    await Hive.close();
  }
}
