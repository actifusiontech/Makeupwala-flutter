part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.createBooking({
    required String artistId,
    required String serviceId,
    required DateTime date,
    required String time,
    String? notes,
    @Default(0) int redeemPoints,
    @Default('online') String paymentMethod,
    String? couponCode,
  }) = _CreateBooking;

  const factory BookingEvent.fetchBookings({
    required bool isArtist,
  }) = _FetchBookings;

  const factory BookingEvent.updateStatus({
    required String bookingId,
    required String status,
    required bool isArtist,
    String? note,
  }) = _UpdateStatus;

  const factory BookingEvent.loadBookings() = _LoadBookings;

  const factory BookingEvent.cancelBooking({
    required String bookingId,
  }) = _CancelBooking;

  const factory BookingEvent.processPayment({
    required String orderId,
    required String paymentId,
    required String signature,
    required String bookingId,
  }) = _ProcessPayment;

  const factory BookingEvent.loadBookingDetails({
    required String bookingId,
  }) = _LoadBookingDetails;
}
