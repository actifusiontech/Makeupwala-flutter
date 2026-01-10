// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EarningsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EarningsEvent()';
}


}

/// @nodoc
class $EarningsEventCopyWith<$Res>  {
$EarningsEventCopyWith(EarningsEvent _, $Res Function(EarningsEvent) __);
}


/// Adds pattern-matching-related methods to [EarningsEvent].
extension EarningsEventPatterns on EarningsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchEarningsStats value)?  fetchEarningsStats,TResult Function( FetchEarnings value)?  fetchEarnings,TResult Function( FetchPayouts value)?  fetchPayouts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchEarningsStats() when fetchEarningsStats != null:
return fetchEarningsStats(_that);case FetchEarnings() when fetchEarnings != null:
return fetchEarnings(_that);case FetchPayouts() when fetchPayouts != null:
return fetchPayouts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchEarningsStats value)  fetchEarningsStats,required TResult Function( FetchEarnings value)  fetchEarnings,required TResult Function( FetchPayouts value)  fetchPayouts,}){
final _that = this;
switch (_that) {
case FetchEarningsStats():
return fetchEarningsStats(_that);case FetchEarnings():
return fetchEarnings(_that);case FetchPayouts():
return fetchPayouts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchEarningsStats value)?  fetchEarningsStats,TResult? Function( FetchEarnings value)?  fetchEarnings,TResult? Function( FetchPayouts value)?  fetchPayouts,}){
final _that = this;
switch (_that) {
case FetchEarningsStats() when fetchEarningsStats != null:
return fetchEarningsStats(_that);case FetchEarnings() when fetchEarnings != null:
return fetchEarnings(_that);case FetchPayouts() when fetchPayouts != null:
return fetchPayouts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchEarningsStats,TResult Function( String? period,  String? status)?  fetchEarnings,TResult Function()?  fetchPayouts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchEarningsStats() when fetchEarningsStats != null:
return fetchEarningsStats();case FetchEarnings() when fetchEarnings != null:
return fetchEarnings(_that.period,_that.status);case FetchPayouts() when fetchPayouts != null:
return fetchPayouts();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchEarningsStats,required TResult Function( String? period,  String? status)  fetchEarnings,required TResult Function()  fetchPayouts,}) {final _that = this;
switch (_that) {
case FetchEarningsStats():
return fetchEarningsStats();case FetchEarnings():
return fetchEarnings(_that.period,_that.status);case FetchPayouts():
return fetchPayouts();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchEarningsStats,TResult? Function( String? period,  String? status)?  fetchEarnings,TResult? Function()?  fetchPayouts,}) {final _that = this;
switch (_that) {
case FetchEarningsStats() when fetchEarningsStats != null:
return fetchEarningsStats();case FetchEarnings() when fetchEarnings != null:
return fetchEarnings(_that.period,_that.status);case FetchPayouts() when fetchPayouts != null:
return fetchPayouts();case _:
  return null;

}
}

}

/// @nodoc


class FetchEarningsStats implements EarningsEvent {
  const FetchEarningsStats();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchEarningsStats);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EarningsEvent.fetchEarningsStats()';
}


}




/// @nodoc


class FetchEarnings implements EarningsEvent {
  const FetchEarnings({this.period, this.status});
  

 final  String? period;
 final  String? status;

/// Create a copy of EarningsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchEarningsCopyWith<FetchEarnings> get copyWith => _$FetchEarningsCopyWithImpl<FetchEarnings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchEarnings&&(identical(other.period, period) || other.period == period)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,period,status);

@override
String toString() {
  return 'EarningsEvent.fetchEarnings(period: $period, status: $status)';
}


}

