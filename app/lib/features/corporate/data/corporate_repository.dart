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
}
