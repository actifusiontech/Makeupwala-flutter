// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionEvent()';
}


}

/// @nodoc
class $SubscriptionEventCopyWith<$Res>  {
$SubscriptionEventCopyWith(SubscriptionEvent _, $Res Function(SubscriptionEvent) __);
}


/// Adds pattern-matching-related methods to [SubscriptionEvent].
extension SubscriptionEventPatterns on SubscriptionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchPlans value)?  fetchPlans,TResult Function( _FetchMySubscription value)?  fetchMySubscription,TResult Function( _Subscribe value)?  subscribe,TResult Function( _PaymentSuccess value)?  paymentSuccess,TResult Function( _PaymentFailure value)?  paymentFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans(_that);case _FetchMySubscription() when fetchMySubscription != null:
return fetchMySubscription(_that);case _Subscribe() when subscribe != null:
return subscribe(_that);case _PaymentSuccess() when paymentSuccess != null:
return paymentSuccess(_that);case _PaymentFailure() when paymentFailure != null:
return paymentFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchPlans value)  fetchPlans,required TResult Function( _FetchMySubscription value)  fetchMySubscription,required TResult Function( _Subscribe value)  subscribe,required TResult Function( _PaymentSuccess value)  paymentSuccess,required TResult Function( _PaymentFailure value)  paymentFailure,}){
final _that = this;
switch (_that) {
case _FetchPlans():
return fetchPlans(_that);case _FetchMySubscription():
return fetchMySubscription(_that);case _Subscribe():
return subscribe(_that);case _PaymentSuccess():
return paymentSuccess(_that);case _PaymentFailure():
return paymentFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchPlans value)?  fetchPlans,TResult? Function( _FetchMySubscription value)?  fetchMySubscription,TResult? Function( _Subscribe value)?  subscribe,TResult? Function( _PaymentSuccess value)?  paymentSuccess,TResult? Function( _PaymentFailure value)?  paymentFailure,}){
final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans(_that);case _FetchMySubscription() when fetchMySubscription != null:
return fetchMySubscription(_that);case _Subscribe() when subscribe != null:
return subscribe(_that);case _PaymentSuccess() when paymentSuccess != null:
return paymentSuccess(_that);case _PaymentFailure() when paymentFailure != null:
return paymentFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchPlans,TResult Function()?  fetchMySubscription,TResult Function( String planCode)?  subscribe,TResult Function( String paymentId,  String orderId,  String signature)?  paymentSuccess,TResult Function( String message)?  paymentFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans();case _FetchMySubscription() when fetchMySubscription != null:
return fetchMySubscription();case _Subscribe() when subscribe != null:
return subscribe(_that.planCode);case _PaymentSuccess() when paymentSuccess != null:
return paymentSuccess(_that.paymentId,_that.orderId,_that.signature);case _PaymentFailure() when paymentFailure != null:
return paymentFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchPlans,required TResult Function()  fetchMySubscription,required TResult Function( String planCode)  subscribe,required TResult Function( String paymentId,  String orderId,  String signature)  paymentSuccess,required TResult Function( String message)  paymentFailure,}) {final _that = this;
switch (_that) {
case _FetchPlans():
return fetchPlans();case _FetchMySubscription():
return fetchMySubscription();case _Subscribe():
return subscribe(_that.planCode);case _PaymentSuccess():
return paymentSuccess(_that.paymentId,_that.orderId,_that.signature);case _PaymentFailure():
return paymentFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchPlans,TResult? Function()?  fetchMySubscription,TResult? Function( String planCode)?  subscribe,TResult? Function( String paymentId,  String orderId,  String signature)?  paymentSuccess,TResult? Function( String message)?  paymentFailure,}) {final _that = this;
switch (_that) {
case _FetchPlans() when fetchPlans != null:
return fetchPlans();case _FetchMySubscription() when fetchMySubscription != null:
return fetchMySubscription();case _Subscribe() when subscribe != null:
return subscribe(_that.planCode);case _PaymentSuccess() when paymentSuccess != null:
return paymentSuccess(_that.paymentId,_that.orderId,_that.signature);case _PaymentFailure() when paymentFailure != null:
return paymentFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _FetchPlans implements SubscriptionEvent {
  const _FetchPlans();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchPlans);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionEvent.fetchPlans()';
}


}




/// @nodoc


class _FetchMySubscription implements SubscriptionEvent {
  const _FetchMySubscription();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMySubscription);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionEvent.fetchMySubscription()';
}


}




/// @nodoc


class _Subscribe implements SubscriptionEvent {
  const _Subscribe({required this.planCode});
  

