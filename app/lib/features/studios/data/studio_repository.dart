import 'package:app/core/network/api_client.dart';
import 'package:dio/dio.dart';
import 'models/studio_model.dart';
import 'dart:developer' as developer;

class StudioRepository {
  final ApiClient _apiClient;

  StudioRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  /// List all studios, optionally filtered by city
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

  /// Register a new studio
  Future<void> registerStudio(Map<String, dynamic> studioData) async {
    try {
      await _apiClient.dio.post('/studios/register', data: studioData);
    } catch (e) {
      developer.log('❌ Failed to register studio: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  /// Get studios managed by the authenticated user
  Future<List<dynamic>> getMyStudios() async {
    try {
      final response = await _apiClient.dio.get('/studios/my-studios'); 
      return response.data as List<dynamic>; 
    } catch (e) {
      developer.log('⚠️ Failed to fetch studios: $e', name: 'StudioRepository');
       return [];
    }
  }

  /// Get real-time stats for a specific studio
  Future<Map<String, dynamic>> getStudioStats(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/stats');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch studio stats: $e', name: 'StudioRepository');
      return {};
    }
  }

  /// Book a seat in a studio
  Future<void> bookSlot(String studioId, DateTime date, int hours, {String? seatId}) async {
    try {
      await _apiClient.dio.post('/studios/bookings', data: {
        'studio_id': studioId,
        'seat_id': seatId,
        'booking_date': date.toIso8601String(),
        'duration_hrs': hours,
      });
    } catch (e) {
      throw Exception('Booking failed: $e');
    }
  }

  /// Manage studio team members
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

  /// Get all team members for a studio
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

  /// Get available seats for a studio on a specific date
  Future<List<StudioSeat>> getAvailableSeats(String studioId, DateTime date) async {
    try {
      final response = await _apiClient.dio.get(
        '/studios/$studioId/seats',
        queryParameters: {'date': date.toIso8601String()},
      );
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => StudioSeat.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load seats');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  /// Get all seats (available or not) for manager view
  Future<List<StudioSeat>> getAllSeats(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/all-seats');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => StudioSeat.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load all seats');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  /// Get all bookings for a specific studio (Manager view)
  Future<List<dynamic>> getStudioBookings(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/all-bookings');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch bookings: $e', name: 'StudioRepository');
      return [];
    }
  }

  /// Update booking status (Accept/Reject)
  Future<void> updateBookingStatus(String bookingId, String status) async {
    try {
      await _apiClient.dio.patch('/studios/bookings/$bookingId/status', data: {'status': status});
    } catch (e) {
      developer.log('❌ Failed to update booking status: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  /// Add a new seat
  Future<void> addSeat(String studioId, Map<String, dynamic> seatData) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/seats', data: seatData);
    } catch (e) {
      developer.log('❌ Failed to add seat: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  /// Update an existing seat
  Future<void> updateSeat(String studioId, String seatId, Map<String, dynamic> seatData) async {
    try {
      await _apiClient.dio.patch('/studios/$studioId/seats/$seatId', data: seatData);
    } catch (e) {
      developer.log('❌ Failed to update seat: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  /// Delete a seat
  Future<void> deleteSeat(String studioId, String seatId) async {
    try {
      await _apiClient.dio.delete('/studios/$studioId/seats/$seatId');
    } catch (e) {
      developer.log('❌ Failed to delete seat: $e', name: 'StudioRepository');
      rethrow;
    }
  }
}
