import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/studio_repository.dart';
import 'studio_seat_manager_event.dart';
import 'studio_seat_manager_state.dart';

class StudioSeatManagerBloc extends Bloc<StudioSeatManagerEvent, StudioSeatManagerState> {
  final StudioRepository repository;
  String? _currentStudioId;

  StudioSeatManagerBloc({required this.repository}) : super(const StudioSeatManagerState.initial()) {
    on<StudioSeatManagerEvent>((event, emit) async {
      await event.when(
        loadSeats: (studioId) async {
          _currentStudioId = studioId;
          emit(const StudioSeatManagerState.loading());
          try {
            final seats = await repository.getAllSeats(studioId);
            emit(StudioSeatManagerState.loaded(seats));
          } catch (e) {
            emit(StudioSeatManagerState.error(e.toString()));
          }
        },
        addSeat: (studioId, seatData) async {
          emit(const StudioSeatManagerState.loading());
          try {
            await repository.addSeat(studioId, seatData);
            emit(const StudioSeatManagerState.actionSuccess('Seat added successfully!'));
            if (_currentStudioId != null) {
              add(StudioSeatManagerEvent.loadSeats(_currentStudioId!));
            }
          } catch (e) {
            emit(StudioSeatManagerState.error(e.toString()));
          }
        },
        updateSeat: (studioId, seatId, seatData) async {
          emit(const StudioSeatManagerState.loading());
          try {
            await repository.updateSeat(studioId, seatId, seatData);
            emit(const StudioSeatManagerState.actionSuccess('Seat updated successfully!'));
            if (_currentStudioId != null) {
              add(StudioSeatManagerEvent.loadSeats(_currentStudioId!));
            }
          } catch (e) {
            emit(StudioSeatManagerState.error(e.toString()));
          }
        },
        deleteSeat: (studioId, seatId) async {
          emit(const StudioSeatManagerState.loading());
          try {
            await repository.deleteSeat(studioId, seatId);
            emit(const StudioSeatManagerState.actionSuccess('Seat deleted successfully!'));
            if (_currentStudioId != null) {
              add(StudioSeatManagerEvent.loadSeats(_currentStudioId!));
            }
          } catch (e) {
            emit(StudioSeatManagerState.error(e.toString()));
          }
        },
      );
    });
  }
}
