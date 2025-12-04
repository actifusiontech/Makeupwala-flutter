import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class NotificationRepository {
  final ApiClient _apiClient;

  NotificationRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<dynamic>> getNotifications({int limit = 20, int offset = 0}) async {
    try {
      developer.log('🔔 Fetching notifications', name: 'NotificationRepository');
      final response = await _apiClient.dio.get(
        '/me/notifications',
        queryParameters: {'limit': limit, 'offset': offset},
      );
      return response.data['notifications'] as List<dynamic>;
    } catch (e) {
      developer.log('❌ Fetch notifications failed: $e', name: 'NotificationRepository');
      rethrow;
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
