import 'package:dio/dio.dart';
import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';
import '../domain/notification_model.dart';

class NotificationRepository {
  final ApiClient _apiClient;

  NotificationRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<NotificationModel>> getNotifications({int limit = 20, int offset = 0}) async {
    try {
      developer.log('🔔 Fetching notifications', name: 'NotificationRepository');
      final response = await _apiClient.dio.get(
        '/me/notifications',
        queryParameters: {'limit': limit, 'offset': offset},
      );

      final data = response.data['notifications'];
      if (data == null) return [];

      return (data as List).map((e) => NotificationModel.fromJson(e)).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        developer.log('⚠️ Unauthorized fetching notifications, returning empty', name: 'NotificationRepository');
        return [];
      }
      developer.log('❌ Fetch notifications failed: $e', name: 'NotificationRepository');
      rethrow;
    } catch (e) {
      developer.log('❌ Unexpected error fetching notifications: $e', name: 'NotificationRepository');
      return [];
    }
  }

  Future<void> markAsRead(String notificationId) async {
    try {
      developer.log('🔔 Marking notification read: $notificationId', name: 'NotificationRepository');
      await _apiClient.dio.post('/me/notifications/$notificationId/read');
    } catch (e) {
      developer.log('❌ Mark read failed: $e', name: 'NotificationRepository');
      rethrow;
    }
  }
}
