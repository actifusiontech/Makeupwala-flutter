
abstract class SafetyService {
  Future<void> submitHealthLog({
    required double temperature,
    required String maskPhotoPath,
  });

  Future<void> triggerSOS({
    required double lat,
    required double lng,
    String? address,
    int? batteryLevel,
  });

  Future<void> updateLocation({
    required double lat,
    required double lng,
  });

  Future<void> submitVaccineRecord({
    required String vaccineName,
    required int doseCount,
    required String certificatePath,
  });
}

class HealthLog {
  final String id;
  final double temperature;
  final String maskPhotoUrl;
  final String status;
  final DateTime createdAt;

  HealthLog({
    required this.id,
    required this.temperature,
    required this.maskPhotoUrl,
    required this.status,
    required this.createdAt,
  });
}