/// @nodoc
abstract mixin class $FetchEarningsCopyWith<$Res> implements $EarningsEventCopyWith<$Res> {
  factory $FetchEarningsCopyWith(FetchEarnings value, $Res Function(FetchEarnings) _then) = _$FetchEarningsCopyWithImpl;
@useResult
$Res call({
 String? period, String? status
});




}
/// @nodoc
class _$FetchEarningsCopyWithImpl<$Res>
    implements $FetchEarningsCopyWith<$Res> {
  _$FetchEarningsCopyWithImpl(this._self, this._then);

  final FetchEarnings _self;
  final $Res Function(FetchEarnings) _then;

/// Create a copy of EarningsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? period = freezed,Object? status = freezed,}) {
  return _then(FetchEarnings(
period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class FetchPayouts implements EarningsEvent {
  const FetchPayouts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchPayouts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EarningsEvent.fetchPayouts()';
}


}




/// @nodoc
mixin _$EarningsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EarningsState()';
}


}

/// @nodoc
class $EarningsStateCopyWith<$Res>  {
$EarningsStateCopyWith(EarningsState _, $Res Function(EarningsState) __);
}


/// Adds pattern-matching-related methods to [EarningsState].
extension EarningsStatePatterns on EarningsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _StatsLoaded value)?  statsLoaded,TResult Function( _EarningsLoaded value)?  earningsLoaded,TResult Function( _PayoutsLoaded value)?  payoutsLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _StatsLoaded() when statsLoaded != null:
return statsLoaded(_that);case _EarningsLoaded() when earningsLoaded != null:
return earningsLoaded(_that);case _PayoutsLoaded() when payoutsLoaded != null:
return payoutsLoaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _StatsLoaded value)  statsLoaded,required TResult Function( _EarningsLoaded value)  earningsLoaded,required TResult Function( _PayoutsLoaded value)  payoutsLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _StatsLoaded():
return statsLoaded(_that);case _EarningsLoaded():
return earningsLoaded(_that);case _PayoutsLoaded():
return payoutsLoaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _StatsLoaded value)?  statsLoaded,TResult? Function( _EarningsLoaded value)?  earningsLoaded,TResult? Function( _PayoutsLoaded value)?  payoutsLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _StatsLoaded() when statsLoaded != null:
return statsLoaded(_that);case _EarningsLoaded() when earningsLoaded != null:
return earningsLoaded(_that);case _PayoutsLoaded() when payoutsLoaded != null:
return payoutsLoaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( EarningsStats stats)?  statsLoaded,TResult Function( List<Earning> earnings)?  earningsLoaded,TResult Function( List<Payout> payouts)?  payoutsLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _StatsLoaded() when statsLoaded != null:
return statsLoaded(_that.stats);case _EarningsLoaded() when earningsLoaded != null:
return earningsLoaded(_that.earnings);case _PayoutsLoaded() when payoutsLoaded != null:
return payoutsLoaded(_that.payouts);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( EarningsStats stats)  statsLoaded,required TResult Function( List<Earning> earnings)  earningsLoaded,required TResult Function( List<Payout> payouts)  payoutsLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _StatsLoaded():
return statsLoaded(_that.stats);case _EarningsLoaded():
return earningsLoaded(_that.earnings);case _PayoutsLoaded():
return payoutsLoaded(_that.payouts);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( EarningsStats stats)?  statsLoaded,TResult? Function( List<Earning> earnings)?  earningsLoaded,TResult? Function( List<Payout> payouts)?  payoutsLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _StatsLoaded() when statsLoaded != null:
return statsLoaded(_that.stats);case _EarningsLoaded() when earningsLoaded != null:
return earningsLoaded(_that.earnings);case _PayoutsLoaded() when payoutsLoaded != null:
return payoutsLoaded(_that.payouts);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EarningsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EarningsState.initial()';
}


}




/// @nodoc


class _Loading implements EarningsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EarningsState.loading()';
}


}




/// @nodoc


class _StatsLoaded implements EarningsState {
  const _StatsLoaded(this.stats);
  

 final  EarningsStats stats;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsLoadedCopyWith<_StatsLoaded> get copyWith => __$StatsLoadedCopyWithImpl<_StatsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsLoaded&&(identical(other.stats, stats) || other.stats == stats));
}


