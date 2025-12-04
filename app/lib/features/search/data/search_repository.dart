import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class SearchRepository {
  final ApiClient _apiClient;

  SearchRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<Map<String, dynamic>>> searchArtists({
    String? query,
    String? category,
    String? city,
    double? minPrice,
    double? maxPrice,
    double? minRating,
  }) async {
    try {
      final queryParams = <String, dynamic>{};
      if (query != null && query.isNotEmpty) queryParams['q'] = query;
      if (category != null) queryParams['category'] = category;
      if (city != null) queryParams['city'] = city;
      if (minPrice != null) queryParams['min_price'] = minPrice;
      if (maxPrice != null) queryParams['max_price'] = maxPrice;
      if (minRating != null) queryParams['min_rating'] = minRating;

      developer.log('🔍 Searching artists with params: $queryParams', name: 'SearchRepository');
      
      final response = await _apiClient.dio.get(
        '/search/artists',
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.cast<Map<String, dynamic>>();
    } catch (e) {
      developer.log('❌ Search failed: $e', name: 'SearchRepository');
      rethrow;
    }
  }
}
