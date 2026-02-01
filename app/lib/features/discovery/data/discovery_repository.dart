import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';
import 'package:app/core/models/artist.dart';

class DiscoveryRepository {
  final ApiClient _apiClient;

  DiscoveryRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<Map<String, dynamic>>> searchLooks({List<String>? tags}) async {
    try {
      final queryParams = tags != null && tags.isNotEmpty 
          ? {'tags': tags.join(',')} 
          : null;
          
      final response = await _apiClient.dio.get(
        '/discovery/looks',
        queryParameters: queryParams,
      );
      
      final List<dynamic> data = response.data['data'] ?? [];
      return data.cast<Map<String, dynamic>>();
    } catch (e) {
      developer.log('❌ Search looks failed: $e', name: 'DiscoveryRepository');
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> getRecommendations() async {
    try {
      final response = await _apiClient.dio.get('/discovery/recommendations');
      final List<dynamic> data = response.data['data'] ?? [];
      return data.cast<Map<String, dynamic>>();
    } catch (e) {
      developer.log('❌ Get recommendations failed: $e', name: 'DiscoveryRepository');
      rethrow;
    }
  }
}
