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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRooms,
    required TResult Function(String roomId) fetchMessages,
    required TResult Function(String roomId, String text) sendMessage,
    required TResult Function(String roomId) startPolling,
    required TResult Function() stopPolling,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRooms,
    TResult? Function(String roomId)? fetchMessages,
    TResult? Function(String roomId, String text)? sendMessage,
    TResult? Function(String roomId)? startPolling,
    TResult? Function()? stopPolling,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRooms,
    TResult Function(String roomId)? fetchMessages,
    TResult Function(String roomId, String text)? sendMessage,
    TResult Function(String roomId)? startPolling,
    TResult Function()? stopPolling,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRooms value) fetchRooms,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_StartPolling value) startPolling,
    required TResult Function(_StopPolling value) stopPolling,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRooms value)? fetchRooms,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_StartPolling value)? startPolling,
    TResult? Function(_StopPolling value)? stopPolling,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRooms value)? fetchRooms,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_StartPolling value)? startPolling,
    TResult Function(_StopPolling value)? stopPolling,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
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

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchRoomsImplCopyWith<$Res> {
  factory _$$FetchRoomsImplCopyWith(
    _$FetchRoomsImpl value,
    $Res Function(_$FetchRoomsImpl) then,
  ) = __$$FetchRoomsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRoomsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchRoomsImpl>
    implements _$$FetchRoomsImplCopyWith<$Res> {
  __$$FetchRoomsImplCopyWithImpl(
    _$FetchRoomsImpl _value,
    $Res Function(_$FetchRoomsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchRoomsImpl implements _FetchRooms {
  const _$FetchRoomsImpl();

  @override
  String toString() {
    return 'ChatEvent.fetchRooms()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchRoomsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRooms,
    required TResult Function(String roomId) fetchMessages,
    required TResult Function(String roomId, String text) sendMessage,
    required TResult Function(String roomId) startPolling,
    required TResult Function() stopPolling,
  }) {
    return fetchRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRooms,
    TResult? Function(String roomId)? fetchMessages,
    TResult? Function(String roomId, String text)? sendMessage,
    TResult? Function(String roomId)? startPolling,
    TResult? Function()? stopPolling,
  }) {
    return fetchRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRooms,
    TResult Function(String roomId)? fetchMessages,
    TResult Function(String roomId, String text)? sendMessage,
    TResult Function(String roomId)? startPolling,
    TResult Function()? stopPolling,
    required TResult orElse(),
  }) {
    if (fetchRooms != null) {
      return fetchRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRooms value) fetchRooms,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_StartPolling value) startPolling,
    required TResult Function(_StopPolling value) stopPolling,
  }) {
    return fetchRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRooms value)? fetchRooms,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_StartPolling value)? startPolling,
    TResult? Function(_StopPolling value)? stopPolling,
  }) {
    return fetchRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRooms value)? fetchRooms,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_StartPolling value)? startPolling,
    TResult Function(_StopPolling value)? stopPolling,
    required TResult orElse(),
  }) {
    if (fetchRooms != null) {
      return fetchRooms(this);
    }
    return orElse();
  }
}

abstract class _FetchRooms implements ChatEvent {
  const factory _FetchRooms() = _$FetchRoomsImpl;
}

/// @nodoc
abstract class _$$FetchMessagesImplCopyWith<$Res> {
  factory _$$FetchMessagesImplCopyWith(
    _$FetchMessagesImpl value,
    $Res Function(_$FetchMessagesImpl) then,
  ) = __$$FetchMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$FetchMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchMessagesImpl>
    implements _$$FetchMessagesImplCopyWith<$Res> {
  __$$FetchMessagesImplCopyWithImpl(
    _$FetchMessagesImpl _value,
    $Res Function(_$FetchMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? roomId = null}) {
    return _then(
      _$FetchMessagesImpl(
        roomId: null == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FetchMessagesImpl implements _FetchMessages {
  const _$FetchMessagesImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatEvent.fetchMessages(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMessagesImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMessagesImplCopyWith<_$FetchMessagesImpl> get copyWith =>
      __$$FetchMessagesImplCopyWithImpl<_$FetchMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRooms,
    required TResult Function(String roomId) fetchMessages,
    required TResult Function(String roomId, String text) sendMessage,
    required TResult Function(String roomId) startPolling,
    required TResult Function() stopPolling,
  }) {
    return fetchMessages(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRooms,
    TResult? Function(String roomId)? fetchMessages,
    TResult? Function(String roomId, String text)? sendMessage,
    TResult? Function(String roomId)? startPolling,
    TResult? Function()? stopPolling,
  }) {
    return fetchMessages?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRooms,
    TResult Function(String roomId)? fetchMessages,
    TResult Function(String roomId, String text)? sendMessage,
    TResult Function(String roomId)? startPolling,
    TResult Function()? stopPolling,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRooms value) fetchRooms,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_StartPolling value) startPolling,
    required TResult Function(_StopPolling value) stopPolling,
  }) {
    return fetchMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRooms value)? fetchRooms,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_StartPolling value)? startPolling,
    TResult? Function(_StopPolling value)? stopPolling,
  }) {
    return fetchMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRooms value)? fetchRooms,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_StartPolling value)? startPolling,
    TResult Function(_StopPolling value)? stopPolling,
    required TResult orElse(),
  }) {
    if (fetchMessages != null) {
      return fetchMessages(this);
    }
    return orElse();
  }
}

