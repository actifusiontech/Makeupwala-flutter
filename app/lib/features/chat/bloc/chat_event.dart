part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchRooms() = _FetchRooms;
  const factory ChatEvent.fetchMessages({required String roomId}) = _FetchMessages;
  const factory ChatEvent.sendMessage({required String roomId, required String text}) = _SendMessage;
  const factory ChatEvent.startPolling({required String roomId}) = _StartPolling;
  const factory ChatEvent.stopPolling() = _StopPolling;
}
