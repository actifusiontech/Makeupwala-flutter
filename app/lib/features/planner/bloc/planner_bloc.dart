import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/planner_repository.dart';
import 'planner_event.dart';
import 'planner_state.dart';

class PlannerBloc extends Bloc<PlannerEvent, PlannerState> {
  final PlannerRepository repository;

  PlannerBloc({required this.repository}) : super(const PlannerState.initial()) {
    on<PlannerEvent>((event, emit) async {
      await event.when(
        createSquad: (bookingId, name, role) async {
          emit(const PlannerState.loading());
          try {
            await repository.createSquad({
              'booking_id': bookingId,
              'name': name,
              'role': role,
            });
            emit(const PlannerState.actionSuccess('Squad created successfully!'));
          } catch (e) {
            emit(PlannerState.error(e.toString()));
          }
        },
        updateLogisticsStatus: (bookingId, logisticId, statusType, statusValue) async {
          emit(const PlannerState.loading());
          try {
            await repository.updateLogisticsStatus(bookingId, logisticId, {
              'status_type': statusType, // e.g., 'visa', 'flight', 'kit'
              'status_value': statusValue,
            });
            emit(const PlannerState.actionSuccess('Logistics updated successfully!'));
          } catch (e) {
            emit(PlannerState.error(e.toString()));
          }
        },
      );
    });
  }
}