abstract class _FetchMessages implements ChatEvent {
  const factory _FetchMessages({required final String roomId}) =
      _$FetchMessagesImpl;

  String get roomId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchMessagesImplCopyWith<_$FetchMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
    _$SendMessageImpl value,
    $Res Function(_$SendMessageImpl) then,
  ) = __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, String text});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
    _$SendMessageImpl _value,
    $Res Function(_$SendMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? roomId = null, Object? text = null}) {
    return _then(
      _$SendMessageImpl(
        roomId: null == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl({required this.roomId, required this.text});

  @override
  final String roomId;
  @override
  final String text;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(roomId: $roomId, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, text);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRooms,
    required TResult Function(String roomId) fetchMessages,
    required TResult Function(String roomId, String text) sendMessage,
    required TResult Function(String roomId) startPolling,
    required TResult Function() stopPolling,
  }) {
    return sendMessage(roomId, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRooms,
    TResult? Function(String roomId)? fetchMessages,
    TResult? Function(String roomId, String text)? sendMessage,
    TResult? Function(String roomId)? startPolling,
    TResult? Function()? stopPolling,
  }) {
    return sendMessage?.call(roomId, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRooms,
    TResult Function(String roomId)? fetchMessages,
    TResult Function(String roomId, String text)? sendMessage,
    TResult Function(String roomId)? startPolling,
    TResult Function()? stopPolling,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(roomId, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRooms value) fetchRooms,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_StartPolling value) startPolling,
    required TResult Function(_StopPolling value) stopPolling,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRooms value)? fetchRooms,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_StartPolling value)? startPolling,
    TResult? Function(_StopPolling value)? stopPolling,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRooms value)? fetchRooms,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_StartPolling value)? startPolling,
    TResult Function(_StopPolling value)? stopPolling,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage({
    required final String roomId,
    required final String text,
  }) = _$SendMessageImpl;

  String get roomId;
  String get text;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartPollingImplCopyWith<$Res> {
  factory _$$StartPollingImplCopyWith(
    _$StartPollingImpl value,
    $Res Function(_$StartPollingImpl) then,
  ) = __$$StartPollingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId});
}

/// @nodoc
class __$$StartPollingImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartPollingImpl>
    implements _$$StartPollingImplCopyWith<$Res> {
  __$$StartPollingImplCopyWithImpl(
    _$StartPollingImpl _value,
    $Res Function(_$StartPollingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? roomId = null}) {
    return _then(
      _$StartPollingImpl(
        roomId: null == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StartPollingImpl implements _StartPolling {
  const _$StartPollingImpl({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatEvent.startPolling(roomId: $roomId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPollingImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPollingImplCopyWith<_$StartPollingImpl> get copyWith =>
      __$$StartPollingImplCopyWithImpl<_$StartPollingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRooms,
    required TResult Function(String roomId) fetchMessages,
    required TResult Function(String roomId, String text) sendMessage,
    required TResult Function(String roomId) startPolling,
    required TResult Function() stopPolling,
  }) {
    return startPolling(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRooms,
    TResult? Function(String roomId)? fetchMessages,
    TResult? Function(String roomId, String text)? sendMessage,
    TResult? Function(String roomId)? startPolling,
    TResult? Function()? stopPolling,
  }) {
    return startPolling?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRooms,
    TResult Function(String roomId)? fetchMessages,
    TResult Function(String roomId, String text)? sendMessage,
    TResult Function(String roomId)? startPolling,
    TResult Function()? stopPolling,
    required TResult orElse(),
  }) {
    if (startPolling != null) {
      return startPolling(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRooms value) fetchRooms,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_StartPolling value) startPolling,
    required TResult Function(_StopPolling value) stopPolling,
  }) {
    return startPolling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRooms value)? fetchRooms,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_StartPolling value)? startPolling,
    TResult? Function(_StopPolling value)? stopPolling,
  }) {
    return startPolling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRooms value)? fetchRooms,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_StartPolling value)? startPolling,
    TResult Function(_StopPolling value)? stopPolling,
    required TResult orElse(),
  }) {
    if (startPolling != null) {
      return startPolling(this);
    }
    return orElse();
  }
}

