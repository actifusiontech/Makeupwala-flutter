import 'package:app/core/network/api_client.dart';
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

  /// Get studios managed by or affiliated with the authenticated user
  Future<List<StudioModel>> getMyStudios() async {
    try {
      final response = await _apiClient.dio.get('/studios/my-studios');
      final List<dynamic> data = response.data;
      return data.map((json) => StudioModel.fromJson(json)).toList();
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
  Future<void> addTeamMember(String studioId, Map<String, dynamic> memberData) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/team', data: memberData);
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

  // ------------------- CUSTOMER CRM -------------------

  Future<void> createCustomer(String studioId, Map<String, dynamic> customerData) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/customers', data: customerData);
    } catch (e) {
      developer.log('❌ Failed to create customer: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getCustomers(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/customers');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch customers: $e', name: 'StudioRepository');
      return [];
    }
  }

  Future<void> recordCustomerVisit(String customerId, Map<String, dynamic> visitData) async {
    try {
      await _apiClient.dio.post('/studios/customers/$customerId/visits', data: visitData);
    } catch (e) {
      developer.log('❌ Failed to record visit: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  // ------------------- MEMBERSHIPS & RECURRING -------------------

  Future<void> createMembershipPlan(String studioId, Map<String, dynamic> planData) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/membership-plans', data: planData);
    } catch (e) {
      developer.log('❌ Failed to create membership plan: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getMembershipPlans(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/membership-plans');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch membership plans: $e', name: 'StudioRepository');
      return [];
    }
  }

  Future<void> assignMembership(String customerId, String planId) async {
    try {
      await _apiClient.dio.post('/studios/memberships', data: {
        'customer_id': customerId,
        'plan_id': planId,
      });
    } catch (e) {
      developer.log('❌ Failed to assign membership: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<void> createRecurringBookingRule(Map<String, dynamic> ruleData) async {
    try {
      await _apiClient.dio.post('/studios/recurring-bookings', data: ruleData);
    } catch (e) {
      developer.log('❌ Failed to create recurring booking rule: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getRevenueAnalytics(String studioId, {String timeframe = 'monthly'}) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/analytics/revenue', queryParameters: {'timeframe': timeframe});
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch revenue analytics: $e', name: 'StudioRepository');
      return {};
    }
  }

  // ------------------- MARKETING & COUPONS -------------------

  Future<void> createCoupon(String studioId, Map<String, dynamic> couponData) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/coupons', data: couponData);
    } catch (e) {
      developer.log('❌ Failed to create coupon: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getCoupons(String studioId) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/coupons');
      return response.data as List<dynamic>;
    } catch (e) {
       developer.log('⚠️ Failed to fetch coupons: $e', name: 'StudioRepository');
      return [];
    }
  }

  Future<void> triggerReminders(String studioId) async {
    try {
      await _apiClient.dio.post('/studios/$studioId/reminders/trigger');
    } catch (e) {
      developer.log('❌ Failed to trigger reminders: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getStaffCommissions(String studioId, {String? artistId}) async {
    try {
      final response = await _apiClient.dio.get('/studios/$studioId/commissions', queryParameters: {'artist_id': artistId});
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch commissions: $e', name: 'StudioRepository');
      return [];
    }
  }

  Future<void> markCommissionPaid(String commId) async {
    try {
      await _apiClient.dio.post('/studios/commissions/$commId/pay');
    } catch (e) {
      developer.log('❌ Failed to mark commission as paid: $e', name: 'StudioRepository');
      rethrow;
    }
  }

  // ------------------- INVENTORY LINKAGE -------------------

  Future<List<dynamic>> getArtistInventory() async {
    try {
      final response = await _apiClient.dio.get('/inventory');
      // The inventory API returns { "data": [...] } based on handler.go
      return response.data['data'] as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch artist inventory: $e', name: 'StudioRepository');
      return [];
    }
  }

  Future<void> logVisitProductUsage(String studioId, String visitId, String productId, double units) async {
    try {
      await _apiClient.dio.post(
        '/studios/$studioId/visits/$visitId/products',
        data: {
          'product_id': productId,
          'units_used': units,
        },
      );
    } catch (e) {
      developer.log('❌ Failed to log product usage: $e', name: 'StudioRepository');
      rethrow;
    }
  }
}
