// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchConversationsImplCopyWith<$Res> {
  factory _$$FetchConversationsImplCopyWith(_$FetchConversationsImpl value,
          $Res Function(_$FetchConversationsImpl) then) =
      __$$FetchConversationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchConversationsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchConversationsImpl>
    implements _$$FetchConversationsImplCopyWith<$Res> {
  __$$FetchConversationsImplCopyWithImpl(_$FetchConversationsImpl _value,
      $Res Function(_$FetchConversationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchConversationsImpl implements _FetchConversations {
  const _$FetchConversationsImpl();

  @override
  String toString() {
    return 'ChatEvent.fetchConversations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchConversationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return fetchConversations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return fetchConversations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchConversations != null) {
      return fetchConversations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return fetchConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return fetchConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchConversations != null) {
      return fetchConversations(this);
    }
    return orElse();
  }
}

abstract class _FetchConversations implements ChatEvent {
  const factory _FetchConversations() = _$FetchConversationsImpl;
}

/// @nodoc
abstract class _$$ConversationsUpdatedImplCopyWith<$Res> {
  factory _$$ConversationsUpdatedImplCopyWith(_$ConversationsUpdatedImpl value,
          $Res Function(_$ConversationsUpdatedImpl) then) =
      __$$ConversationsUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatConversation> conversations});
}

/// @nodoc
class __$$ConversationsUpdatedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ConversationsUpdatedImpl>
    implements _$$ConversationsUpdatedImplCopyWith<$Res> {
  __$$ConversationsUpdatedImplCopyWithImpl(_$ConversationsUpdatedImpl _value,
      $Res Function(_$ConversationsUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$ConversationsUpdatedImpl(
      null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ChatConversation>,
    ));
  }
}

/// @nodoc

class _$ConversationsUpdatedImpl implements _ConversationsUpdated {
  const _$ConversationsUpdatedImpl(final List<ChatConversation> conversations)
      : _conversations = conversations;

