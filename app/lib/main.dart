import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'core/services/notification_service.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: "assets/env/.env.development");
  
  // Initialize OneSignal
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("c1ed0ff6-bc40-4078-8247-47f176c41ff1");
  OneSignal.Notifications.requestPermission(true);

  // Initialize FCM Notification Service
  final notificationService = NotificationService();
  await notificationService.initialize();

  runApp(const MakeUpWallahApp());
}
