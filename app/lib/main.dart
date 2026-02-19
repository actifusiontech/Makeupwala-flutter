import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'core/services/notification_service.dart';
import 'core/services/logging_service.dart';
import 'core/services/analytics_service.dart';
import 'core/services/performance_monitor.dart';
import 'core/services/sync_service.dart';
import 'core/cache/hive_boxes.dart';
import 'features/safety/domain/background_location_service.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/inventory/data/inventory_item.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize logging service first
  final loggingService = LoggingService();
  await loggingService.initialize();
  loggingService.info('🚀 App starting...');

  try {
    // Load environment variables
    final envFile = kReleaseMode ? "assets/env/.env.production" : "assets/env/.env.development";
    await dotenv.load(fileName: envFile);
    loggingService.info('✅ Environment loaded: $envFile');

    // Initialize Firebase
    await Firebase.initializeApp();
    loggingService.info('✅ Firebase initialized');

    // Initialize Analytics
    final analyticsService = AnalyticsService();
    await analyticsService.initialize();
    loggingService.info('✅ Analytics initialized');

    // Initialize Performance Monitoring
    final performanceMonitor = PerformanceMonitor();
    await performanceMonitor.initialize();
    loggingService.info('✅ Performance monitoring initialized');

    // Initialize Hive and boxes
    await HiveBoxes.initialize();
    Hive.registerAdapter(InventoryItemAdapter());
    loggingService.info('✅ Hive initialized');

    // Initialize Sync Service
    final syncService = SyncService();
    await syncService.initialize();
    loggingService.info('✅ Sync service initialized');

    // Initialize OneSignal
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize("c1ed0ff6-bc40-4078-8247-47f176c41ff1");
    OneSignal.Notifications.requestPermission(true);
    loggingService.info('✅ OneSignal initialized');

    // Register FCM Background Handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    // Initialize FCM Notification Service
    try {
      await notificationService.initialize();
      loggingService.info('✅ Notification service initialized');
    } catch (e, stackTrace) {
      loggingService.error("Firebase/Notification Init Failed", e, stackTrace);
    }

    // Initialize Safety Service
    try {
      await initializeBackgroundService();
      loggingService.info('✅ Background service initialized');
    } catch (e, stackTrace) {
      loggingService.error("Background Service Init Failed", e, stackTrace);
    }

    loggingService.info('🎉 All services initialized successfully');
  } catch (e, stackTrace) {
    loggingService.fatal('💥 Fatal error during initialization', e, stackTrace);
  }

  runApp(const MakeUpWallahApp());
}
