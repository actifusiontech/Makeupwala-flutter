// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_kyc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArtistKYCEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistKYCEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCEvent()';
}


}

/// @nodoc
class $ArtistKYCEventCopyWith<$Res>  {
$ArtistKYCEventCopyWith(ArtistKYCEvent _, $Res Function(ArtistKYCEvent) __);
}


/// Adds pattern-matching-related methods to [ArtistKYCEvent].
extension ArtistKYCEventPatterns on ArtistKYCEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchStatus value)?  fetchStatus,TResult Function( _SubmitKYC value)?  submitKYC,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchStatus() when fetchStatus != null:
return fetchStatus(_that);case _SubmitKYC() when submitKYC != null:
return submitKYC(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchStatus value)  fetchStatus,required TResult Function( _SubmitKYC value)  submitKYC,}){
final _that = this;
switch (_that) {
case _FetchStatus():
return fetchStatus(_that);case _SubmitKYC():
return submitKYC(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchStatus value)?  fetchStatus,TResult? Function( _SubmitKYC value)?  submitKYC,}){
final _that = this;
switch (_that) {
case _FetchStatus() when fetchStatus != null:
return fetchStatus(_that);case _SubmitKYC() when submitKYC != null:
return submitKYC(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchStatus,TResult Function( String idProof,  String addressProof,  String certificate)?  submitKYC,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchStatus() when fetchStatus != null:
return fetchStatus();case _SubmitKYC() when submitKYC != null:
return submitKYC(_that.idProof,_that.addressProof,_that.certificate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchStatus,required TResult Function( String idProof,  String addressProof,  String certificate)  submitKYC,}) {final _that = this;
switch (_that) {
case _FetchStatus():
return fetchStatus();case _SubmitKYC():
return submitKYC(_that.idProof,_that.addressProof,_that.certificate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchStatus,TResult? Function( String idProof,  String addressProof,  String certificate)?  submitKYC,}) {final _that = this;
switch (_that) {
case _FetchStatus() when fetchStatus != null:
return fetchStatus();case _SubmitKYC() when submitKYC != null:
return submitKYC(_that.idProof,_that.addressProof,_that.certificate);case _:
  return null;

}
}

}

/// @nodoc


class _FetchStatus implements ArtistKYCEvent {
  const _FetchStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCEvent.fetchStatus()';
}


}




/// @nodoc


class _SubmitKYC implements ArtistKYCEvent {
  const _SubmitKYC({required this.idProof, required this.addressProof, required this.certificate});
  

 final  String idProof;
 final  String addressProof;
 final  String certificate;

/// Create a copy of ArtistKYCEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitKYCCopyWith<_SubmitKYC> get copyWith => __$SubmitKYCCopyWithImpl<_SubmitKYC>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitKYC&&(identical(other.idProof, idProof) || other.idProof == idProof)&&(identical(other.addressProof, addressProof) || other.addressProof == addressProof)&&(identical(other.certificate, certificate) || other.certificate == certificate));
}


@override
int get hashCode => Object.hash(runtimeType,idProof,addressProof,certificate);

@override
String toString() {
  return 'ArtistKYCEvent.submitKYC(idProof: $idProof, addressProof: $addressProof, certificate: $certificate)';
}


}

/// @nodoc
abstract mixin class _$SubmitKYCCopyWith<$Res> implements $ArtistKYCEventCopyWith<$Res> {
  factory _$SubmitKYCCopyWith(_SubmitKYC value, $Res Function(_SubmitKYC) _then) = __$SubmitKYCCopyWithImpl;
@useResult
$Res call({
 String idProof, String addressProof, String certificate
});




}
/// @nodoc
class __$SubmitKYCCopyWithImpl<$Res>
    implements _$SubmitKYCCopyWith<$Res> {
  __$SubmitKYCCopyWithImpl(this._self, this._then);

  final _SubmitKYC _self;
  final $Res Function(_SubmitKYC) _then;

/// Create a copy of ArtistKYCEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idProof = null,Object? addressProof = null,Object? certificate = null,}) {
  return _then(_SubmitKYC(
idProof: null == idProof ? _self.idProof : idProof // ignore: cast_nullable_to_non_nullable
as String,addressProof: null == addressProof ? _self.addressProof : addressProof // ignore: cast_nullable_to_non_nullable
as String,certificate: null == certificate ? _self.certificate : certificate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ArtistKYCState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistKYCState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCState()';
}


}

/// @nodoc
class $ArtistKYCStateCopyWith<$Res>  {
$ArtistKYCStateCopyWith(ArtistKYCState _, $Res Function(ArtistKYCState) __);
}


/// Adds pattern-matching-related methods to [ArtistKYCState].
extension ArtistKYCStatePatterns on ArtistKYCState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Submitting value)?  submitting,TResult Function( _Submitted value)?  submitted,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Submitted() when submitted != null:
return submitted(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Submitting value)  submitting,required TResult Function( _Submitted value)  submitted,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Submitting():
return submitting(_that);case _Submitted():
return submitted(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Submitting value)?  submitting,TResult? Function( _Submitted value)?  submitted,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Submitting() when submitting != null:
return submitting(_that);case _Submitted() when submitted != null:
return submitted(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ArtistKYC kyc)?  loaded,TResult Function()?  submitting,TResult Function()?  submitted,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.kyc);case _Submitting() when submitting != null:
return submitting();case _Submitted() when submitted != null:
return submitted();case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ArtistKYC kyc)  loaded,required TResult Function()  submitting,required TResult Function()  submitted,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.kyc);case _Submitting():
return submitting();case _Submitted():
return submitted();case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ArtistKYC kyc)?  loaded,TResult? Function()?  submitting,TResult? Function()?  submitted,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.kyc);case _Submitting() when submitting != null:
return submitting();case _Submitted() when submitted != null:
return submitted();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ArtistKYCState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCState.initial()';
}


}




/// @nodoc


class _Loading implements ArtistKYCState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCState.loading()';
}


}




/// @nodoc


class _Loaded implements ArtistKYCState {
  const _Loaded({required this.kyc});
  

 final  ArtistKYC kyc;

/// Create a copy of ArtistKYCState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.kyc, kyc) || other.kyc == kyc));
}


@override
int get hashCode => Object.hash(runtimeType,kyc);

@override
String toString() {
  return 'ArtistKYCState.loaded(kyc: $kyc)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ArtistKYCStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 ArtistKYC kyc
});


$ArtistKYCCopyWith<$Res> get kyc;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ArtistKYCState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kyc = null,}) {
  return _then(_Loaded(
kyc: null == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as ArtistKYC,
  ));
}

/// Create a copy of ArtistKYCState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArtistKYCCopyWith<$Res> get kyc {
  
  return $ArtistKYCCopyWith<$Res>(_self.kyc, (value) {
    return _then(_self.copyWith(kyc: value));
  });
}
}

/// @nodoc


class _Submitting implements ArtistKYCState {
  const _Submitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCState.submitting()';
}


}




/// @nodoc


class _Submitted implements ArtistKYCState {
  const _Submitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Submitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArtistKYCState.submitted()';
}


}




/// @nodoc


class _Error implements ArtistKYCState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of ArtistKYCState
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
  return 'ArtistKYCState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ArtistKYCStateCopyWith<$Res> {
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

/// Create a copy of ArtistKYCState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
