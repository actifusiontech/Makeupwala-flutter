// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchRooms value)?  fetchRooms,TResult Function( _FetchMessages value)?  fetchMessages,TResult Function( _SendMessage value)?  sendMessage,TResult Function( _StartPolling value)?  startPolling,TResult Function( _StopPolling value)?  stopPolling,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchRooms() when fetchRooms != null:
return fetchRooms(_that);case _FetchMessages() when fetchMessages != null:
return fetchMessages(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _StartPolling() when startPolling != null:
return startPolling(_that);case _StopPolling() when stopPolling != null:
return stopPolling(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchRooms value)  fetchRooms,required TResult Function( _FetchMessages value)  fetchMessages,required TResult Function( _SendMessage value)  sendMessage,required TResult Function( _StartPolling value)  startPolling,required TResult Function( _StopPolling value)  stopPolling,}){
final _that = this;
switch (_that) {
case _FetchRooms():
return fetchRooms(_that);case _FetchMessages():
return fetchMessages(_that);case _SendMessage():
return sendMessage(_that);case _StartPolling():
return startPolling(_that);case _StopPolling():
return stopPolling(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchRooms value)?  fetchRooms,TResult? Function( _FetchMessages value)?  fetchMessages,TResult? Function( _SendMessage value)?  sendMessage,TResult? Function( _StartPolling value)?  startPolling,TResult? Function( _StopPolling value)?  stopPolling,}){
final _that = this;
switch (_that) {
case _FetchRooms() when fetchRooms != null:
return fetchRooms(_that);case _FetchMessages() when fetchMessages != null:
return fetchMessages(_that);case _SendMessage() when sendMessage != null:
return sendMessage(_that);case _StartPolling() when startPolling != null:
return startPolling(_that);case _StopPolling() when stopPolling != null:
return stopPolling(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchRooms,TResult Function( String roomId)?  fetchMessages,TResult Function( String roomId,  String text)?  sendMessage,TResult Function( String roomId)?  startPolling,TResult Function()?  stopPolling,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchRooms() when fetchRooms != null:
return fetchRooms();case _FetchMessages() when fetchMessages != null:
return fetchMessages(_that.roomId);case _SendMessage() when sendMessage != null:
return sendMessage(_that.roomId,_that.text);case _StartPolling() when startPolling != null:
return startPolling(_that.roomId);case _StopPolling() when stopPolling != null:
return stopPolling();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchRooms,required TResult Function( String roomId)  fetchMessages,required TResult Function( String roomId,  String text)  sendMessage,required TResult Function( String roomId)  startPolling,required TResult Function()  stopPolling,}) {final _that = this;
switch (_that) {
case _FetchRooms():
return fetchRooms();case _FetchMessages():
return fetchMessages(_that.roomId);case _SendMessage():
return sendMessage(_that.roomId,_that.text);case _StartPolling():
return startPolling(_that.roomId);case _StopPolling():
return stopPolling();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchRooms,TResult? Function( String roomId)?  fetchMessages,TResult? Function( String roomId,  String text)?  sendMessage,TResult? Function( String roomId)?  startPolling,TResult? Function()?  stopPolling,}) {final _that = this;
switch (_that) {
case _FetchRooms() when fetchRooms != null:
return fetchRooms();case _FetchMessages() when fetchMessages != null:
return fetchMessages(_that.roomId);case _SendMessage() when sendMessage != null:
return sendMessage(_that.roomId,_that.text);case _StartPolling() when startPolling != null:
return startPolling(_that.roomId);case _StopPolling() when stopPolling != null:
return stopPolling();case _:
  return null;

}
}

}

/// @nodoc


class _FetchRooms implements ChatEvent {
  const _FetchRooms();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchRooms);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.fetchRooms()';
}


}




/// @nodoc


class _FetchMessages implements ChatEvent {
  const _FetchMessages({required this.roomId});
  

 final  String roomId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMessagesCopyWith<_FetchMessages> get copyWith => __$FetchMessagesCopyWithImpl<_FetchMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMessages&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId);

