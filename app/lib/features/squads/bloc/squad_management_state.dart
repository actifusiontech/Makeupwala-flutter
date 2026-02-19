part of 'squad_management_bloc.dart';

@freezed
class SquadManagementState with _$SquadManagementState {
  const factory SquadManagementState({
    @Default([]) List<dynamic> members,
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,
  }) = _SquadManagementState;
}
