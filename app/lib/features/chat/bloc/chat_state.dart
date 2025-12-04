part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.roomsLoaded({required List<dynamic> rooms}) = _RoomsLoaded;
  const factory ChatState.messagesLoaded({required List<dynamic> messages}) = _MessagesLoaded;
  const factory ChatState.error({required String message}) = _Error;
}
