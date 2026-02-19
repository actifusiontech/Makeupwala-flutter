import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/booking_repository.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final BookingRepository _repository;

  BookingBloc({BookingRepository? repository})
      : _repository = repository ?? BookingRepository(),
        super(const BookingState.initial()) {
    on<BookingEvent>((event, emit) async {
      await event.when(
        createBooking: (artistId, serviceId, date, time, notes, redeemPoints, paymentMethod, couponCode) =>
            _onCreateBooking(artistId, serviceId, date, time, notes, redeemPoints, paymentMethod, couponCode, emit),
        fetchBookings: (isArtist) => _onFetchBookings(isArtist, emit),
        updateStatus: (bookingId, status, isArtist, note) =>
            _onUpdateStatus(bookingId, status, isArtist, note, emit),
        loadBookings: () => _onLoadBookings(emit),
        cancelBooking: (bookingId) => _onCancelBooking(bookingId, emit),
        processPayment: (orderId, paymentId, signature, bookingId) =>
            _onProcessPayment(orderId, paymentId, signature, bookingId, emit),
        loadBookingDetails: (bookingId) => _onLoadBookingDetails(bookingId, emit),
      );
    });
  }

  Future<void> _onCreateBooking(
    String artistId,
    String serviceId,
    DateTime date,
    String time,
    String? notes,
    int redeemPoints,
    String paymentMethod,
    String? couponCode,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loading());
    try {
      final response = await _repository.createBooking(
        artistId: artistId,
        serviceId: serviceId,
        date: date,
        time: time,
        notes: notes,
        redeemPoints: redeemPoints,
        paymentMethod: paymentMethod,
        couponCode: couponCode,
      );

      if (paymentMethod == 'online') {
        final bookingId = response['id'];
        final totalAmount = (response['total_amount'] as num).toDouble();
        
        // Determine payment type (Deposit or Full)
        // This threshold should ideally come from backend config
        final type = totalAmount >= 5000 ? 'DEPOSIT' : 'FULL_PAYMENT';
        
        final paymentData = await _repository.initiatePayment(
          bookingId: bookingId,
          amount: totalAmount,
          type: type,
        );

        emit(BookingState.paymentRequired(
          orderId: paymentData['order_id'],
          amount: (paymentData['amount'] as num).toDouble() / 100, // Convert paise to rupees
          bookingId: bookingId,
          keyId: paymentData['key_id'],
        ));
      } else {
        emit(const BookingState.success(message: 'Booking created successfully!'));
      }
    } catch (e) {
      emit(BookingState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchBookings(
    bool isArtist,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loading());
    try {
      final bookings = await _repository.listMyBookings(isArtist: isArtist);
      emit(BookingState.loaded(bookings: bookings));
    } catch (e) {
      emit(BookingState.error(message: e.toString()));
    }
  }

  Future<void> _onUpdateStatus(
    String bookingId,
    String status,
    bool isArtist,
    String? note,
    Emitter<BookingState> emit,
  ) async {
    // Optimistic update or reload? Let's reload for now to be safe
    emit(const BookingState.loading());
    try {
      await _repository.updateBookingStatus(
        bookingId: bookingId,
        status: status,
        isArtist: isArtist,
        note: note,
      );
      // Refresh list
      add(BookingEvent.fetchBookings(isArtist: isArtist));
    } catch (e) {
      emit(BookingState.error(message: e.toString()));
    }
  }

  Future<void> _onLoadBookings(Emitter<BookingState> emit) async {
    emit(const BookingState.loading());
    try {
      final bookings = await _repository.listMyBookings(isArtist: false);
      emit(BookingState.bookingsLoaded(bookings: bookings));
    } catch (e) {
      emit(BookingState.error(message: e.toString()));
    }
  }

  Future<void> _onCancelBooking(
    String bookingId,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loading());
    try {
      await _repository.updateBookingStatus(
        bookingId: bookingId,
        status: 'cancelled',
        isArtist: false,
        note: 'Cancelled by customer',
      );
      emit(const BookingState.success(message: 'Booking cancelled successfully'));
      // Reload bookings
      add(const BookingEvent.loadBookings());
    } catch (e) {
      emit(BookingState.error(message: e.toString()));
    }
  }

  Future<void> _onProcessPayment(
    String orderId,
    String paymentId,
    String signature,
    String bookingId,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loading());
    try {
      // Verify payment on backend
      await _repository.verifyPayment(
        orderId: orderId,
        paymentId: paymentId,
        signature: signature,
        bookingId: bookingId,
      );
      emit(const BookingState.success(message: 'Payment successful! Booking confirmed.'));
    } catch (e) {
      emit(BookingState.error(message: 'Payment verification failed: ${e.toString()}'));
    }
  }

  Future<void> _onLoadBookingDetails(
    String bookingId,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loading());
    try {
      final booking = await _repository.getBookingById(bookingId);
      emit(BookingState.bookingDetailsLoaded(booking: booking));
    } catch (e) {
      emit(BookingState.error(message: e.toString()));
    }
  }
}
