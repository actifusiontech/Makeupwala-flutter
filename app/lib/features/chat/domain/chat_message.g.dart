// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String,
      senderId: json['sender_id'] as String,
      receiverId: json['receiver_id'] as String,
      text: json['text'] as String,
      imageUrl: json['image_url'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isRead: json['is_read'] as bool? ?? false,
      type: json['type'] as String? ?? 'text',
      senderName: json['sender_name'] as String?,
      senderAvatar: json['sender_avatar'] as String?,
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'text': instance.text,
      'image_url': instance.imageUrl,
      'timestamp': instance.timestamp.toIso8601String(),
      'is_read': instance.isRead,
      'type': instance.type,
      'sender_name': instance.senderName,
      'sender_avatar': instance.senderAvatar,
    };

_$ChatConversationImpl _$$ChatConversationImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatConversationImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      userAvatar: json['user_avatar'] as String?,
      lastMessage: json['last_message'] as String?,
      lastMessageTime: json['last_message_time'] == null
          ? null
          : DateTime.parse(json['last_message_time'] as String),
      unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ChatConversationImplToJson(
        _$ChatConversationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_avatar': instance.userAvatar,
      'last_message': instance.lastMessage,
      'last_message_time': instance.lastMessageTime?.toIso8601String(),
      'unread_count': instance.unreadCount,
    };
