import 'package:freezed_annotation/freezed_annotation.dart';

part 'planner_event.freezed.dart';

@freezed
class PlannerEvent with _$PlannerEvent {
  const factory PlannerEvent.createSquad(String bookingId, String name, String role) = _CreateSquad;
  const factory PlannerEvent.updateLogisticsStatus(String bookingId, String logisticId, String statusType, String statusValue) = _UpdateLogisticsStatus;
  // Add other events as needed for fetching data if we move fetch logic to Bloc
}
