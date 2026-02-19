import 'package:app/core/network/api_client.dart';
import 'dart:developer' as developer;

class MoodboardRepository {
  final ApiClient _apiClient;

  MoodboardRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  /// Get user's moodboard items
  Future<List<Map<String, dynamic>>> getMoodboard(String userId) async {
    try {
      final response = await _apiClient.dio.get('/discovery/moodboard/$userId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['data'] ?? [];
        return data.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      developer.log('⚠️ Failed to fetch moodboard: $e', name: 'MoodboardRepository');
      return [];
    }
  }

  /// Add item to moodboard
  Future<void> addToMoodboard(String userId, String imageUrl, {String? caption}) async {
    try {
      await _apiClient.dio.post('/discovery/moodboard/$userId', data: {
        'image_url': imageUrl,
        'caption': caption,
      });
    } catch (e) {
      developer.log('❌ Failed to add to moodboard: $e', name: 'MoodboardRepository');
      rethrow;
    }
  }

  /// Remove item from moodboard
  Future<void> removeFromMoodboard(String userId, String itemId) async {
    try {
      await _apiClient.dio.delete('/discovery/moodboard/$userId/$itemId');
    } catch (e) {
      developer.log('❌ Failed to remove from moodboard: $e', name: 'MoodboardRepository');
      rethrow;
    }
  }
}