@override
String toString() {
  return 'ChatEvent.fetchMessages(roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class _$FetchMessagesCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$FetchMessagesCopyWith(_FetchMessages value, $Res Function(_FetchMessages) _then) = __$FetchMessagesCopyWithImpl;
@useResult
$Res call({
 String roomId
});




}
/// @nodoc
class __$FetchMessagesCopyWithImpl<$Res>
    implements _$FetchMessagesCopyWith<$Res> {
  __$FetchMessagesCopyWithImpl(this._self, this._then);

  final _FetchMessages _self;
  final $Res Function(_FetchMessages) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,}) {
  return _then(_FetchMessages(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SendMessage implements ChatEvent {
  const _SendMessage({required this.roomId, required this.text});
  

 final  String roomId;
 final  String text;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,text);

@override
String toString() {
  return 'ChatEvent.sendMessage(roomId: $roomId, text: $text)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@useResult
$Res call({
 String roomId, String text
});




}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? text = null,}) {
  return _then(_SendMessage(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StartPolling implements ChatEvent {
  const _StartPolling({required this.roomId});
  

 final  String roomId;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartPollingCopyWith<_StartPolling> get copyWith => __$StartPollingCopyWithImpl<_StartPolling>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartPolling&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId);

@override
String toString() {
  return 'ChatEvent.startPolling(roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class _$StartPollingCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$StartPollingCopyWith(_StartPolling value, $Res Function(_StartPolling) _then) = __$StartPollingCopyWithImpl;
@useResult
$Res call({
 String roomId
});




}
/// @nodoc
class __$StartPollingCopyWithImpl<$Res>
    implements _$StartPollingCopyWith<$Res> {
  __$StartPollingCopyWithImpl(this._self, this._then);

  final _StartPolling _self;
  final $Res Function(_StartPolling) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,}) {
  return _then(_StartPolling(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StopPolling implements ChatEvent {
  const _StopPolling();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StopPolling);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatEvent.stopPolling()';
}


}




/// @nodoc
mixin _$ChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState()';
}


}

/// @nodoc
class $ChatStateCopyWith<$Res>  {
$ChatStateCopyWith(ChatState _, $Res Function(ChatState) __);
}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _RoomsLoaded value)?  roomsLoaded,TResult Function( _MessagesLoaded value)?  messagesLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that);case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _RoomsLoaded value)  roomsLoaded,required TResult Function( _MessagesLoaded value)  messagesLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _RoomsLoaded():
return roomsLoaded(_that);case _MessagesLoaded():
return messagesLoaded(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _RoomsLoaded value)?  roomsLoaded,TResult? Function( _MessagesLoaded value)?  messagesLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that);case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<dynamic> rooms)?  roomsLoaded,TResult Function( List<dynamic> messages)?  messagesLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that.rooms);case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that.messages);case _Error() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<dynamic> rooms)  roomsLoaded,required TResult Function( List<dynamic> messages)  messagesLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _RoomsLoaded():
return roomsLoaded(_that.rooms);case _MessagesLoaded():
return messagesLoaded(_that.messages);case _Error():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<dynamic> rooms)?  roomsLoaded,TResult? Function( List<dynamic> messages)?  messagesLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _RoomsLoaded() when roomsLoaded != null:
return roomsLoaded(_that.rooms);case _MessagesLoaded() when messagesLoaded != null:
return messagesLoaded(_that.messages);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ChatState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.initial()';
}


}




/// @nodoc


class _Loading implements ChatState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatState.loading()';
}


}




/// @nodoc


class _RoomsLoaded implements ChatState {
  const _RoomsLoaded({required final  List<dynamic> rooms}): _rooms = rooms;
  

 final  List<dynamic> _rooms;
 List<dynamic> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomsLoadedCopyWith<_RoomsLoaded> get copyWith => __$RoomsLoadedCopyWithImpl<_RoomsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomsLoaded&&const DeepCollectionEquality().equals(other._rooms, _rooms));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rooms));

@override
String toString() {
  return 'ChatState.roomsLoaded(rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class _$RoomsLoadedCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$RoomsLoadedCopyWith(_RoomsLoaded value, $Res Function(_RoomsLoaded) _then) = __$RoomsLoadedCopyWithImpl;
@useResult
$Res call({
 List<dynamic> rooms
});




}
/// @nodoc
class __$RoomsLoadedCopyWithImpl<$Res>
    implements _$RoomsLoadedCopyWith<$Res> {
  __$RoomsLoadedCopyWithImpl(this._self, this._then);

  final _RoomsLoaded _self;
  final $Res Function(_RoomsLoaded) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rooms = null,}) {
  return _then(_RoomsLoaded(
rooms: null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

/// @nodoc


class _MessagesLoaded implements ChatState {
  const _MessagesLoaded({required final  List<dynamic> messages}): _messages = messages;
  

 final  List<dynamic> _messages;
 List<dynamic> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagesLoadedCopyWith<_MessagesLoaded> get copyWith => __$MessagesLoadedCopyWithImpl<_MessagesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagesLoaded&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatState.messagesLoaded(messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$MessagesLoadedCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$MessagesLoadedCopyWith(_MessagesLoaded value, $Res Function(_MessagesLoaded) _then) = __$MessagesLoadedCopyWithImpl;
@useResult
$Res call({
 List<dynamic> messages
});




}
/// @nodoc
class __$MessagesLoadedCopyWithImpl<$Res>
    implements _$MessagesLoadedCopyWith<$Res> {
  __$MessagesLoadedCopyWithImpl(this._self, this._then);

  final _MessagesLoaded _self;
  final $Res Function(_MessagesLoaded) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(_MessagesLoaded(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

/// @nodoc


class _Error implements ChatState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
