import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/studio_repository.dart';
import 'studio_booking_manager_event.dart';
import 'studio_booking_manager_state.dart';

class StudioBookingManagerBloc extends Bloc<StudioBookingManagerEvent, StudioBookingManagerState> {
  final StudioRepository repository;
  String? _currentStudioId;

  StudioBookingManagerBloc({required this.repository}) : super(const StudioBookingManagerState.initial()) {
    on<StudioBookingManagerEvent>((event, emit) async {
      await event.when(
        loadBookings: (studioId) async {
          _currentStudioId = studioId;
          emit(const StudioBookingManagerState.loading());
          try {
            final bookings = await repository.getStudioBookings(studioId);
            emit(StudioBookingManagerState.loaded(bookings));
          } catch (e) {
            emit(StudioBookingManagerState.error(e.toString()));
          }
        },
        updateBookingStatus: (bookingId, status) async {
          emit(const StudioBookingManagerState.loading());
          try {
            await repository.updateBookingStatus(bookingId, status);
            emit(StudioBookingManagerState.actionSuccess('Booking $status successfully!'));
            if (_currentStudioId != null) {
              add(StudioBookingManagerEvent.loadBookings(_currentStudioId!));
            }
          } catch (e) {
            emit(StudioBookingManagerState.error(e.toString()));
          }
        },
      );
    });
  }
}
