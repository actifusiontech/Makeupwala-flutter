part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.loading() = _Loading;
  const factory BookingState.success({required String message}) = _Success;
  const factory BookingState.loaded({required List<Map<String, dynamic>> bookings}) = _Loaded;
  const factory BookingState.error({required String message}) = _Error;
  
  const factory BookingState.paymentRequired({
    required String orderId,
    required double amount,
    required String bookingId,
    required String keyId,
  }) = _PaymentRequired;
  
  const factory BookingState.bookingsLoaded({
    required List<Map<String, dynamic>> bookings,
  }) = _BookingsLoaded;

  const factory BookingState.bookingDetailsLoaded({
    required Map<String, dynamic> booking,
  }) = _BookingDetailsLoaded;
}