@override
int get hashCode => Object.hash(runtimeType,stats);

@override
String toString() {
  return 'EarningsState.statsLoaded(stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$StatsLoadedCopyWith<$Res> implements $EarningsStateCopyWith<$Res> {
  factory _$StatsLoadedCopyWith(_StatsLoaded value, $Res Function(_StatsLoaded) _then) = __$StatsLoadedCopyWithImpl;
@useResult
$Res call({
 EarningsStats stats
});




}
/// @nodoc
class __$StatsLoadedCopyWithImpl<$Res>
    implements _$StatsLoadedCopyWith<$Res> {
  __$StatsLoadedCopyWithImpl(this._self, this._then);

  final _StatsLoaded _self;
  final $Res Function(_StatsLoaded) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stats = null,}) {
  return _then(_StatsLoaded(
null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as EarningsStats,
  ));
}


}

/// @nodoc


class _EarningsLoaded implements EarningsState {
  const _EarningsLoaded(final  List<Earning> earnings): _earnings = earnings;
  

 final  List<Earning> _earnings;
 List<Earning> get earnings {
  if (_earnings is EqualUnmodifiableListView) return _earnings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_earnings);
}


/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsLoadedCopyWith<_EarningsLoaded> get copyWith => __$EarningsLoadedCopyWithImpl<_EarningsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsLoaded&&const DeepCollectionEquality().equals(other._earnings, _earnings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_earnings));

@override
String toString() {
  return 'EarningsState.earningsLoaded(earnings: $earnings)';
}


}

/// @nodoc
abstract mixin class _$EarningsLoadedCopyWith<$Res> implements $EarningsStateCopyWith<$Res> {
  factory _$EarningsLoadedCopyWith(_EarningsLoaded value, $Res Function(_EarningsLoaded) _then) = __$EarningsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Earning> earnings
});




}
/// @nodoc
class __$EarningsLoadedCopyWithImpl<$Res>
    implements _$EarningsLoadedCopyWith<$Res> {
  __$EarningsLoadedCopyWithImpl(this._self, this._then);

  final _EarningsLoaded _self;
  final $Res Function(_EarningsLoaded) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? earnings = null,}) {
  return _then(_EarningsLoaded(
null == earnings ? _self._earnings : earnings // ignore: cast_nullable_to_non_nullable
as List<Earning>,
  ));
}


}

/// @nodoc


class _PayoutsLoaded implements EarningsState {
  const _PayoutsLoaded(final  List<Payout> payouts): _payouts = payouts;
  

 final  List<Payout> _payouts;
 List<Payout> get payouts {
  if (_payouts is EqualUnmodifiableListView) return _payouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payouts);
}


/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsLoadedCopyWith<_PayoutsLoaded> get copyWith => __$PayoutsLoadedCopyWithImpl<_PayoutsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsLoaded&&const DeepCollectionEquality().equals(other._payouts, _payouts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_payouts));

@override
String toString() {
  return 'EarningsState.payoutsLoaded(payouts: $payouts)';
}


}

/// @nodoc
abstract mixin class _$PayoutsLoadedCopyWith<$Res> implements $EarningsStateCopyWith<$Res> {
  factory _$PayoutsLoadedCopyWith(_PayoutsLoaded value, $Res Function(_PayoutsLoaded) _then) = __$PayoutsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Payout> payouts
});




}
/// @nodoc
class __$PayoutsLoadedCopyWithImpl<$Res>
    implements _$PayoutsLoadedCopyWith<$Res> {
  __$PayoutsLoadedCopyWithImpl(this._self, this._then);

  final _PayoutsLoaded _self;
  final $Res Function(_PayoutsLoaded) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payouts = null,}) {
  return _then(_PayoutsLoaded(
null == payouts ? _self._payouts : payouts // ignore: cast_nullable_to_non_nullable
as List<Payout>,
  ));
}


}

/// @nodoc


class _Error implements EarningsState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of EarningsState
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
  return 'EarningsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $EarningsStateCopyWith<$Res> {
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

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
