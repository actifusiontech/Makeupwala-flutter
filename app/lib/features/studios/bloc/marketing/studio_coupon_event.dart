part of 'studio_coupon_bloc.dart';

@freezed
class StudioCouponEvent with _$StudioCouponEvent {
  const factory StudioCouponEvent.fetchCoupons(String studioId) = _FetchCoupons;
  const factory StudioCouponEvent.createCoupon(String studioId, Map<String, dynamic> couponData) = _CreateCoupon;
  const factory StudioCouponEvent.triggerReminders(String studioId) = _TriggerReminders;
}
