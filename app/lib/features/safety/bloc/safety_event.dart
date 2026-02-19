import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/safety_models.dart';

part 'safety_event.freezed.dart';

@freezed
class SafetyEvent with _$SafetyEvent {
  const factory SafetyEvent.fetchEmergencyContacts() = _FetchEmergencyContacts;
  const factory SafetyEvent.addEmergencyContact({
    required String name,
    required String phoneNumber,
    required String relation,
  }) = _AddEmergencyContact;
  const factory SafetyEvent.removeEmergencyContact(String contactId) = _RemoveEmergencyContact;
  const factory SafetyEvent.triggerSOS({
    required double lat,
    required double lng,
    String? address,
    required int batteryLevel,
  }) = _TriggerSOS;
  const factory SafetyEvent.cancelSOS(String alertId) = _CancelSOS;
  const factory SafetyEvent.alertReceived(SOSAlert alert) = _AlertReceived;
  const factory SafetyEvent.dismissAlert() = _DismissAlert;
}