  final List<ChatConversation> _conversations;
  @override
  List<ChatConversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatEvent.conversationsUpdated(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationsUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationsUpdatedImplCopyWith<_$ConversationsUpdatedImpl>
      get copyWith =>
          __$$ConversationsUpdatedImplCopyWithImpl<_$ConversationsUpdatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return conversationsUpdated(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return conversationsUpdated?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (conversationsUpdated != null) {
      return conversationsUpdated(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return conversationsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return conversationsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (conversationsUpdated != null) {
      return conversationsUpdated(this);
    }
    return orElse();
  }
}

abstract class _ConversationsUpdated implements ChatEvent {
  const factory _ConversationsUpdated(
      final List<ChatConversation> conversations) = _$ConversationsUpdatedImpl;

  List<ChatConversation> get conversations;
  @JsonKey(ignore: true)
  _$$ConversationsUpdatedImplCopyWith<_$ConversationsUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMessagesImplCopyWith<$Res> {
  factory _$$FetchMessagesImplCopyWith(
          _$FetchMessagesImpl value, $Res Function(_$FetchMessagesImpl) then) =
      __$$FetchMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otherUserId});
}

/// @nodoc
class __$$FetchMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchMessagesImpl>
    implements _$$FetchMessagesImplCopyWith<$Res> {
  __$$FetchMessagesImplCopyWithImpl(
      _$FetchMessagesImpl _value, $Res Function(_$FetchMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherUserId = null,
  }) {
    return _then(_$FetchMessagesImpl(
      otherUserId: null == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchMessagesImpl implements _FetchMessages {
  const _$FetchMessagesImpl({required this.otherUserId});

  @override
  final String otherUserId;

  @override
  String toString() {
    return 'ChatEvent.fetchMessages(otherUserId: $otherUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMessagesImpl &&
            (identical(other.otherUserId, otherUserId) ||
                other.otherUserId == otherUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otherUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMessagesImplCopyWith<_$FetchMessagesImpl> get copyWith =>
      __$$FetchMessagesImplCopyWithImpl<_$FetchMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return fetchMessages(otherUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return fetchMessages?.call(otherUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(otherUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return fetchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return fetchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(this);
    }
    return orElse();
  }
}

abstract class _FetchMessages implements ChatEvent {
  const factory _FetchMessages({required final String otherUserId}) =
      _$FetchMessagesImpl;

  String get otherUserId;
  @JsonKey(ignore: true)
  _$$FetchMessagesImplCopyWith<_$FetchMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesUpdatedImplCopyWith<$Res> {
  factory _$$MessagesUpdatedImplCopyWith(_$MessagesUpdatedImpl value,
          $Res Function(_$MessagesUpdatedImpl) then) =
      __$$MessagesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$$MessagesUpdatedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessagesUpdatedImpl>
    implements _$$MessagesUpdatedImplCopyWith<$Res> {
  __$$MessagesUpdatedImplCopyWithImpl(
      _$MessagesUpdatedImpl _value, $Res Function(_$MessagesUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessagesUpdatedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$MessagesUpdatedImpl implements _MessagesUpdated {
  const _$MessagesUpdatedImpl(final List<ChatMessage> messages)
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatEvent.messagesUpdated(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesUpdatedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesUpdatedImplCopyWith<_$MessagesUpdatedImpl> get copyWith =>
      __$$MessagesUpdatedImplCopyWithImpl<_$MessagesUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return messagesUpdated(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return messagesUpdated?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (messagesUpdated != null) {
      return messagesUpdated(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return messagesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return messagesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (messagesUpdated != null) {
      return messagesUpdated(this);
    }
    return orElse();
  }
}

abstract class _MessagesUpdated implements ChatEvent {
  const factory _MessagesUpdated(final List<ChatMessage> messages) =
      _$MessagesUpdatedImpl;

  List<ChatMessage> get messages;
  @JsonKey(ignore: true)
  _$$MessagesUpdatedImplCopyWith<_$MessagesUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String receiverId,
      String text,
      String? senderName,
      String? senderAvatar});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? text = null,
    Object? senderName = freezed,
    Object? senderAvatar = freezed,
  }) {
    return _then(_$SendMessageImpl(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderAvatar: freezed == senderAvatar
          ? _value.senderAvatar
          : senderAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(
      {required this.receiverId,
      required this.text,
      this.senderName,
      this.senderAvatar});

  @override
  final String receiverId;
  @override
  final String text;
  @override
  final String? senderName;
  @override
  final String? senderAvatar;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(receiverId: $receiverId, text: $text, senderName: $senderName, senderAvatar: $senderAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderAvatar, senderAvatar) ||
                other.senderAvatar == senderAvatar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, receiverId, text, senderName, senderAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return sendMessage(receiverId, text, senderName, senderAvatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return sendMessage?.call(receiverId, text, senderName, senderAvatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(receiverId, text, senderName, senderAvatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(
      {required final String receiverId,
      required final String text,
      final String? senderName,
      final String? senderAvatar}) = _$SendMessageImpl;

  String get receiverId;
  String get text;
  String? get senderName;
  String? get senderAvatar;
  @JsonKey(ignore: true)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImageImplCopyWith<$Res> {
  factory _$$SendImageImplCopyWith(
          _$SendImageImpl value, $Res Function(_$SendImageImpl) then) =
      __$$SendImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String receiverId,
      File image,
      String? senderName,
      String? senderAvatar});
}

/// @nodoc
class __$$SendImageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendImageImpl>
    implements _$$SendImageImplCopyWith<$Res> {
  __$$SendImageImplCopyWithImpl(
      _$SendImageImpl _value, $Res Function(_$SendImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverId = null,
    Object? image = null,
    Object? senderName = freezed,
    Object? senderAvatar = freezed,
  }) {
    return _then(_$SendImageImpl(
      receiverId: null == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderAvatar: freezed == senderAvatar
          ? _value.senderAvatar
          : senderAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SendImageImpl implements _SendImage {
  const _$SendImageImpl(
      {required this.receiverId,
      required this.image,
      this.senderName,
      this.senderAvatar});

  @override
  final String receiverId;
  @override
  final File image;
  @override
  final String? senderName;
  @override
  final String? senderAvatar;

  @override
  String toString() {
    return 'ChatEvent.sendImage(receiverId: $receiverId, image: $image, senderName: $senderName, senderAvatar: $senderAvatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageImpl &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderAvatar, senderAvatar) ||
                other.senderAvatar == senderAvatar));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, receiverId, image, senderName, senderAvatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      __$$SendImageImplCopyWithImpl<_$SendImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return sendImage(receiverId, image, senderName, senderAvatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return sendImage?.call(receiverId, image, senderName, senderAvatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(receiverId, image, senderName, senderAvatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return sendImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return sendImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (sendImage != null) {
      return sendImage(this);
    }
    return orElse();
  }
}

abstract class _SendImage implements ChatEvent {
  const factory _SendImage(
      {required final String receiverId,
      required final File image,
      final String? senderName,
      final String? senderAvatar}) = _$SendImageImpl;

  String get receiverId;
  File get image;
  String? get senderName;
  String? get senderAvatar;
  @JsonKey(ignore: true)
  _$$SendImageImplCopyWith<_$SendImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
          _$MarkAsReadImpl value, $Res Function(_$MarkAsReadImpl) then) =
      __$$MarkAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otherUserId});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MarkAsReadImpl>
    implements _$$MarkAsReadImplCopyWith<$Res> {
  __$$MarkAsReadImplCopyWithImpl(
      _$MarkAsReadImpl _value, $Res Function(_$MarkAsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherUserId = null,
  }) {
    return _then(_$MarkAsReadImpl(
      otherUserId: null == otherUserId
          ? _value.otherUserId
          : otherUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsReadImpl implements _MarkAsRead {
  const _$MarkAsReadImpl({required this.otherUserId});

  @override
  final String otherUserId;

  @override
  String toString() {
    return 'ChatEvent.markAsRead(otherUserId: $otherUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadImpl &&
            (identical(other.otherUserId, otherUserId) ||
                other.otherUserId == otherUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otherUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      __$$MarkAsReadImplCopyWithImpl<_$MarkAsReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchConversations,
    required TResult Function(List<ChatConversation> conversations)
        conversationsUpdated,
    required TResult Function(String otherUserId) fetchMessages,
    required TResult Function(List<ChatMessage> messages) messagesUpdated,
    required TResult Function(String receiverId, String text,
            String? senderName, String? senderAvatar)
        sendMessage,
    required TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)
        sendImage,
    required TResult Function(String otherUserId) markAsRead,
  }) {
    return markAsRead(otherUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchConversations,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult? Function(String otherUserId)? fetchMessages,
    TResult? Function(List<ChatMessage> messages)? messagesUpdated,
    TResult? Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult? Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult? Function(String otherUserId)? markAsRead,
  }) {
    return markAsRead?.call(otherUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchConversations,
    TResult Function(List<ChatConversation> conversations)?
        conversationsUpdated,
    TResult Function(String otherUserId)? fetchMessages,
    TResult Function(List<ChatMessage> messages)? messagesUpdated,
    TResult Function(String receiverId, String text, String? senderName,
            String? senderAvatar)?
        sendMessage,
    TResult Function(String receiverId, File image, String? senderName,
            String? senderAvatar)?
        sendImage,
    TResult Function(String otherUserId)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(otherUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchConversations value) fetchConversations,
    required TResult Function(_ConversationsUpdated value) conversationsUpdated,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_MessagesUpdated value) messagesUpdated,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_SendImage value) sendImage,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchConversations value)? fetchConversations,
    TResult? Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_MessagesUpdated value)? messagesUpdated,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_SendImage value)? sendImage,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchConversations value)? fetchConversations,
    TResult Function(_ConversationsUpdated value)? conversationsUpdated,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_MessagesUpdated value)? messagesUpdated,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_SendImage value)? sendImage,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements ChatEvent {
  const factory _MarkAsRead({required final String otherUserId}) =
      _$MarkAsReadImpl;

  String get otherUserId;
  @JsonKey(ignore: true)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatConversation> conversations)
        conversationsLoaded,
    required TResult Function(List<ChatMessage> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsLoaded,
    TResult? Function(List<ChatMessage> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatConversation> conversations)? conversationsLoaded,
    TResult Function(List<ChatMessage> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ConversationsLoaded value) conversationsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatConversation> conversations)
        conversationsLoaded,
    required TResult Function(List<ChatMessage> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsLoaded,
    TResult? Function(List<ChatMessage> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatConversation> conversations)? conversationsLoaded,
    TResult Function(List<ChatMessage> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ConversationsLoaded value) conversationsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatConversation> conversations)
        conversationsLoaded,
    required TResult Function(List<ChatMessage> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsLoaded,
    TResult? Function(List<ChatMessage> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatConversation> conversations)? conversationsLoaded,
    TResult Function(List<ChatMessage> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ConversationsLoaded value) conversationsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ConversationsLoadedImplCopyWith<$Res> {
  factory _$$ConversationsLoadedImplCopyWith(_$ConversationsLoadedImpl value,
          $Res Function(_$ConversationsLoadedImpl) then) =
      __$$ConversationsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatConversation> conversations});
}

/// @nodoc
class __$$ConversationsLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ConversationsLoadedImpl>
    implements _$$ConversationsLoadedImplCopyWith<$Res> {
  __$$ConversationsLoadedImplCopyWithImpl(_$ConversationsLoadedImpl _value,
      $Res Function(_$ConversationsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$ConversationsLoadedImpl(
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ChatConversation>,
    ));
  }
}

/// @nodoc

class _$ConversationsLoadedImpl implements _ConversationsLoaded {
  const _$ConversationsLoadedImpl(
      {required final List<ChatConversation> conversations})
      : _conversations = conversations;

  final List<ChatConversation> _conversations;
  @override
  List<ChatConversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'ChatState.conversationsLoaded(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationsLoadedImplCopyWith<_$ConversationsLoadedImpl> get copyWith =>
      __$$ConversationsLoadedImplCopyWithImpl<_$ConversationsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatConversation> conversations)
        conversationsLoaded,
    required TResult Function(List<ChatMessage> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return conversationsLoaded(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsLoaded,
    TResult? Function(List<ChatMessage> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return conversationsLoaded?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatConversation> conversations)? conversationsLoaded,
    TResult Function(List<ChatMessage> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (conversationsLoaded != null) {
      return conversationsLoaded(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ConversationsLoaded value) conversationsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return conversationsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return conversationsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (conversationsLoaded != null) {
      return conversationsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ConversationsLoaded implements ChatState {
  const factory _ConversationsLoaded(
          {required final List<ChatConversation> conversations}) =
      _$ConversationsLoadedImpl;

  List<ChatConversation> get conversations;
  @JsonKey(ignore: true)
  _$$ConversationsLoadedImplCopyWith<_$ConversationsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesLoadedImplCopyWith<$Res> {
  factory _$$MessagesLoadedImplCopyWith(_$MessagesLoadedImpl value,
          $Res Function(_$MessagesLoadedImpl) then) =
      __$$MessagesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$$MessagesLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessagesLoadedImpl>
    implements _$$MessagesLoadedImplCopyWith<$Res> {
  __$$MessagesLoadedImplCopyWithImpl(
      _$MessagesLoadedImpl _value, $Res Function(_$MessagesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessagesLoadedImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$MessagesLoadedImpl implements _MessagesLoaded {
  const _$MessagesLoadedImpl({required final List<ChatMessage> messages})
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.messagesLoaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagesLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesLoadedImplCopyWith<_$MessagesLoadedImpl> get copyWith =>
      __$$MessagesLoadedImplCopyWithImpl<_$MessagesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatConversation> conversations)
        conversationsLoaded,
    required TResult Function(List<ChatMessage> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return messagesLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsLoaded,
    TResult? Function(List<ChatMessage> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return messagesLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatConversation> conversations)? conversationsLoaded,
    TResult Function(List<ChatMessage> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (messagesLoaded != null) {
      return messagesLoaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ConversationsLoaded value) conversationsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return messagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return messagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (messagesLoaded != null) {
      return messagesLoaded(this);
    }
    return orElse();
  }
}

abstract class _MessagesLoaded implements ChatState {
  const factory _MessagesLoaded({required final List<ChatMessage> messages}) =
      _$MessagesLoadedImpl;

  List<ChatMessage> get messages;
  @JsonKey(ignore: true)
  _$$MessagesLoadedImplCopyWith<_$MessagesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChatConversation> conversations)
        conversationsLoaded,
    required TResult Function(List<ChatMessage> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChatConversation> conversations)?
        conversationsLoaded,
    TResult? Function(List<ChatMessage> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChatConversation> conversations)? conversationsLoaded,
    TResult Function(List<ChatMessage> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ConversationsLoaded value) conversationsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ConversationsLoaded value)? conversationsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
