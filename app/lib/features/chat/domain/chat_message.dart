import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String senderId,
    required String receiverId,
    required String text,
    String? imageUrl,
    required DateTime timestamp,
    @Default(false) bool isRead,
    @Default('text') String type, // 'text', 'image', 'system'
    String? senderName,
    String? senderAvatar,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

@freezed
class ChatConversation with _$ChatConversation {
  const factory ChatConversation({
    required String id,
    required String userId,
    required String userName,
    String? userAvatar,
    String? lastMessage,
    DateTime? lastMessageTime,
    @Default(0) int unreadCount,
  }) = _ChatConversation;

  factory ChatConversation.fromJson(Map<String, dynamic> json) =>
      _$ChatConversationFromJson(json);
}
