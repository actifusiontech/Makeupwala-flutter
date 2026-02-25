part of 'studio_coupon_bloc.dart';

@freezed
class StudioCouponState with _$StudioCouponState {
  const factory StudioCouponState.initial() = _Initial;
  const factory StudioCouponState.loading() = _Loading;
  const factory StudioCouponState.couponsLoaded(List<dynamic> coupons) = _CouponsLoaded;
  const factory StudioCouponState.success(String message) = _Success;
  const factory StudioCouponState.error(String message) = _Error;
}
