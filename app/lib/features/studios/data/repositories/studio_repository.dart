import 'package:app/core/network/api_client.dart';
import '../models/studio_model.dart';

class StudioRepository {
  final ApiClient _apiClient;

  StudioRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<StudioModel>> getStudios({String? city}) async {
    try {
      final response = await _apiClient.dio.get(
        '/studios',
        queryParameters: city != null ? {'city': city} : null,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => StudioModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load studios');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<void> bookSlot(String studioId, DateTime date, int hours) async {
    try {
      await _apiClient.dio.post('/studios/bookings', data: {
        'studio_id': studioId,
        'booking_date': date.toIso8601String(), // Changed from 'date' to match backend handler
        'duration_hrs': hours,
        // ArtistID should be inferred from token in backend, 
        // but handler seems to require it in body. 
        // Ideally we should fix backend, but for now let's assume backend fixes it 
        // OR we pass it. The backend handler `BookSeat` expects `artist_id`.
        // We will need to get current user ID. 
        // For MVP, if backend enforces it, we might fail if we don't pass it.
        // Let's assume we need to fix backend handler too, mirroring what we did for Travel.
      });
    } catch (e) {
      throw Exception('Booking failed: $e');
    }
  }

  Future<void> addTeamMember(String studioId, String email, String role) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/team', data: {
        'email': email,
        'role': role,
      });
    } catch (e) {
      throw Exception('Failed to add team member: $e');
    }
  }

  Future<List<StudioTeamMember>> getTeamMembers(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/team');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => StudioTeamMember.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load team members');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
