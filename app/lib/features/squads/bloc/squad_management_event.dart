part of 'squad_management_bloc.dart';

@freezed
class SquadManagementEvent with _$SquadManagementEvent {
  const factory SquadManagementEvent.loadMySquad() = _LoadMySquad;
  const factory SquadManagementEvent.inviteMember({required String email}) = _InviteMember;
  const factory SquadManagementEvent.removeMember({required String memberId}) = _RemoveMember;
}