abstract class _StartPolling implements ChatEvent {
  const factory _StartPolling({required final String roomId}) =
      _$StartPollingImpl;

  String get roomId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartPollingImplCopyWith<_$StartPollingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopPollingImplCopyWith<$Res> {
  factory _$$StopPollingImplCopyWith(
    _$StopPollingImpl value,
    $Res Function(_$StopPollingImpl) then,
  ) = __$$StopPollingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopPollingImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StopPollingImpl>
    implements _$$StopPollingImplCopyWith<$Res> {
  __$$StopPollingImplCopyWithImpl(
    _$StopPollingImpl _value,
    $Res Function(_$StopPollingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopPollingImpl implements _StopPolling {
  const _$StopPollingImpl();

  @override
  String toString() {
    return 'ChatEvent.stopPolling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopPollingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchRooms,
    required TResult Function(String roomId) fetchMessages,
    required TResult Function(String roomId, String text) sendMessage,
    required TResult Function(String roomId) startPolling,
    required TResult Function() stopPolling,
  }) {
    return stopPolling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchRooms,
    TResult? Function(String roomId)? fetchMessages,
    TResult? Function(String roomId, String text)? sendMessage,
    TResult? Function(String roomId)? startPolling,
    TResult? Function()? stopPolling,
  }) {
    return stopPolling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchRooms,
    TResult Function(String roomId)? fetchMessages,
    TResult Function(String roomId, String text)? sendMessage,
    TResult Function(String roomId)? startPolling,
    TResult Function()? stopPolling,
    required TResult orElse(),
  }) {
    if (stopPolling != null) {
      return stopPolling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRooms value) fetchRooms,
    required TResult Function(_FetchMessages value) fetchMessages,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_StartPolling value) startPolling,
    required TResult Function(_StopPolling value) stopPolling,
  }) {
    return stopPolling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRooms value)? fetchRooms,
    TResult? Function(_FetchMessages value)? fetchMessages,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_StartPolling value)? startPolling,
    TResult? Function(_StopPolling value)? stopPolling,
  }) {
    return stopPolling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRooms value)? fetchRooms,
    TResult Function(_FetchMessages value)? fetchMessages,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_StartPolling value)? startPolling,
    TResult Function(_StopPolling value)? stopPolling,
    required TResult orElse(),
  }) {
    if (stopPolling != null) {
      return stopPolling(this);
    }
    return orElse();
  }
}

abstract class _StopPolling implements ChatEvent {
  const factory _StopPolling() = _$StopPollingImpl;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> rooms) roomsLoaded,
    required TResult Function(List<dynamic> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> rooms)? roomsLoaded,
    TResult? Function(List<dynamic> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> rooms)? roomsLoaded,
    TResult Function(List<dynamic> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RoomsLoaded value) roomsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RoomsLoaded value)? roomsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RoomsLoaded value)? roomsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
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

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(List<dynamic> rooms) roomsLoaded,
    required TResult Function(List<dynamic> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> rooms)? roomsLoaded,
    TResult? Function(List<dynamic> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> rooms)? roomsLoaded,
    TResult Function(List<dynamic> messages)? messagesLoaded,
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
    required TResult Function(_RoomsLoaded value) roomsLoaded,
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
    TResult? Function(_RoomsLoaded value)? roomsLoaded,
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
    TResult Function(_RoomsLoaded value)? roomsLoaded,
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
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(List<dynamic> rooms) roomsLoaded,
    required TResult Function(List<dynamic> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> rooms)? roomsLoaded,
    TResult? Function(List<dynamic> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> rooms)? roomsLoaded,
    TResult Function(List<dynamic> messages)? messagesLoaded,
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
    required TResult Function(_RoomsLoaded value) roomsLoaded,
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
    TResult? Function(_RoomsLoaded value)? roomsLoaded,
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
    TResult Function(_RoomsLoaded value)? roomsLoaded,
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
abstract class _$$RoomsLoadedImplCopyWith<$Res> {
  factory _$$RoomsLoadedImplCopyWith(
    _$RoomsLoadedImpl value,
    $Res Function(_$RoomsLoadedImpl) then,
  ) = __$$RoomsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> rooms});
}

