import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';
import '../../../core/models/user.dart';

class ProfileRepository {
  final ApiClient _apiClient;

  ProfileRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<User> getMyProfile({required bool isArtist}) async {
    try {
      final endpoint = isArtist ? '/artists/me' : '/customers/me';
      developer.log('👤 Fetching profile from $endpoint', name: 'ProfileRepository');
      
      final response = await _apiClient.dio.get(endpoint);
      return User.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Fetch profile failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<User> updateProfile({
    required bool isArtist,
    required Map<String, dynamic> data,
  }) async {
    try {
      final endpoint = isArtist ? '/artists/me' : '/customers/me';
      developer.log('👤 Updating profile at $endpoint', name: 'ProfileRepository');
      
      final response = await _apiClient.dio.post(endpoint, data: data);
      return User.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Update profile failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }

  Future<String> uploadMedia(String filePath) async {
    try {
      developer.log('📸 Uploading media: $filePath', name: 'ProfileRepository');
      
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
      });
      
      final response = await _apiClient.dio.post('/artists/me/media', data: formData);
      return response.data['url'];
    } catch (e) {
      developer.log('❌ Upload media failed: $e', name: 'ProfileRepository');
      rethrow;
    }
  }
}
