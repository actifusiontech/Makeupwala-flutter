import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/studio_repository.dart';

part 'studio_coupon_event.dart';
part 'studio_coupon_state.dart';
part 'studio_coupon_bloc.freezed.dart';

class StudioCouponBloc extends Bloc<StudioCouponEvent, StudioCouponState> {
  final StudioRepository repository;

  StudioCouponBloc({required this.repository}) : super(const StudioCouponState.initial()) {
    on<StudioCouponEvent>((event, emit) async {
      await event.map(
        fetchCoupons: (e) async {
          emit(const StudioCouponState.loading());
          try {
            final coupons = await repository.getCoupons(e.studioId);
            emit(StudioCouponState.couponsLoaded(coupons));
          } catch (error) {
            emit(StudioCouponState.error(error.toString()));
          }
        },
        createCoupon: (e) async {
          emit(const StudioCouponState.loading());
          try {
            await repository.createCoupon(e.studioId, e.couponData);
            emit(const StudioCouponState.success('Coupon created successfully!'));
            add(StudioCouponEvent.fetchCoupons(e.studioId));
          } catch (error) {
            emit(StudioCouponState.error(error.toString()));
          }
        },
        triggerReminders: (e) async {
          emit(const StudioCouponState.loading());
          try {
            await repository.triggerReminders(e.studioId);
            emit(const StudioCouponState.success('Automated reminders triggered!'));
          } catch (error) {
            emit(StudioCouponState.error(error.toString()));
          }
        },
      );
    });
  }
}
