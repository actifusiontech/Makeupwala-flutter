import '../../../core/network/api_client.dart';
import 'package:geolocator/geolocator.dart';

class SafetyRepository {
  final ApiClient _apiClient;

  SafetyRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<void> sendSOS() async {
    try {
      // Get current location
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      
      await _apiClient.dio.post('/safety/sos', data: {
        'latitude': position.latitude,
        'longitude': position.longitude,
        'timestamp': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      throw Exception('Failed to send SOS: $e');
    }
  }
}
