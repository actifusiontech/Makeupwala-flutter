import 'dart:developer' as developer;
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
      await _apiClient.dio.put('/artists/me', data: updateData);
    } catch (e) {
      developer.log('❌ Failed to update profile: $e', name: 'ArtistRepository');
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

  Future<void> updateServices(List<Map<String, dynamic>> services) async {
    try {
      await _apiClient.dio.put('/artists/me/services', data: {'services': services});
    } catch (e) {
      developer.log('❌ Failed to update services: $e', name: 'ArtistRepository');
      rethrow;
    }
  }
}
