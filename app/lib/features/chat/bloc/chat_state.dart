part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.conversationsLoaded({required List<ChatConversation> conversations}) = _ConversationsLoaded;
  const factory ChatState.messagesLoaded({required List<ChatMessage> messages}) = _MessagesLoaded;
  const factory ChatState.error({required String message}) = _Error;
}
