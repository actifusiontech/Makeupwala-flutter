import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/squad_repository.dart';

part 'squad_management_event.dart';
part 'squad_management_state.dart';
part 'squad_management_bloc.freezed.dart';

class SquadManagementBloc extends Bloc<SquadManagementEvent, SquadManagementState> {
  final SquadRepository _repository;

  SquadManagementBloc({required SquadRepository repository})
      : _repository = repository,
        super(const SquadManagementState()) {
    on<_LoadMySquad>(_onLoadMySquad);
    on<_InviteMember>(_onInviteMember);
    on<_RemoveMember>(_onRemoveMember);
  }

  Future<void> _onLoadMySquad(_LoadMySquad event, Emitter<SquadManagementState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final members = await _repository.getMySquad();
      emit(state.copyWith(isLoading: false, members: members));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onInviteMember(_InviteMember event, Emitter<SquadManagementState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await _repository.inviteMember(event.email);
      emit(state.copyWith(isLoading: false, successMessage: 'Invitation sent to ${event.email}'));
      add(const SquadManagementEvent.loadMySquad());
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Failed to invite: ${e.toString()}'));
    }
  }

  Future<void> _onRemoveMember(_RemoveMember event, Emitter<SquadManagementState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await _repository.removeMember(event.memberId);
      emit(state.copyWith(isLoading: false, successMessage: 'Member removed'));
      add(const SquadManagementEvent.loadMySquad());
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Failed to remove: ${e.toString()}'));
    }
  }
}
