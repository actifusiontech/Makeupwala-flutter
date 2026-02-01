import 'package:app/core/network/api_client.dart';
import '../models/retreat_model.dart';

class TravelRepository {
  final ApiClient _apiClient;

  TravelRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<RetreatModel>> getRetreats() async {
    try {
      final response = await _apiClient.dio.get('/travel/retreats');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => RetreatModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load retreats');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<void> bookRetreat(String retreatId) async {
    try {
      await _apiClient.dio.post('/travel/retreats/bookings', data: {
        'retreat_package_id': retreatId,
      });
    } catch (e) {
      throw Exception('Booking failed: $e');
    }
  }
}
