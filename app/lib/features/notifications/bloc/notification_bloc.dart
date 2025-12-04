import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/notification_repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _repository;

  NotificationBloc({NotificationRepository? repository})
      : _repository = repository ?? NotificationRepository(),
        super(const NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.when(
        fetchNotifications: () => _onFetchNotifications(emit),
        markRead: (id) => _onMarkRead(id, emit),
      );
    });
  }

  Future<void> _onFetchNotifications(Emitter<NotificationState> emit) async {
    emit(const NotificationState.loading());
    try {
      final notifications = await _repository.getNotifications();
      emit(NotificationState.loaded(notifications: notifications));
    } catch (e) {
      emit(NotificationState.error(message: e.toString()));
    }
  }

  Future<void> _onMarkRead(String id, Emitter<NotificationState> emit) async {
    try {
      await _repository.markAsRead(id);
      // Optimistic update or re-fetch could be done here
      add(const NotificationEvent.fetchNotifications());
    } catch (e) {
      // Silently fail or show snackbar
    }
  }
}
