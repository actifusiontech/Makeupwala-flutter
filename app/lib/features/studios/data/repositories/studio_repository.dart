import '../../../core/network/api_client.dart';
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
        'date': date.toIso8601String(),
        'hours': hours,
      });
    } catch (e) {
      throw Exception('Booking failed: $e');
    }
  }
}
