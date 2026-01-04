
import 'package:dio/dio.dart';
import '../../domain/safety_service.dart';

class SafetyRepository implements SafetyService {
  final Dio _dio;

  SafetyRepository(this._dio);

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
  Future<void> triggerSOS({
    required double lat,
    required double lng,
    String? address,
    int? batteryLevel,
  }) async {
    await _dio.post('/safety/sos', data: {
      'lat': lat,
      'lng': lng,
      'address': address,
      'battery_level': batteryLevel,
    });
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
