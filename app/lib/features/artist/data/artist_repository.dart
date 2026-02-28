import 'dart:developer' as developer;
import 'package:dio/dio.dart';
import '../../../core/network/api_client.dart';
import '../../../core/models/artist.dart';

class ArtistRepository {
  final ApiClient _apiClient;

  ArtistRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<ArtistProfile> getArtistProfile(String artistId) async {
    try {
      final response = await _apiClient.dio.get('/artists/$artistId');
      final data = response.data['data'] as Map<String, dynamic>;
      return ArtistProfile.fromJson(data);
    } catch (e) {
      developer.log('❌ Failed to fetch artist profile: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  Future<void> updateProfile(Map<String, dynamic> updateData) async {
    try {
      // Backend uses POST for upsert
      await _apiClient.dio.post('/artists/me', data: updateData);
    } catch (e) {
      developer.log('❌ Failed to update profile: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  Future<void> addService(Map<String, dynamic> serviceData) async {
    try {
      await _apiClient.dio.post('/artists/me/services', data: serviceData);
    } catch (e) {
      developer.log('❌ Failed to add service: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  Future<String> uploadMedia(String filePath) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
        'type': 'image', // Default to image for portfolio
        'caption': 'Portfolio Image'
      });
      
      final response = await _apiClient.dio.post('/artists/me/media', data: formData);
      return response.data['data'] as String;
    } catch (e) {
      developer.log('❌ Failed to upload media: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  Future<void> submitKYC({
    required String idProofUrl,
    required String addressProofUrl,
    required String certificateUrl,
  }) async {
    try {
      await _apiClient.dio.post('/artists/me/kyc', data: {
        'id_proof_url': idProofUrl,
        'address_proof_url': addressProofUrl,
        'certificate_url': certificateUrl,
      });
    } catch (e) {
      developer.log('❌ Failed to submit KYC: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  Future<ArtistKYC> getKYCStatus() async {
    try {
      final response = await _apiClient.dio.get('/artists/me/kyc');
      final data = response.data['data'] as Map<String, dynamic>;
      return ArtistKYC.fromJson(data);
    } catch (e) {
      developer.log('❌ Failed to fetch KYC status: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  // Service Management
  Future<List<Map<String, dynamic>>> getServices(String artistId) async {
    try {
      final response = await _apiClient.dio.get('/artists/$artistId/services');
      final data = response.data['data'];
      if (data is Map && data.containsKey('items')) {
        return (data['items'] as List).cast<Map<String, dynamic>>();
      } else if (data is List) {
        return data.cast<Map<String, dynamic>>();
      }
      return [];
    } catch (e) {
      developer.log('⚠️ Failed to fetch services: $e', name: 'ArtistRepository');
      return [];
    }
  }

  Future<void> updateService(String serviceId, Map<String, dynamic> serviceData) async {
    try {
      await _apiClient.dio.patch('/artists/services/$serviceId', data: serviceData);
    } catch (e) {
      developer.log('❌ Failed to update service: $e', name: 'ArtistRepository');
      rethrow;
    }
  }

  Future<void> deleteService(String serviceId) async {
    try {
      await _apiClient.dio.delete('/artists/services/$serviceId');
    } catch (e) {
      developer.log('❌ Failed to delete service: $e', name: 'ArtistRepository');
      rethrow;
    }
  }
}
