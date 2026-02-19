import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/safety_models.dart';

part 'safety_state.freezed.dart';

@freezed
class SafetyState with _$SafetyState {
  const factory SafetyState.initial() = _Initial;
  const factory SafetyState.loading() = _Loading;
  const factory SafetyState.contactsLoaded(List<EmergencyContact> contacts) = _ContactsLoaded;
  const factory SafetyState.sosTriggered(SOSAlert alert) = _SosTriggered;
  const factory SafetyState.sosCancelled() = _SosCancelled;
  const factory SafetyState.alertActive(SOSAlert alert) = _AlertActive;
  const factory SafetyState.error(String message) = _Error;
  const factory SafetyState.success(String message) = _Success;
}
