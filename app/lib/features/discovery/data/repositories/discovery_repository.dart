import 'package:app/core/network/api_client.dart';
import '../models/post_model.dart';

class DiscoveryRepository {
  final ApiClient _apiClient;

  DiscoveryRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<PostModel>> getFeed({int page = 1}) async {
    try {
      final response = await _apiClient.dio.get('/discovery/feed', queryParameters: {'page': page});
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => PostModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load feed');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
