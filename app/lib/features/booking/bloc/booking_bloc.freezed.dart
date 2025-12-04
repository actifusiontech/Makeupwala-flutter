// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingEvent()';
}


}

/// @nodoc
class $BookingEventCopyWith<$Res>  {
$BookingEventCopyWith(BookingEvent _, $Res Function(BookingEvent) __);
}


/// Adds pattern-matching-related methods to [BookingEvent].
extension BookingEventPatterns on BookingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CreateBooking value)?  createBooking,TResult Function( _FetchBookings value)?  fetchBookings,TResult Function( _UpdateStatus value)?  updateStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBooking() when createBooking != null:
return createBooking(_that);case _FetchBookings() when fetchBookings != null:
return fetchBookings(_that);case _UpdateStatus() when updateStatus != null:
return updateStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CreateBooking value)  createBooking,required TResult Function( _FetchBookings value)  fetchBookings,required TResult Function( _UpdateStatus value)  updateStatus,}){
final _that = this;
switch (_that) {
case _CreateBooking():
return createBooking(_that);case _FetchBookings():
return fetchBookings(_that);case _UpdateStatus():
return updateStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CreateBooking value)?  createBooking,TResult? Function( _FetchBookings value)?  fetchBookings,TResult? Function( _UpdateStatus value)?  updateStatus,}){
final _that = this;
switch (_that) {
case _CreateBooking() when createBooking != null:
return createBooking(_that);case _FetchBookings() when fetchBookings != null:
return fetchBookings(_that);case _UpdateStatus() when updateStatus != null:
return updateStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String artistId,  String serviceId,  DateTime date,  String time,  String? notes)?  createBooking,TResult Function( bool isArtist)?  fetchBookings,TResult Function( String bookingId,  String status,  bool isArtist,  String? note)?  updateStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBooking() when createBooking != null:
return createBooking(_that.artistId,_that.serviceId,_that.date,_that.time,_that.notes);case _FetchBookings() when fetchBookings != null:
return fetchBookings(_that.isArtist);case _UpdateStatus() when updateStatus != null:
return updateStatus(_that.bookingId,_that.status,_that.isArtist,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String artistId,  String serviceId,  DateTime date,  String time,  String? notes)  createBooking,required TResult Function( bool isArtist)  fetchBookings,required TResult Function( String bookingId,  String status,  bool isArtist,  String? note)  updateStatus,}) {final _that = this;
switch (_that) {
case _CreateBooking():
return createBooking(_that.artistId,_that.serviceId,_that.date,_that.time,_that.notes);case _FetchBookings():
return fetchBookings(_that.isArtist);case _UpdateStatus():
return updateStatus(_that.bookingId,_that.status,_that.isArtist,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String artistId,  String serviceId,  DateTime date,  String time,  String? notes)?  createBooking,TResult? Function( bool isArtist)?  fetchBookings,TResult? Function( String bookingId,  String status,  bool isArtist,  String? note)?  updateStatus,}) {final _that = this;
switch (_that) {
case _CreateBooking() when createBooking != null:
return createBooking(_that.artistId,_that.serviceId,_that.date,_that.time,_that.notes);case _FetchBookings() when fetchBookings != null:
return fetchBookings(_that.isArtist);case _UpdateStatus() when updateStatus != null:
return updateStatus(_that.bookingId,_that.status,_that.isArtist,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _CreateBooking implements BookingEvent {
  const _CreateBooking({required this.artistId, required this.serviceId, required this.date, required this.time, this.notes});
  

 final  String artistId;
 final  String serviceId;
 final  DateTime date;
 final  String time;
 final  String? notes;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBookingCopyWith<_CreateBooking> get copyWith => __$CreateBookingCopyWithImpl<_CreateBooking>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBooking&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.date, date) || other.date == date)&&(identical(other.time, time) || other.time == time)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,artistId,serviceId,date,time,notes);

@override
String toString() {
  return 'BookingEvent.createBooking(artistId: $artistId, serviceId: $serviceId, date: $date, time: $time, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateBookingCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory _$CreateBookingCopyWith(_CreateBooking value, $Res Function(_CreateBooking) _then) = __$CreateBookingCopyWithImpl;
@useResult
$Res call({
 String artistId, String serviceId, DateTime date, String time, String? notes
});




}
/// @nodoc
class __$CreateBookingCopyWithImpl<$Res>
    implements _$CreateBookingCopyWith<$Res> {
  __$CreateBookingCopyWithImpl(this._self, this._then);

  final _CreateBooking _self;
  final $Res Function(_CreateBooking) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? artistId = null,Object? serviceId = null,Object? date = null,Object? time = null,Object? notes = freezed,}) {
  return _then(_CreateBooking(
artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _FetchBookings implements BookingEvent {
  const _FetchBookings({required this.isArtist});
  

 final  bool isArtist;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchBookingsCopyWith<_FetchBookings> get copyWith => __$FetchBookingsCopyWithImpl<_FetchBookings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchBookings&&(identical(other.isArtist, isArtist) || other.isArtist == isArtist));
}


@override
int get hashCode => Object.hash(runtimeType,isArtist);

@override
String toString() {
  return 'BookingEvent.fetchBookings(isArtist: $isArtist)';
}


}

/// @nodoc
abstract mixin class _$FetchBookingsCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory _$FetchBookingsCopyWith(_FetchBookings value, $Res Function(_FetchBookings) _then) = __$FetchBookingsCopyWithImpl;
@useResult
$Res call({
 bool isArtist
});




}
/// @nodoc
class __$FetchBookingsCopyWithImpl<$Res>
    implements _$FetchBookingsCopyWith<$Res> {
  __$FetchBookingsCopyWithImpl(this._self, this._then);

  final _FetchBookings _self;
  final $Res Function(_FetchBookings) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isArtist = null,}) {
  return _then(_FetchBookings(
isArtist: null == isArtist ? _self.isArtist : isArtist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _UpdateStatus implements BookingEvent {
  const _UpdateStatus({required this.bookingId, required this.status, required this.isArtist, this.note});
  

 final  String bookingId;
 final  String status;
 final  bool isArtist;
 final  String? note;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateStatusCopyWith<_UpdateStatus> get copyWith => __$UpdateStatusCopyWithImpl<_UpdateStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStatus&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.status, status) || other.status == status)&&(identical(other.isArtist, isArtist) || other.isArtist == isArtist)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,bookingId,status,isArtist,note);

@override
String toString() {
  return 'BookingEvent.updateStatus(bookingId: $bookingId, status: $status, isArtist: $isArtist, note: $note)';
}


}

