import 'package:freezed_annotation/freezed_annotation.dart';

part 'planner_state.freezed.dart';

@freezed
class PlannerState with _$PlannerState {
  const factory PlannerState.initial() = _Initial;
  const factory PlannerState.loading() = _Loading;
  const factory PlannerState.actionSuccess(String message) = _ActionSuccess;
  const factory PlannerState.error(String message) = _Error;
}
