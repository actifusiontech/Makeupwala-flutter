import 'package:app/core/network/api_client.dart';
import '../models/post_model.dart';
import '../models/search_models.dart';
import '../models/beauty_profile.dart';

class DiscoveryRepository {
  final ApiClient _apiClient;

  DiscoveryRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<PostModel>> getFeed({int page = 1, String? tag, String? sortBy, String? search}) async {
    try {
      final Map<String, dynamic> queryParameters = {
        'page': page,
      };
      if (tag != null && tag != 'All') {
        queryParameters['tag'] = tag;
      }
      if (sortBy != null) {
        queryParameters['sort_by'] = sortBy;
      }
      if (search != null) {
        queryParameters['q'] = search;
      }

      final response = await _apiClient.dio.get('/discovery/feed', queryParameters: queryParameters);
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

  Future<UniversalSearchResult> universalSearch(String query) async {
    try {
      final response = await _apiClient.dio.get('/discovery/universal', queryParameters: {'q': query});
      if (response.statusCode == 200) {
        return UniversalSearchResult.fromJson(response.data);
      } else {
        throw Exception('Search failed');
      }
    } catch (e) {
      throw Exception('Network error during search: $e');
    }
  }

  Future<BeautyProfile?> getBeautyProfile() async {
    try {
      final response = await _apiClient.dio.get('/discovery/profile');
      if (response.statusCode == 200) {
        return BeautyProfile.fromJson(response.data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<void> updateBeautyProfile(BeautyProfile profile) async {
    try {
      await _apiClient.dio.post('/discovery/profile', data: profile.toJson());
    } catch (e) {
      throw Exception('Failed to update beauty profile: $e');
    }
  }
}