/// @nodoc
class __$$RoomsLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$RoomsLoadedImpl>
    implements _$$RoomsLoadedImplCopyWith<$Res> {
  __$$RoomsLoadedImplCopyWithImpl(
    _$RoomsLoadedImpl _value,
    $Res Function(_$RoomsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rooms = null}) {
    return _then(
      _$RoomsLoadedImpl(
        rooms: null == rooms
            ? _value._rooms
            : rooms // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$RoomsLoadedImpl implements _RoomsLoaded {
  const _$RoomsLoadedImpl({required final List<dynamic> rooms})
    : _rooms = rooms;

  final List<dynamic> _rooms;
  @override
  List<dynamic> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'ChatState.roomsLoaded(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsLoadedImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsLoadedImplCopyWith<_$RoomsLoadedImpl> get copyWith =>
      __$$RoomsLoadedImplCopyWithImpl<_$RoomsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> rooms) roomsLoaded,
    required TResult Function(List<dynamic> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return roomsLoaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> rooms)? roomsLoaded,
    TResult? Function(List<dynamic> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return roomsLoaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> rooms)? roomsLoaded,
    TResult Function(List<dynamic> messages)? messagesLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (roomsLoaded != null) {
      return roomsLoaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_RoomsLoaded value) roomsLoaded,
    required TResult Function(_MessagesLoaded value) messagesLoaded,
    required TResult Function(_Error value) error,
  }) {
    return roomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_RoomsLoaded value)? roomsLoaded,
    TResult? Function(_MessagesLoaded value)? messagesLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return roomsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_RoomsLoaded value)? roomsLoaded,
    TResult Function(_MessagesLoaded value)? messagesLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (roomsLoaded != null) {
      return roomsLoaded(this);
    }
    return orElse();
  }
}

abstract class _RoomsLoaded implements ChatState {
  const factory _RoomsLoaded({required final List<dynamic> rooms}) =
      _$RoomsLoadedImpl;

  List<dynamic> get rooms;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomsLoadedImplCopyWith<_$RoomsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessagesLoadedImplCopyWith<$Res> {
  factory _$$MessagesLoadedImplCopyWith(
    _$MessagesLoadedImpl value,
    $Res Function(_$MessagesLoadedImpl) then,
  ) = __$$MessagesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> messages});
}

/// @nodoc
class __$$MessagesLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessagesLoadedImpl>
    implements _$$MessagesLoadedImplCopyWith<$Res> {
  __$$MessagesLoadedImplCopyWithImpl(
    _$MessagesLoadedImpl _value,
    $Res Function(_$MessagesLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$MessagesLoadedImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$MessagesLoadedImpl implements _MessagesLoaded {
  const _$MessagesLoadedImpl({required final List<dynamic> messages})
    : _messages = messages;

  final List<dynamic> _messages;
  @override
  List<dynamic> get messages {
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

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagesLoadedImplCopyWith<_$MessagesLoadedImpl> get copyWith =>
      __$$MessagesLoadedImplCopyWithImpl<_$MessagesLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> rooms) roomsLoaded,
    required TResult Function(List<dynamic> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return messagesLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> rooms)? roomsLoaded,
    TResult? Function(List<dynamic> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return messagesLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> rooms)? roomsLoaded,
    TResult Function(List<dynamic> messages)? messagesLoaded,
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
    required TResult Function(_RoomsLoaded value) roomsLoaded,
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
    TResult? Function(_RoomsLoaded value)? roomsLoaded,
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
    TResult Function(_RoomsLoaded value)? roomsLoaded,
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
  const factory _MessagesLoaded({required final List<dynamic> messages}) =
      _$MessagesLoadedImpl;

  List<dynamic> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagesLoadedImplCopyWith<_$MessagesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
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

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> rooms) roomsLoaded,
    required TResult Function(List<dynamic> messages) messagesLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> rooms)? roomsLoaded,
    TResult? Function(List<dynamic> messages)? messagesLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> rooms)? roomsLoaded,
    TResult Function(List<dynamic> messages)? messagesLoaded,
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
    required TResult Function(_RoomsLoaded value) roomsLoaded,
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
    TResult? Function(_RoomsLoaded value)? roomsLoaded,
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
    TResult Function(_RoomsLoaded value)? roomsLoaded,
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

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