/// @nodoc
abstract mixin class _$UpdateStatusCopyWith<$Res> implements $BookingEventCopyWith<$Res> {
  factory _$UpdateStatusCopyWith(_UpdateStatus value, $Res Function(_UpdateStatus) _then) = __$UpdateStatusCopyWithImpl;
@useResult
$Res call({
 String bookingId, String status, bool isArtist, String? note
});




}
/// @nodoc
class __$UpdateStatusCopyWithImpl<$Res>
    implements _$UpdateStatusCopyWith<$Res> {
  __$UpdateStatusCopyWithImpl(this._self, this._then);

  final _UpdateStatus _self;
  final $Res Function(_UpdateStatus) _then;

/// Create a copy of BookingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? status = null,Object? isArtist = null,Object? note = freezed,}) {
  return _then(_UpdateStatus(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isArtist: null == isArtist ? _self.isArtist : isArtist // ignore: cast_nullable_to_non_nullable
as bool,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$BookingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState()';
}


}

/// @nodoc
class $BookingStateCopyWith<$Res>  {
$BookingStateCopyWith(BookingState _, $Res Function(BookingState) __);
}


/// Adds pattern-matching-related methods to [BookingState].
extension BookingStatePatterns on BookingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Loaded():
return loaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  success,TResult Function( List<Map<String, dynamic>> bookings)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.message);case _Loaded() when loaded != null:
return loaded(_that.bookings);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  success,required TResult Function( List<Map<String, dynamic>> bookings)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.message);case _Loaded():
return loaded(_that.bookings);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  success,TResult? Function( List<Map<String, dynamic>> bookings)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.message);case _Loaded() when loaded != null:
return loaded(_that.bookings);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements BookingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.initial()';
}


}




/// @nodoc


class _Loading implements BookingState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookingState.loading()';
}


}




/// @nodoc


class _Success implements BookingState {
  const _Success({required this.message});
  

 final  String message;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BookingState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Loaded implements BookingState {
  const _Loaded({required final  List<Map<String, dynamic>> bookings}): _bookings = bookings;
  

 final  List<Map<String, dynamic>> _bookings;
 List<Map<String, dynamic>> get bookings {
  if (_bookings is EqualUnmodifiableListView) return _bookings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bookings);
}


/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._bookings, _bookings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bookings));

@override
String toString() {
  return 'BookingState.loaded(bookings: $bookings)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<Map<String, dynamic>> bookings
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookings = null,}) {
  return _then(_Loaded(
bookings: null == bookings ? _self._bookings : bookings // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

/// @nodoc


class _Error implements BookingState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of BookingState
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
  return 'BookingState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $BookingStateCopyWith<$Res> {
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

/// Create a copy of BookingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
