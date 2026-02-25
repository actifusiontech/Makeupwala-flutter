part of 'staff_commission_bloc.dart';

@freezed
class StaffCommissionEvent with _$StaffCommissionEvent {
  const factory StaffCommissionEvent.fetchCommissions(String studioId, {String? artistId}) = _FetchCommissions;
  const factory StaffCommissionEvent.markPaid(String commissionId, String studioId) = _MarkPaid;
}
