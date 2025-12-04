import 'dart:developer' as developer;

import '../../../core/network/api_client.dart';

class BookingRepository {
  final ApiClient _apiClient;

  BookingRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<Map<String, dynamic>> createBooking({
    required String artistId,
    required String serviceId,
    required DateTime date,
    required String time,
    String? notes,
  }) async {
    try {
      developer.log('📅 Creating booking for artist: $artistId', name: 'BookingRepository');
      
      final response = await _apiClient.dio.post(
        '/customers/me/bookings',
        data: {
          'artist_id': artistId,
          'service_id': serviceId,
          'booking_date': date.toIso8601String().split('T')[0], // YYYY-MM-DD
          'booking_time': time, // HH:MM
          'notes': notes,
        },
      );

      return response.data;
    } catch (e) {
      developer.log('❌ Create booking failed: $e', name: 'BookingRepository');
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> listMyBookings({bool isArtist = false}) async {
    try {
      final endpoint = isArtist ? '/artists/me/bookings' : '/customers/me/bookings';
      developer.log('📅 Fetching bookings from $endpoint', name: 'BookingRepository');
      
      final response = await _apiClient.dio.get(endpoint);
      final List<dynamic> data = response.data['data'] ?? [];
      return data.cast<Map<String, dynamic>>();
    } catch (e) {
      developer.log('❌ Fetch bookings failed: $e', name: 'BookingRepository');
      rethrow;
    }
  }

  Future<void> updateBookingStatus({
    required String bookingId,
    required String status,
    required bool isArtist,
    String? note,
  }) async {
    try {
      final endpoint = isArtist 
          ? '/artists/me/bookings/$bookingId/status' 
          : '/customers/me/bookings/$bookingId/status';
          
      await _apiClient.dio.patch(
        endpoint,
        data: {
          'status': status,
          'note': note,
        },
      );
    } catch (e) {
      developer.log('❌ Update status failed: $e', name: 'BookingRepository');
      rethrow;
    }
  }
}
