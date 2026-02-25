import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';

part 'staff_commission_event.dart';
part 'staff_commission_state.dart';
part 'staff_commission_bloc.freezed.dart';

class StaffCommissionBloc extends Bloc<StaffCommissionEvent, StaffCommissionState> {
  final StudioRepository repository;

  StaffCommissionBloc({required this.repository}) : super(const StaffCommissionState.initial()) {
    on<StaffCommissionEvent>((event, emit) async {
      await event.map(
        fetchCommissions: (e) async {
          emit(const StaffCommissionState.loading());
          try {
            final commissions = await repository.getStaffCommissions(e.studioId, artistId: e.artistId);
            emit(StaffCommissionState.commissionsLoaded(commissions));
          } catch (error) {
            emit(StaffCommissionState.error(error.toString()));
          }
        },
        markPaid: (e) async {
          emit(const StaffCommissionState.loading());
          try {
            await repository.markCommissionPaid(e.commissionId);
            emit(const StaffCommissionState.success('Commission marked as paid!'));
            add(StaffCommissionEvent.fetchCommissions(e.studioId));
          } catch (error) {
            emit(StaffCommissionState.error(error.toString()));
          }
        },
      );
    });
  }
}
