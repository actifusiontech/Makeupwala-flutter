import 'package:freezed_annotation/freezed_annotation.dart';

part 'studio_booking_manager_event.freezed.dart';

@freezed
class StudioBookingManagerEvent with _$StudioBookingManagerEvent {
  const factory StudioBookingManagerEvent.loadBookings(String studioId) = _LoadBookings;
  const factory StudioBookingManagerEvent.updateBookingStatus(String bookingId, String status) = _UpdateBookingStatus;
}
