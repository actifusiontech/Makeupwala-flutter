import 'package:freezed_annotation/freezed_annotation.dart';

part 'safety_models.freezed.dart';
part 'safety_models.g.dart';

@freezed
class EmergencyContact with _$EmergencyContact {
  const factory EmergencyContact({
    required String id,
    required String name,
    required String phoneNumber,
    required String relation,
    @Default(true) bool isNotificationEnabled,
  }) = _EmergencyContact;

  factory EmergencyContact.fromJson(Map<String, dynamic> json) => _$EmergencyContactFromJson(json);
}

@freezed
class SOSAlert with _$SOSAlert {
  const factory SOSAlert({
    required String id,
    required String userId,
    required double lat,
    required double lng,
    String? address,
    required int batteryLevel,
    required DateTime createdAt,
    @Default('active') String status,
  }) = _SOSAlert;

  factory SOSAlert.fromJson(Map<String, dynamic> json) => _$SOSAlertFromJson(json);
}
