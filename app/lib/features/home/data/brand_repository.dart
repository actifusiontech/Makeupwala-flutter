import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class BrandRepository {
  final ApiClient _apiClient;

  BrandRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<Map<String, dynamic>> getDashboardMetrics() async {
    try {
      final response = await _apiClient.dio.get('/brands/dashboard/metrics');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Failed to fetch brand metrics: $e', name: 'BrandRepository');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getBrandProfile() async {
    try {
      final response = await _apiClient.dio.get('/brands/profile');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Failed to fetch brand profile: $e', name: 'BrandRepository');
      rethrow;
    }
  }
}
