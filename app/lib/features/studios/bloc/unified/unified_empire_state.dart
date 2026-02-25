part of 'unified_empire_bloc.dart';

@freezed
class UnifiedEmpireState with _$UnifiedEmpireState {
  const factory UnifiedEmpireState.initial() = _Initial;
  const factory UnifiedEmpireState.loading() = _Loading;
  const factory UnifiedEmpireState.loaded({
    required Map<String, dynamic> studioStats,
    required Map<String, dynamic> academyStats,
  }) = _Loaded;
  const factory UnifiedEmpireState.error(String message) = _Error;
}
