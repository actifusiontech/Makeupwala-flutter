import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';
import 'models/post_model.dart';
import 'models/search_models.dart';
import 'models/beauty_profile.dart';

class DiscoveryRepository {
  final ApiClient _apiClient;

  DiscoveryRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  /// ---------------- SOCIAL FEED ----------------

  Future<List<PostModel>> getFeed({String? tag, String? sortBy}) async {
    try {
      final queryParams = {
        if (tag != null) 'tag': tag,
        if (sortBy != null) 'sort_by': sortBy,
      };

      final response = await _apiClient.dio.get(
        '/discovery/feed',
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? [];
      return data.map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      developer.log('❌ Get feed failed: $e', name: 'DiscoveryRepository');
      rethrow;
    }
  }

  /// ---------------- UNIVERSAL SEARCH ----------------

  Future<UniversalSearchResult> universalSearch(String query) async {
    try {
      final response = await _apiClient.dio.get(
        '/discovery/universal',
        queryParameters: {'q': query},
      );

      return UniversalSearchResult.fromJson(response.data['data']);
    } catch (e) {
      developer.log('❌ Universal search failed: $e', name: 'DiscoveryRepository');
      rethrow;
    }
  }

  /// ---------------- BEAUTY PROFILE ----------------

  Future<BeautyProfile> getBeautyProfile() async {
    try {
      final response = await _apiClient.dio.get('/discovery/profile');
      return BeautyProfile.fromJson(response.data['data']);
    } catch (e) {
      developer.log('❌ Get beauty profile failed: $e', name: 'DiscoveryRepository');
      rethrow;
    }
  }

  Future<void> updateBeautyProfile(BeautyProfile profile) async {
    try {
      await _apiClient.dio.post(
        '/discovery/profile',
        data: {
          'skin_tone': profile.skinTone,
          'skin_type': profile.skinType,
          'preferred_style': profile.preferredStyle,
        },
      );
    } catch (e) {
      developer.log('❌ Update beauty profile failed: $e', name: 'DiscoveryRepository');
      rethrow;
    }
  }

  /// ---------------- LEGACY / EXTRA METHODS ----------------

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

  Future<List<String>> getLookbookTags() async {
    try {
      final response = await _apiClient.dio.get('/discovery/tags');
      final List<dynamic> data = response.data['data'] ?? [];
      return data.cast<String>();
    } catch (e) {
      developer.log('❌ Get lookbook tags failed: $e', name: 'DiscoveryRepository');
      return [];
    }
  }
}
