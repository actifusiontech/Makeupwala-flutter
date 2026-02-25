import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';

part 'studio_membership_event.dart';
part 'studio_membership_state.dart';
part 'studio_membership_bloc.freezed.dart';

class StudioMembershipBloc extends Bloc<StudioMembershipEvent, StudioMembershipState> {
  final StudioRepository repository;

  StudioMembershipBloc({required this.repository}) : super(const StudioMembershipState.initial()) {
    on<StudioMembershipEvent>((event, emit) async {
      await event.map(
        createPlan: (e) async {
          emit(const StudioMembershipState.loading());
          try {
            await repository.createMembershipPlan(e.studioId, e.planData);
            emit(const StudioMembershipState.success('Membership plan created!'));
            add(StudioMembershipEvent.fetchPlans(e.studioId));
          } catch (error) {
            emit(StudioMembershipState.error(error.toString()));
          }
        },
        fetchPlans: (e) async {
          emit(const StudioMembershipState.loading());
          try {
            final plans = await repository.getMembershipPlans(e.studioId);
            emit(StudioMembershipState.plansLoaded(plans));
          } catch (error) {
            emit(StudioMembershipState.error(error.toString()));
          }
        },
        assignMembership: (e) async {
          emit(const StudioMembershipState.loading());
          try {
            await repository.assignMembership(e.customerId, e.planId);
            emit(const StudioMembershipState.success('Membership assigned successfully!'));
            add(StudioMembershipEvent.fetchPlans(e.studioId));
          } catch (error) {
            emit(StudioMembershipState.error(error.toString()));
          }
        },
        createRecurringRule: (e) async {
          emit(const StudioMembershipState.loading());
          try {
            await repository.createRecurringBookingRule(e.ruleData);
            emit(const StudioMembershipState.success('Recurring booking rule created!'));
          } catch (error) {
            emit(StudioMembershipState.error(error.toString()));
          }
        },
      );
    });
  }
}
