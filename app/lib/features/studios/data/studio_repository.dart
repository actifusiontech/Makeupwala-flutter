import 'package:dio/dio.dart';
import '../../../../core/network/api_client.dart';
import 'dart:developer' as developer;

class StudioRepository {
  final ApiClient _apiClient;

  StudioRepository(this._apiClient);

  Future<void> registerStudio(Map<String, dynamic> studioData) async {
    try {
      await _apiClient.dio.post('/studios/register', data: studioData);
    } catch (e) {
      developer.log('❌ Failed to register studio: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getMyStudios() async {
    try {
      final response = await _apiClient.dio.get('/studios'); // Assuming this lists all studios or filtered
      return response.data as List<dynamic>; 
    } catch (e) {
      developer.log('⚠️ Failed to fetch studios: $e', name: 'StudioRepository');
       return [];
    }
  }

  Future<Map<String, dynamic>> getStudioStats(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/stats');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch studio stats: $e', name: 'StudioRepository');
      return {};
    }
  }
}
