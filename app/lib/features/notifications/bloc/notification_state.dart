part of 'notification_bloc.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded({required List<NotificationModel> notifications}) = _Loaded;
  const factory NotificationState.error({required String message}) = _Error;
}
