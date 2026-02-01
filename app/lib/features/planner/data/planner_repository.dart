import 'package:dio/dio.dart';
import '../../../../core/network/api_client.dart';
import 'dart:developer' as developer;

class PlannerRepository {
  final ApiClient _apiClient;

  PlannerRepository(this._apiClient);

  Future<void> createDestinationBooking(Map<String, dynamic> bookingData) async {
    try {
      await _apiClient.dio.post('/travel/bookings/destination', data: bookingData);
    } catch (e) {
      developer.log('❌ Failed to create destination booking: $e', name: 'PlannerRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getMyDestinationBookings() async {
    try {
      final response = await _apiClient.dio.get('/travel/bookings/destination');
      return response.data as List<dynamic>;
    } catch (e) {
      // Return empty list on error for now, or rethrow
      developer.log('⚠️ Failed to fetch bookings: $e', name: 'PlannerRepository');
      return [];
    }
  }

  // Future<void> createSquad(Map<String, dynamic> squadData) async { ... }
}
