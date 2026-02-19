import 'package:app/core/network/api_client.dart';
import 'dart:developer' as developer;

class AdminRepository {
  final ApiClient _apiClient;

  AdminRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  /// Get platform-wide statistics for the admin dashboard
  Future<Map<String, dynamic>> getPlatformStats() async {
    try {
      final response = await _apiClient.dio.get('/admin/stats');
      if (response.statusCode == 200) {
        return response.data as Map<String, dynamic>;
      } else {
        throw Exception('Failed to load admin stats');
      }
    } catch (e) {
      developer.log('⚠️ Failed to fetch admin stats: $e', name: 'AdminRepository');
      // Return fallback dummy data if API fails but show the error
      return {
        'total_users': 0,
        'total_artists': 0,
        'total_bookings': 0,
        'total_revenue': 0,
      };
    }
  }
}
