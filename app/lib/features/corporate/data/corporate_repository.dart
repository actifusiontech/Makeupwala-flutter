import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../core/network/api_client.dart'; // Assuming common client
import 'corporate_models.dart';

class CorporateRepository {
  final String baseUrl = 'https://api.makeupwallah.com/api/v1/makeupwala'; // Adjust env

  Future<void> onboardClient(CorporateClient client) async {
    final response = await http.post(
      Uri.parse('$baseUrl/corporate/onboard'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(client.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to onboard corporate client: ${response.body}');
    }
  }

  Future<void> requestBooking(BulkBooking booking) async {
    final response = await http.post(
      Uri.parse('$baseUrl/corporate/bookings'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(booking.toJson()),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to request bulk booking: ${response.body}');
    }
  }

  Future<String> createCampaign(Map<String, dynamic> campaignData) async {
    // Mock implementation for now
    await Future.delayed(const Duration(seconds: 2));
    return 'CAMPAIGN-${DateTime.now().millisecondsSinceEpoch}';
  }

  Future<List<Map<String, dynamic>>> getCampaigns() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {
        'id': 'CAMPAIGN-101',
        'title': 'Summer Bridal Collection Launch',
        'budget': 500000,
        'status': 'active',
        'applicants_count': 12,
      },
      {
        'id': 'CAMPAIGN-102',
        'title': 'Corporate Headshots - Bangalore',
        'budget': 120000,
        'status': 'closed',
        'applicants_count': 5,
      },
      {
        'id': 'CAMPAIGN-103',
        'title': 'Fashion Week Backup Team',
        'budget': 350000,
        'status': 'active',
        'applicants_count': 8,
      },
    ];
  }

  Future<List<Map<String, dynamic>>> getApplicants(String campaignId) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {
        'id': 'ARTIST-001',
        'name': 'Ria Makeup Artistry',
        'rating': 4.8,
        'portfolio_image': 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
        'quote': 45000,
      },
      {
        'id': 'ARTIST-002',
        'name': 'Glamour by Sneha',
        'rating': 4.5,
        'portfolio_image': 'https://images.unsplash.com/photo-1512496015851-a90fb38ba796?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
        'quote': 42000,
      },
      {
        'id': 'ARTIST-003',
        'name': 'Elite Looks',
        'rating': 4.9,
        'portfolio_image': 'https://images.unsplash.com/photo-1516975080664-ed2fc6a32937?ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
        'quote': 55000,
      },
    ];
  }
}
