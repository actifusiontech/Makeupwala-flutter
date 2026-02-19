import 'package:freezed_annotation/freezed_annotation.dart';

part 'studio_booking_manager_state.freezed.dart';

@freezed
class StudioBookingManagerState with _$StudioBookingManagerState {
  const factory StudioBookingManagerState.initial() = _Initial;
  const factory StudioBookingManagerState.loading() = _Loading;
  const factory StudioBookingManagerState.loaded(List<dynamic> bookings) = _Loaded;
  const factory StudioBookingManagerState.actionSuccess(String message) = _ActionSuccess;
  const factory StudioBookingManagerState.error(String message) = _Error;
}
