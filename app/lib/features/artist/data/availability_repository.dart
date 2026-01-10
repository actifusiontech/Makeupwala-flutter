import 'package:dio/dio.dart';
import 'availability_model.dart';

class AvailabilityRepository {
  final Dio _dio;

  AvailabilityRepository(this._dio);

  Future<List<Availability>> getAvailability({
    required String startDate,
    required String endDate,
  }) async {
    try {
      final response = await _dio.get(
        '/artists/me/availability',
        queryParameters: {
          'start_date': startDate,
          'end_date': endDate,
        },
      );

      final availabilities = (response.data['availabilities'] as List)
          .map((e) => Availability.fromJson(e))
          .toList();

      return availabilities;
    } catch (e) {
      throw Exception('Failed to fetch availability: $e');
    }
  }

  Future<Availability> setAvailability(AvailabilityRequest request) async {
    try {
      final response = await _dio.post(
        '/artists/me/availability',
        data: request.toJson(),
      );

      return Availability.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to set availability: $e');
    }
  }

  Future<Availability> updateAvailability(
    String id,
    AvailabilityRequest request,
  ) async {
    try {
      final response = await _dio.put(
        '/artists/me/availability/$id',
        data: request.toJson(),
      );

      return Availability.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to update availability: $e');
    }
  }

  Future<void> deleteAvailability(String id) async {
    try {
      await _dio.delete('/artists/me/availability/$id');
    } catch (e) {
      throw Exception('Failed to delete availability: $e');
    }
  }
}