 final  String planCode;

/// Create a copy of SubscriptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscribeCopyWith<_Subscribe> get copyWith => __$SubscribeCopyWithImpl<_Subscribe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscribe&&(identical(other.planCode, planCode) || other.planCode == planCode));
}


@override
int get hashCode => Object.hash(runtimeType,planCode);

@override
String toString() {
  return 'SubscriptionEvent.subscribe(planCode: $planCode)';
}


}

/// @nodoc
abstract mixin class _$SubscribeCopyWith<$Res> implements $SubscriptionEventCopyWith<$Res> {
  factory _$SubscribeCopyWith(_Subscribe value, $Res Function(_Subscribe) _then) = __$SubscribeCopyWithImpl;
@useResult
$Res call({
 String planCode
});




}
/// @nodoc
class __$SubscribeCopyWithImpl<$Res>
    implements _$SubscribeCopyWith<$Res> {
  __$SubscribeCopyWithImpl(this._self, this._then);

  final _Subscribe _self;
  final $Res Function(_Subscribe) _then;

/// Create a copy of SubscriptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? planCode = null,}) {
  return _then(_Subscribe(
planCode: null == planCode ? _self.planCode : planCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PaymentSuccess implements SubscriptionEvent {
  const _PaymentSuccess({required this.paymentId, required this.orderId, required this.signature});
  

 final  String paymentId;
 final  String orderId;
 final  String signature;

/// Create a copy of SubscriptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentSuccessCopyWith<_PaymentSuccess> get copyWith => __$PaymentSuccessCopyWithImpl<_PaymentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentSuccess&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.signature, signature) || other.signature == signature));
}


@override
int get hashCode => Object.hash(runtimeType,paymentId,orderId,signature);

@override
String toString() {
  return 'SubscriptionEvent.paymentSuccess(paymentId: $paymentId, orderId: $orderId, signature: $signature)';
}


}

/// @nodoc
abstract mixin class _$PaymentSuccessCopyWith<$Res> implements $SubscriptionEventCopyWith<$Res> {
  factory _$PaymentSuccessCopyWith(_PaymentSuccess value, $Res Function(_PaymentSuccess) _then) = __$PaymentSuccessCopyWithImpl;
@useResult
$Res call({
 String paymentId, String orderId, String signature
});




}
/// @nodoc
class __$PaymentSuccessCopyWithImpl<$Res>
    implements _$PaymentSuccessCopyWith<$Res> {
  __$PaymentSuccessCopyWithImpl(this._self, this._then);

  final _PaymentSuccess _self;
  final $Res Function(_PaymentSuccess) _then;

/// Create a copy of SubscriptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? paymentId = null,Object? orderId = null,Object? signature = null,}) {
  return _then(_PaymentSuccess(
paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PaymentFailure implements SubscriptionEvent {
  const _PaymentFailure({required this.message});
  

 final  String message;

/// Create a copy of SubscriptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentFailureCopyWith<_PaymentFailure> get copyWith => __$PaymentFailureCopyWithImpl<_PaymentFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubscriptionEvent.paymentFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$PaymentFailureCopyWith<$Res> implements $SubscriptionEventCopyWith<$Res> {
  factory _$PaymentFailureCopyWith(_PaymentFailure value, $Res Function(_PaymentFailure) _then) = __$PaymentFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$PaymentFailureCopyWithImpl<$Res>
    implements _$PaymentFailureCopyWith<$Res> {
  __$PaymentFailureCopyWithImpl(this._self, this._then);

  final _PaymentFailure _self;
  final $Res Function(_PaymentFailure) _then;

/// Create a copy of SubscriptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_PaymentFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubscriptionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState()';
}


}

/// @nodoc
class $SubscriptionStateCopyWith<$Res>  {
$SubscriptionStateCopyWith(SubscriptionState _, $Res Function(SubscriptionState) __);
}


/// Adds pattern-matching-related methods to [SubscriptionState].
extension SubscriptionStatePatterns on SubscriptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _PlansLoaded value)?  plansLoaded,TResult Function( _SubscriptionLoaded value)?  subscriptionLoaded,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _PlansLoaded() when plansLoaded != null:
return plansLoaded(_that);case _SubscriptionLoaded() when subscriptionLoaded != null:
return subscriptionLoaded(_that);case _Success() when success != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _PlansLoaded value)  plansLoaded,required TResult Function( _SubscriptionLoaded value)  subscriptionLoaded,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _PlansLoaded():
return plansLoaded(_that);case _SubscriptionLoaded():
return subscriptionLoaded(_that);case _Success():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _PlansLoaded value)?  plansLoaded,TResult? Function( _SubscriptionLoaded value)?  subscriptionLoaded,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _PlansLoaded() when plansLoaded != null:
return plansLoaded(_that);case _SubscriptionLoaded() when subscriptionLoaded != null:
return subscriptionLoaded(_that);case _Success() when success != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<dynamic> plans)?  plansLoaded,TResult Function( Map<String, dynamic>? subscription)?  subscriptionLoaded,TResult Function( String message)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _PlansLoaded() when plansLoaded != null:
return plansLoaded(_that.plans);case _SubscriptionLoaded() when subscriptionLoaded != null:
return subscriptionLoaded(_that.subscription);case _Success() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<dynamic> plans)  plansLoaded,required TResult Function( Map<String, dynamic>? subscription)  subscriptionLoaded,required TResult Function( String message)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _PlansLoaded():
return plansLoaded(_that.plans);case _SubscriptionLoaded():
return subscriptionLoaded(_that.subscription);case _Success():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<dynamic> plans)?  plansLoaded,TResult? Function( Map<String, dynamic>? subscription)?  subscriptionLoaded,TResult? Function( String message)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _PlansLoaded() when plansLoaded != null:
return plansLoaded(_that.plans);case _SubscriptionLoaded() when subscriptionLoaded != null:
return subscriptionLoaded(_that.subscription);case _Success() when success != null:
return success(_that.message);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SubscriptionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState.initial()';
}


}




