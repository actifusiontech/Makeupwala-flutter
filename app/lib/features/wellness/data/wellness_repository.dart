import 'package:app/core/network/api_client.dart';
import 'models/wellness_models.dart';

class WellnessRepository {
  final ApiClient _apiClient;

  WellnessRepository(this._apiClient);

  Future<List<WellnessPartner>> getPartners() async {
    final response = await _apiClient.dio.get('/wellness/partners');
    return (response.data as List).map((e) => WellnessPartner.fromJson(e)).toList();
  }

  Future<List<WellnessPackage>> getPackages() async {
    final response = await _apiClient.dio.get('/wellness/packages');
    return (response.data as List).map((e) => WellnessPackage.fromJson(e)).toList();
  }
  
  Future<void> bookPackage(String packageId, String date, int guests) async {
    await _apiClient.dio.post('/wellness/bookings', data: {
      'package_id': packageId,
      'check_in_date': date,
      'guests': guests
    });
  }
}
