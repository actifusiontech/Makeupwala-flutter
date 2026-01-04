
import 'dart:async';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:geolocator/geolocator.dart';

// Entry point for the background service
@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  
  // Create a separate Dio instance for the background isolate
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.makeupwallah.com/api/v1', // Replace with config
    connectTimeout: const Duration(seconds: 10),
  ));

  if (service is AndroidServiceInstance) {
    service.on('setAsForeground').listen((event) {
      service.setAsForegroundService();
    });
    service.on('setAsBackground').listen((event) {
      service.setAsBackgroundService();
    });
  }

  service.on('stopService').listen((event) {
    service.stopSelf();
  });

  // Location tracking loop
  Timer.periodic(const Duration(seconds: 30), (timer) async {
    if (await service is AndroidServiceInstance) {
      if (await (service as AndroidServiceInstance).isForegroundService()) {
        service.setForegroundNotificationInfo(
          title: "Makeupwala Safety Shield",
          content: "Active Location Tracking Enabled",
        );
      }
    }

    try {
      final position = await Geolocator.getCurrentPosition();
      
      // Send location to backend
      await dio.post('/safety/location', data: {
        'lat': position.latitude,
        'lng': position.longitude,
        'timestamp': DateTime.now().toIso8601String(),
      });

      print('📍 Location Sent: ${position.latitude}, ${position.longitude}');
    } catch (e) {
      print('❌ Location Error: $e');
    }
  });
}

Future<void> initializeBackgroundService() async {
  final service = FlutterBackgroundService();
  
  await service.configure(
    androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: false,
      isForegroundMode: true,
      notificationChannelId: 'safety_service', 
      initialNotificationTitle: 'Safety Service',
      initialNotificationContent: 'Initializing...',
      foregroundServiceNotificationId: 888,
    ),
    iosConfiguration: IosConfiguration(
      autoStart: false,
      onForeground: onStart,
      onBackground: onStart, // Requires specialized setup for iOS bg tasks
    ),
  );
}
