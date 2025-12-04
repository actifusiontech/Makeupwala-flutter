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
        createBooking: (artistId, serviceId, date, time, notes) =>
            _onCreateBooking(artistId, serviceId, date, time, notes, emit),
        fetchBookings: (isArtist) => _onFetchBookings(isArtist, emit),
        updateStatus: (bookingId, status, isArtist, note) =>
            _onUpdateStatus(bookingId, status, isArtist, note, emit),
      );
    });
  }

  Future<void> _onCreateBooking(
    String artistId,
    String serviceId,
    DateTime date,
    String time,
    String? notes,
    Emitter<BookingState> emit,
  ) async {
    emit(const BookingState.loading());
    try {
      await _repository.createBooking(
        artistId: artistId,
        serviceId: serviceId,
        date: date,
        time: time,
        notes: notes,
      );
      emit(const BookingState.success(message: 'Booking created successfully!'));
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
}
