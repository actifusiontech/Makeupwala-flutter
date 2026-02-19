import 'dart:developer' as developer;
import 'package:intl/intl.dart';

import 'package:app/core/network/api_client.dart';
import 'package:app/core/models/rewards.dart';

class BookingRepository {
  final ApiClient _apiClient;

  BookingRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<Map<String, dynamic>> createBooking({
    required String artistId,
    required String serviceId,
    required DateTime date,
    required String time,
    String? notes,
    int redeemPoints = 0,
    String paymentMethod = 'online',
    String? couponCode,
  }) async {
    try {
      developer.log('📅 Creating booking for artist: $artistId', name: 'BookingRepository');
      
      // Calculate end time as 1 hour after start time for simplicity in MVP
      final start = DateFormat('HH:mm').parse(time);
      final end = start.add(const Duration(hours: 1));
      final endTime = DateFormat('HH:mm').format(end);

      final response = await _apiClient.dio.post(
        '/customers/me/bookings',
        data: {
          'artist_id': artistId,
          'booking_date': date.toIso8601String().split('T')[0],
          'start_time': time,
          'end_time': endTime,
          'visit_type': 'salon', // Default for now
          'payment_method': paymentMethod,
          'services': [
            {'artist_service_id': serviceId, 'quantity': 1}
          ],
          'customer_notes': notes,
          'redeem_points': redeemPoints,
          'coupon_code': couponCode,
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

  Future<Map<String, dynamic>> getBookingById(String id) async {
    try {
      developer.log('📅 Fetching booking details for: $id', name: 'BookingRepository');
      final response = await _apiClient.dio.get('/customers/me/bookings/$id');
      return response.data['data'] as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Fetch booking details failed: $e', name: 'BookingRepository');
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

  Future<Map<String, dynamic>> validateCoupon(String code) async {
    try {
      final response = await _apiClient.dio.get('/coupons/validate?code=$code');
      return response.data;
    } catch (e) {
      // Allow 400 errors to propagate their message
      rethrow;
    }
  }

  Future<LoyaltyBalance> getLoyaltyBalance() async {
    try {
      final response = await _apiClient.dio.get('/rewards/balance');
      return LoyaltyBalance.fromJson(response.data);
    } catch (e) {
      developer.log('❌ Get loyalty balance failed: $e', name: 'BookingRepository');
      // Fallback
      return const LoyaltyBalance(
        id: '',
        userId: '',
        balance: 0,
        tier: 1,
        totalBookings: 0,
      );
    }
  }

  Future<Map<String, dynamic>> initiatePayment({
    required String bookingId,
    required double amount,
    required String type,
  }) async {
    try {
      final response = await _apiClient.dio.post(
        '/payments/initiate',
        data: {
          'booking_id': bookingId,
          'amount': amount,
          'type': type, // 'DEPOSIT', 'FULL_PAYMENT'
        },
      );
      return response.data;
    } catch (e) {
      developer.log('❌ Initiate payment failed: $e', name: 'BookingRepository');
      rethrow;
    }
  }

  Future<void> verifyPayment({
    required String orderId,
    required String paymentId,
    required String signature,
    required String bookingId,
  }) async {
    try {
      await _apiClient.dio.post(
        '/payments/verify',
        data: {
          'order_id': orderId,
          'payment_id': paymentId,
          'signature': signature,
          'booking_id': bookingId,
        },
      );
      developer.log('✅ Payment verified successfully', name: 'BookingRepository');
    } catch (e) {
      developer.log('❌ Payment verification failed: $e', name: 'BookingRepository');
      rethrow;
    }
  }
}
