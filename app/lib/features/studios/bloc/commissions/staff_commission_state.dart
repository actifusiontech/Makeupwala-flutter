part of 'staff_commission_bloc.dart';

@freezed
class StaffCommissionState with _$StaffCommissionState {
  const factory StaffCommissionState.initial() = _Initial;
  const factory StaffCommissionState.loading() = _Loading;
  const factory StaffCommissionState.commissionsLoaded(List<dynamic> commissions) = _CommissionsLoaded;
  const factory StaffCommissionState.success(String message) = _Success;
  const factory StaffCommissionState.error(String message) = _Error;
}
