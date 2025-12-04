// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ComplaintEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintEvent()';
}


}

/// @nodoc
class $ComplaintEventCopyWith<$Res>  {
$ComplaintEventCopyWith(ComplaintEvent _, $Res Function(ComplaintEvent) __);
}


/// Adds pattern-matching-related methods to [ComplaintEvent].
extension ComplaintEventPatterns on ComplaintEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RaiseComplaint value)?  raiseComplaint,TResult Function( _FetchMyComplaints value)?  fetchMyComplaints,TResult Function( _FetchAllComplaints value)?  fetchAllComplaints,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RaiseComplaint() when raiseComplaint != null:
return raiseComplaint(_that);case _FetchMyComplaints() when fetchMyComplaints != null:
return fetchMyComplaints(_that);case _FetchAllComplaints() when fetchAllComplaints != null:
return fetchAllComplaints(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RaiseComplaint value)  raiseComplaint,required TResult Function( _FetchMyComplaints value)  fetchMyComplaints,required TResult Function( _FetchAllComplaints value)  fetchAllComplaints,}){
final _that = this;
switch (_that) {
case _RaiseComplaint():
return raiseComplaint(_that);case _FetchMyComplaints():
return fetchMyComplaints(_that);case _FetchAllComplaints():
return fetchAllComplaints(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RaiseComplaint value)?  raiseComplaint,TResult? Function( _FetchMyComplaints value)?  fetchMyComplaints,TResult? Function( _FetchAllComplaints value)?  fetchAllComplaints,}){
final _that = this;
switch (_that) {
case _RaiseComplaint() when raiseComplaint != null:
return raiseComplaint(_that);case _FetchMyComplaints() when fetchMyComplaints != null:
return fetchMyComplaints(_that);case _FetchAllComplaints() when fetchAllComplaints != null:
return fetchAllComplaints(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String bookingId,  String subject,  String description)?  raiseComplaint,TResult Function()?  fetchMyComplaints,TResult Function()?  fetchAllComplaints,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RaiseComplaint() when raiseComplaint != null:
return raiseComplaint(_that.bookingId,_that.subject,_that.description);case _FetchMyComplaints() when fetchMyComplaints != null:
return fetchMyComplaints();case _FetchAllComplaints() when fetchAllComplaints != null:
return fetchAllComplaints();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String bookingId,  String subject,  String description)  raiseComplaint,required TResult Function()  fetchMyComplaints,required TResult Function()  fetchAllComplaints,}) {final _that = this;
switch (_that) {
case _RaiseComplaint():
return raiseComplaint(_that.bookingId,_that.subject,_that.description);case _FetchMyComplaints():
return fetchMyComplaints();case _FetchAllComplaints():
return fetchAllComplaints();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String bookingId,  String subject,  String description)?  raiseComplaint,TResult? Function()?  fetchMyComplaints,TResult? Function()?  fetchAllComplaints,}) {final _that = this;
switch (_that) {
case _RaiseComplaint() when raiseComplaint != null:
return raiseComplaint(_that.bookingId,_that.subject,_that.description);case _FetchMyComplaints() when fetchMyComplaints != null:
return fetchMyComplaints();case _FetchAllComplaints() when fetchAllComplaints != null:
return fetchAllComplaints();case _:
  return null;

}
}

}

/// @nodoc


class _RaiseComplaint implements ComplaintEvent {
  const _RaiseComplaint({required this.bookingId, required this.subject, required this.description});
  

 final  String bookingId;
 final  String subject;
 final  String description;

/// Create a copy of ComplaintEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RaiseComplaintCopyWith<_RaiseComplaint> get copyWith => __$RaiseComplaintCopyWithImpl<_RaiseComplaint>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RaiseComplaint&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,bookingId,subject,description);

@override
String toString() {
  return 'ComplaintEvent.raiseComplaint(bookingId: $bookingId, subject: $subject, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RaiseComplaintCopyWith<$Res> implements $ComplaintEventCopyWith<$Res> {
  factory _$RaiseComplaintCopyWith(_RaiseComplaint value, $Res Function(_RaiseComplaint) _then) = __$RaiseComplaintCopyWithImpl;
@useResult
$Res call({
 String bookingId, String subject, String description
});




}
/// @nodoc
class __$RaiseComplaintCopyWithImpl<$Res>
    implements _$RaiseComplaintCopyWith<$Res> {
  __$RaiseComplaintCopyWithImpl(this._self, this._then);

  final _RaiseComplaint _self;
  final $Res Function(_RaiseComplaint) _then;

/// Create a copy of ComplaintEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bookingId = null,Object? subject = null,Object? description = null,}) {
  return _then(_RaiseComplaint(
bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FetchMyComplaints implements ComplaintEvent {
  const _FetchMyComplaints();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMyComplaints);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintEvent.fetchMyComplaints()';
}


}




/// @nodoc


class _FetchAllComplaints implements ComplaintEvent {
  const _FetchAllComplaints();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAllComplaints);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintEvent.fetchAllComplaints()';
}


}




/// @nodoc
mixin _$ComplaintState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintState()';
}


}

/// @nodoc
class $ComplaintStateCopyWith<$Res>  {
$ComplaintStateCopyWith(ComplaintState _, $Res Function(ComplaintState) __);
}


/// Adds pattern-matching-related methods to [ComplaintState].
extension ComplaintStatePatterns on ComplaintState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Submitting value)?  submitting,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Submitting value)  submitting,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Submitting():
return submitting(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Submitting value)?  submitting,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  submitting,TResult Function( List<dynamic> complaints)?  loaded,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Submitting() when submitting != null:
return submitting();case _Loaded() when loaded != null:
return loaded(_that.complaints);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  submitting,required TResult Function( List<dynamic> complaints)  loaded,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Submitting():
return submitting();case _Loaded():
return loaded(_that.complaints);case _Success():
return success(_that.message);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  submitting,TResult? Function( List<dynamic> complaints)?  loaded,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Submitting() when submitting != null:
return submitting();case _Loaded() when loaded != null:
return loaded(_that.complaints);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ComplaintState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintState.initial()';
}


}




/// @nodoc


class _Loading implements ComplaintState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintState.loading()';
}


}




/// @nodoc


class _Submitting implements ComplaintState {
  const _Submitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ComplaintState.submitting()';
}


}




/// @nodoc


class _Loaded implements ComplaintState {
  const _Loaded({required final  List<dynamic> complaints}): _complaints = complaints;
  

 final  List<dynamic> _complaints;
 List<dynamic> get complaints {
  if (_complaints is EqualUnmodifiableListView) return _complaints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_complaints);
}


/// Create a copy of ComplaintState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._complaints, _complaints));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_complaints));

@override
String toString() {
  return 'ComplaintState.loaded(complaints: $complaints)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ComplaintStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<dynamic> complaints
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? complaints = null,}) {
  return _then(_Loaded(
complaints: null == complaints ? _self._complaints : complaints // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

/// @nodoc


class _Success implements ComplaintState {
  const _Success({required this.message});
  

 final  String message;

/// Create a copy of ComplaintState
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
  return 'ComplaintState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $ComplaintStateCopyWith<$Res> {
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

/// Create a copy of ComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements ComplaintState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of ComplaintState
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
  return 'ComplaintState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ComplaintStateCopyWith<$Res> {
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

/// Create a copy of ComplaintState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
