import 'dart:developer' as developer;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../cache/hive_boxes.dart';
import '../../features/notifications/domain/notification_model.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    // Request permission for iOS
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // Initialize local notifications
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    // Get FCM token
    try {
      final token = await _firebaseMessaging.getToken();
      developer.log('🔔 FCM Token: $token', name: 'NotificationService');
    } catch(e) {
      developer.log('⚠️ Failed to get FCM token: $e', name: 'NotificationService');
    }

    // Handle foreground messages
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Handle background messages open
    FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
  }

  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    developer.log('📬 Foreground message: ${message.notification?.title}', name: 'NotificationService');
    
    // Persist notification
    if (message.notification != null) {
      await _persistNotification(message);
      
      await _showLocalNotification(
        title: message.notification!.title ?? 'MakeupWala',
        body: message.notification!.body ?? '',
        payload: message.data.toString(), // Simplify for now
      );
    }
  }

  void _handleBackgroundMessage(RemoteMessage message) {
    developer.log('📭 Background message opened: ${message.notification?.title}', name: 'NotificationService');
    // We should persist this too if it wasn't already (background messages are tricky)
    // For now, allow navigation logic
    if (message.notification != null) {
      _persistNotification(message);
    }
  }

  void _onNotificationTapped(NotificationResponse response) {
    developer.log('👆 Notification tapped: ${response.payload}', name: 'NotificationService');
    // Handle navigation based on payload
  }

  Future<void> _persistNotification(RemoteMessage message) async {
    try {
      final box = HiveBoxes.getNotificationsBox();
      final notification = NotificationModel(
        id: message.messageId ?? DateTime.now().millisecondsSinceEpoch.toString(),
        title: message.notification?.title ?? 'Notification',
        body: message.notification?.body ?? '',
        payload: message.data.toString(),
        timestamp: DateTime.now(),
        type: message.data['type'] ?? 'system',
      );
      await box.put(notification.id, notification);
      developer.log('💾 Notification saved: ${notification.id}', name: 'NotificationService');
    } catch (e) {
      developer.log('❌ Failed to save notification: $e', name: 'NotificationService');
    }
  }

  List<NotificationModel> getNotifications() {
    try {
      final box = HiveBoxes.getNotificationsBox();
      final notifications = box.values.toList();
      notifications.sort((a, b) => b.timestamp.compareTo(a.timestamp));
      return notifications;
    } catch (e) {
      developer.log('❌ Failed to get notifications: $e', name: 'NotificationService');
      return [];
    }
  }

  Future<void> markAsRead(String id) async {
    try {
      final box = HiveBoxes.getNotificationsBox();
      final notification = box.get(id);
      if (notification != null) {
        final updated = notification.copyWith(isRead: true);
        await box.put(id, updated);
      }
    } catch (e) {
      developer.log('❌ Failed to mark as read: $e', name: 'NotificationService');
    }
  }

  Future<void> markAllAsRead() async {
    try {
      final box = HiveBoxes.getNotificationsBox();
      final updates = <String, NotificationModel>{};
      
      for (var key in box.keys) {
        final notification = box.get(key);
        if (notification != null && !notification.isRead) {
          updates[key as String] = notification.copyWith(isRead: true);
        }
      }
      
      if (updates.isNotEmpty) {
        await box.putAll(updates);
      }
    } catch (e) {
      developer.log('❌ Failed to mark all as read: $e', name: 'NotificationService');
    }
  }

  Future<void> clearAll() async {
    await HiveBoxes.getNotificationsBox().clear();
  }

  Future<void> _showLocalNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'default_channel',
      'Default Notifications',
      channelDescription: 'Default notification channel',
      importance: Importance.high,
      priority: Priority.high,
    );

    const iosDetails = DarwinNotificationDetails();

    const notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _localNotifications.show(
      DateTime.now().millisecond,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
    developer.log('✅ Subscribed to topic: $topic', name: 'NotificationService');
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
    developer.log('❌ Unsubscribed from topic: $topic', name: 'NotificationService');
  }
}

// Global instance
final notificationService = NotificationService();

// Background message handler (must be top-level function)
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  developer.log('🔔 Background message: ${message.notification?.title}', name: 'FCM');
}
