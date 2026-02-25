part of 'unified_empire_bloc.dart';

@freezed
class UnifiedEmpireEvent with _$UnifiedEmpireEvent {
  const factory UnifiedEmpireEvent.fetchStats({
    required String studioId,
    required String instituteId,
  }) = _FetchStats;
}
