import '../../../core/network/api_client.dart';
import 'corporate_models.dart';

class CorporateRepository {
  final ApiClient _apiClient;

  CorporateRepository({ApiClient? apiClient})
    : _apiClient = apiClient ?? ApiClient();

  Future<void> onboardClient(CorporateClient client) async {
    await _apiClient.dio.post('/corporate/onboard', data: client.toJson());
  }

  Future<void> requestBooking(BulkBooking booking) async {
    await _apiClient.dio.post('/corporate/bookings', data: booking.toJson());
  }

  Future<String> createCampaign(Map<String, dynamic> campaignData) async {
    final response = await _apiClient.dio.post(
      '/brands/campaigns',
      data: campaignData,
    );
    final data = response.data as Map<String, dynamic>;
    final id = data['id']?.toString();
    if (id == null || id.isEmpty) {
      throw const FormatException('Campaign response did not include an ID');
    }
    return id;
  }

  Future<List<Map<String, dynamic>>> getCampaigns() async {
    final response = await _apiClient.dio.get('/brands/campaigns');
    return (response.data as List<dynamic>)
        .map((item) => Map<String, dynamic>.from(item as Map))
        .toList();
  }

  Future<List<Map<String, dynamic>>> getApplicants(String campaignId) async {
    final response = await _apiClient.dio.get(
      '/brands/campaigns/$campaignId/applications',
    );
    return (response.data as List<dynamic>)
        .map((item) => Map<String, dynamic>.from(item as Map))
        .toList();
  }
}