/// @nodoc


class _Loading implements SubscriptionState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState.loading()';
}


}




/// @nodoc


class _PlansLoaded implements SubscriptionState {
  const _PlansLoaded({required final  List<dynamic> plans}): _plans = plans;
  

 final  List<dynamic> _plans;
 List<dynamic> get plans {
  if (_plans is EqualUnmodifiableListView) return _plans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plans);
}


/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlansLoadedCopyWith<_PlansLoaded> get copyWith => __$PlansLoadedCopyWithImpl<_PlansLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlansLoaded&&const DeepCollectionEquality().equals(other._plans, _plans));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_plans));

@override
String toString() {
  return 'SubscriptionState.plansLoaded(plans: $plans)';
}


}

/// @nodoc
abstract mixin class _$PlansLoadedCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory _$PlansLoadedCopyWith(_PlansLoaded value, $Res Function(_PlansLoaded) _then) = __$PlansLoadedCopyWithImpl;
@useResult
$Res call({
 List<dynamic> plans
});




}
/// @nodoc
class __$PlansLoadedCopyWithImpl<$Res>
    implements _$PlansLoadedCopyWith<$Res> {
  __$PlansLoadedCopyWithImpl(this._self, this._then);

  final _PlansLoaded _self;
  final $Res Function(_PlansLoaded) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plans = null,}) {
  return _then(_PlansLoaded(
plans: null == plans ? _self._plans : plans // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

/// @nodoc


class _SubscriptionLoaded implements SubscriptionState {
  const _SubscriptionLoaded({required final  Map<String, dynamic>? subscription}): _subscription = subscription;
  

 final  Map<String, dynamic>? _subscription;
 Map<String, dynamic>? get subscription {
  final value = _subscription;
  if (value == null) return null;
  if (_subscription is EqualUnmodifiableMapView) return _subscription;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionLoadedCopyWith<_SubscriptionLoaded> get copyWith => __$SubscriptionLoadedCopyWithImpl<_SubscriptionLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionLoaded&&const DeepCollectionEquality().equals(other._subscription, _subscription));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_subscription));

@override
String toString() {
  return 'SubscriptionState.subscriptionLoaded(subscription: $subscription)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionLoadedCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory _$SubscriptionLoadedCopyWith(_SubscriptionLoaded value, $Res Function(_SubscriptionLoaded) _then) = __$SubscriptionLoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? subscription
});




}
/// @nodoc
class __$SubscriptionLoadedCopyWithImpl<$Res>
    implements _$SubscriptionLoadedCopyWith<$Res> {
  __$SubscriptionLoadedCopyWithImpl(this._self, this._then);

  final _SubscriptionLoaded _self;
  final $Res Function(_SubscriptionLoaded) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? subscription = freezed,}) {
  return _then(_SubscriptionLoaded(
subscription: freezed == subscription ? _self._subscription : subscription // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

/// @nodoc


class _Success implements SubscriptionState {
  const _Success({required this.message});
  

 final  String message;

/// Create a copy of SubscriptionState
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
  return 'SubscriptionState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
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

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Error implements SubscriptionState {
  const _Error({required this.message});
  

 final  String message;

/// Create a copy of SubscriptionState
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
  return 'SubscriptionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
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

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
