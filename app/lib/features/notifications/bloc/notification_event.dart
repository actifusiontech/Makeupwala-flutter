part of 'notification_bloc.dart';

@freezed
abstract class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetchNotifications() = _FetchNotifications;
  const factory NotificationEvent.markRead({required String id}) = _MarkRead;
}
