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

  // Squad Management
  Future<List<dynamic>> getSquads(String bookingId) async {
    try {
      final response = await _apiClient.dio.get('/planner/bookings/$bookingId/squads');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch squads: $e', name: 'PlannerRepository');
      return [];
    }
  }

  Future<void> createSquad(Map<String, dynamic> squadData) async {
    try {
      await _apiClient.dio.post('/planner/squads', data: squadData);
    } catch (e) {
      developer.log('❌ Failed to create squad: $e', name: 'PlannerRepository');
      rethrow;
    }
  }

  // Escrow & Payments
  Future<Map<String, dynamic>> getEscrowStatus(String bookingId) async {
    try {
      final response = await _apiClient.dio.get('/planner/bookings/$bookingId/escrow');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch escrow status: $e', name: 'PlannerRepository');
      return {};
    }
  }

  Future<void> releasePayment(String bookingId, double amount) async {
    try {
      await _apiClient.dio.post('/planner/bookings/$bookingId/escrow/release', data: {'amount': amount});
    } catch (e) {
      developer.log('❌ Failed to release payment: $e', name: 'PlannerRepository');
      rethrow;
    }
  }

  // Travel Logistics
  Future<List<dynamic>> getTravelLogistics(String bookingId) async {
    try {
      final response = await _apiClient.dio.get('/planner/bookings/$bookingId/logistics');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch logistics: $e', name: 'PlannerRepository');
      return [];
    }
  }

  Future<void> updateLogisticsStatus(String bookingId, String logisticId, Map<String, dynamic> statusData) async {
    try {
      await _apiClient.dio.patch('/planner/bookings/$bookingId/logistics/$logisticId', data: statusData);
    } catch (e) {
      developer.log('❌ Failed to update logistics: $e', name: 'PlannerRepository');
      rethrow;
    }
  }
}
