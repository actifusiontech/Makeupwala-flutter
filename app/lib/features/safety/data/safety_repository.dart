
import 'package:dio/dio.dart';
import 'package:app/features/safety/domain/safety_service.dart';
import 'package:app/features/safety/domain/safety_models.dart';

class SafetyRepository implements SafetyService {
  final Dio _dio;

  SafetyRepository(this._dio);

  // ... (existing health log and location methods)

  Future<List<EmergencyContact>> getEmergencyContacts() async {
    try {
      final response = await _dio.get('/safety/contacts');
      final data = response.data['data'] as List;
      return data.map((e) => EmergencyContact.fromJson(e)).toList();
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        // Not logged in or unauthorized, return empty list gracefully
        return [];
      }
      rethrow;
    }
  }

  Future<void> addEmergencyContact(Map<String, dynamic> contactData) async {
    await _dio.post('/safety/contacts', data: contactData);
  }

  Future<void> removeEmergencyContact(String contactId) async {
    await _dio.delete('/safety/contacts/$contactId');
  }

  @override
  Future<SOSAlert> triggerSOS({
    required double lat,
    required double lng,
    String? address,
    int? batteryLevel,
  }) async {
    final response = await _dio.post('/safety/sos', data: {
      'lat': lat,
      'lng': lng,
      'address': address,
      'battery_level': batteryLevel,
    });
    return SOSAlert.fromJson(response.data['data']);
  }

  Future<void> cancelSOS(String alertId) async {
    await _dio.post('/safety/sos/$alertId/cancel');
  }

  @override
  Future<void> submitHealthLog({
    required double temperature,
    required String maskPhotoPath,
  }) async {
    final formData = FormData.fromMap({
      'temperature': temperature,
      'mask_photo': await MultipartFile.fromFile(maskPhotoPath),
    });

    await _dio.post('/safety/health-log', data: formData);
  }

  @override
  Future<void> updateLocation({
    required double lat,
    required double lng,
  }) async {
    await _dio.post('/safety/location', data: {
      'lat': lat,
      'lng': lng,
    });
  }

  @override
  Future<void> submitVaccineRecord({
    required String vaccineName,
    required int doseCount,
    required String certificatePath,
  }) async {
    final formData = FormData.fromMap({
      'vaccine_name': vaccineName,
      'dose_count': doseCount,
      'certificate': await MultipartFile.fromFile(certificatePath),
    });

    await _dio.post('/safety/vaccine', data: formData);
  }
}
