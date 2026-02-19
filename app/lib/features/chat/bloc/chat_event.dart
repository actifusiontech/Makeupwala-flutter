part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchConversations() = _FetchConversations;
  const factory ChatEvent.conversationsUpdated(List<ChatConversation> conversations) = _ConversationsUpdated;
  
  const factory ChatEvent.fetchMessages({required String otherUserId}) = _FetchMessages;
  const factory ChatEvent.messagesUpdated(List<ChatMessage> messages) = _MessagesUpdated;
  
  const factory ChatEvent.sendMessage({
    required String receiverId,
    required String text,
    String? senderName,
    String? senderAvatar,
  }) = _SendMessage;
  
  const factory ChatEvent.sendImage({
    required String receiverId,
    required File image,
    String? senderName,
    String? senderAvatar,
  }) = _SendImage;
  
  const factory ChatEvent.markAsRead({required String otherUserId}) = _MarkAsRead;
}
