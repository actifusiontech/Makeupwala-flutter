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
  try {
    WidgetsFlutterBinding.ensureInitialized();
  } catch (e) {
    debugPrint('Fatal error during WidgetsFlutterBinding: $e');
  }
  
  // Initialize logging service first
  final loggingService = LoggingService();
  await loggingService.initialize();
  loggingService.info('🚀 App starting...');
  print('🚀 App starting...');

  // 1. Guard against Infinite OS Memory Eviction
  // Limit Image Cache to 50MB and 100 images tops (prevents OOM crashes in infinite scroll)
  PaintingBinding.instance.imageCache.maximumSizeBytes = 1024 * 1024 * 50; 
  PaintingBinding.instance.imageCache.maximumSize = 100;
  
  // 2. Global Error Boundary (Uncaught Exceptions)
  FlutterError.onError = (FlutterErrorDetails details) {
    loggingService.fatal('Uncaught System Error Boundary', details.exception, details.stack);
  };

  try {
    // Load environment variables
    final envFile = kReleaseMode ? "assets/env/.env.production" : "assets/env/.env.development";
    await dotenv.load(fileName: envFile);
    loggingService.info('✅ Environment loaded: $envFile');

    // Initialize Firebase
    await Firebase.initializeApp();
    loggingService.markFirebaseInitialized();
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
    final oneSignalAppId = dotenv.env['ONESIGNAL_APP_ID'] ?? '';
    assert(oneSignalAppId.isNotEmpty, 'ONESIGNAL_APP_ID is not set in env file');
    OneSignal.initialize(oneSignalAppId);
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
      print('⏳ Initializing background service...');
      await initializeBackgroundService().timeout(const Duration(seconds: 5));
      print('✅ Background service initialized');
      loggingService.info('✅ Background service initialized');
    } catch (e, stackTrace) {
      print('⚠️ Background Service Init Failed or Timed Out: $e');
      loggingService.error("Background Service Init Failed", e, stackTrace);
    }

    print('🎉 All services initialized successfully');
    loggingService.info('🎉 All services initialized successfully');
  } catch (e, stackTrace) {
    print('💥 Fatal error during initialization: $e');
    loggingService.fatal('💥 Fatal error during initialization', e, stackTrace);
  }

  print('🚀 Calling runApp...');
  runApp(const MakeUpWallahApp());
}
