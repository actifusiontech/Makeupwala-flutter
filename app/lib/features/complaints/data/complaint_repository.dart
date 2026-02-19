import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';
import '../domain/complaint_model.dart';

class ComplaintRepository {
  final ApiClient _apiClient;

  ComplaintRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<void> raiseComplaint({
    required String bookingId,
    required String subject,
    required String description,
  }) async {
    try {
      developer.log('📝 Raising complaint for booking: $bookingId', name: 'ComplaintRepository');
      await _apiClient.dio.post(
        '/complaints',
        data: {
          'booking_id': bookingId,
          'subject': subject,
          'description': description,
        },
      );
    } catch (e) {
      developer.log('❌ Raise complaint failed: $e', name: 'ComplaintRepository');
      rethrow;
    }
  }

  Future<List<ComplaintModel>> getMyComplaints() async {
    try {
      developer.log('📝 Fetching my complaints', name: 'ComplaintRepository');
      final response = await _apiClient.dio.get('/complaints');
      final data = response.data is Map && response.data.containsKey('data') 
          ? response.data['data'] 
          : response.data;

      return (data as List)
          .map((e) => ComplaintModel.fromJson(e))
          .toList();
    } catch (e) {
      developer.log('❌ Fetch complaints failed: $e', name: 'ComplaintRepository');
      // rethrow; // Optionally handle here or let BLoC handle
      return [];
    }
  }

  Future<List<ComplaintModel>> getAllComplaints() async {
    try {
      developer.log('📝 Fetching all complaints (Admin)', name: 'ComplaintRepository');
      final response = await _apiClient.dio.get('/admin/complaints');
      final data = response.data is Map && response.data.containsKey('data') 
          ? response.data['data'] 
          : response.data;
          
      return (data as List)
          .map((e) => ComplaintModel.fromJson(e))
          .toList();
    } catch (e) {
      developer.log('❌ Fetch all complaints failed: $e', name: 'ComplaintRepository');
      return [];
    }
  }

  Future<void> resolveComplaint(String complaintId, String adminComment) async {
    try {
      developer.log('📝 Resolving complaint: $complaintId', name: 'ComplaintRepository');
      await _apiClient.dio.put(
        '/admin/complaints/$complaintId',
        data: {
          'status': 'RESOLVED',
          'admin_comment': adminComment, // Using lower_case to match Go request binding
        },
      );
    } catch (e) {
      developer.log('❌ Resolve complaint failed: $e', name: 'ComplaintRepository');
      rethrow;
    }
  }
}

