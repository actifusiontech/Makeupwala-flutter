// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubscriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
    SubscriptionEvent value,
    $Res Function(SubscriptionEvent) then,
  ) = _$SubscriptionEventCopyWithImpl<$Res, SubscriptionEvent>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res, $Val extends SubscriptionEvent>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchPlansImplCopyWith<$Res> {
  factory _$$FetchPlansImplCopyWith(
    _$FetchPlansImpl value,
    $Res Function(_$FetchPlansImpl) then,
  ) = __$$FetchPlansImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPlansImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$FetchPlansImpl>
    implements _$$FetchPlansImplCopyWith<$Res> {
  __$$FetchPlansImplCopyWithImpl(
    _$FetchPlansImpl _value,
    $Res Function(_$FetchPlansImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPlansImpl implements _FetchPlans {
  const _$FetchPlansImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.fetchPlans()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPlansImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return fetchPlans();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return fetchPlans?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (fetchPlans != null) {
      return fetchPlans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return fetchPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return fetchPlans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (fetchPlans != null) {
      return fetchPlans(this);
    }
    return orElse();
  }
}

abstract class _FetchPlans implements SubscriptionEvent {
  const factory _FetchPlans() = _$FetchPlansImpl;
}

/// @nodoc
abstract class _$$FetchMySubscriptionImplCopyWith<$Res> {
  factory _$$FetchMySubscriptionImplCopyWith(
    _$FetchMySubscriptionImpl value,
    $Res Function(_$FetchMySubscriptionImpl) then,
  ) = __$$FetchMySubscriptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMySubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$FetchMySubscriptionImpl>
    implements _$$FetchMySubscriptionImplCopyWith<$Res> {
  __$$FetchMySubscriptionImplCopyWithImpl(
    _$FetchMySubscriptionImpl _value,
    $Res Function(_$FetchMySubscriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchMySubscriptionImpl implements _FetchMySubscription {
  const _$FetchMySubscriptionImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.fetchMySubscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMySubscriptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return fetchMySubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return fetchMySubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (fetchMySubscription != null) {
      return fetchMySubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return fetchMySubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return fetchMySubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (fetchMySubscription != null) {
      return fetchMySubscription(this);
    }
    return orElse();
  }
}

abstract class _FetchMySubscription implements SubscriptionEvent {
  const factory _FetchMySubscription() = _$FetchMySubscriptionImpl;
}

/// @nodoc
abstract class _$$SubscribeImplCopyWith<$Res> {
  factory _$$SubscribeImplCopyWith(
    _$SubscribeImpl value,
    $Res Function(_$SubscribeImpl) then,
  ) = __$$SubscribeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String planCode});
}

/// @nodoc
class __$$SubscribeImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$SubscribeImpl>
    implements _$$SubscribeImplCopyWith<$Res> {
  __$$SubscribeImplCopyWithImpl(
    _$SubscribeImpl _value,
    $Res Function(_$SubscribeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? planCode = null}) {
    return _then(
      _$SubscribeImpl(
        planCode: null == planCode
            ? _value.planCode
            : planCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubscribeImpl implements _Subscribe {
  const _$SubscribeImpl({required this.planCode});

  @override
  final String planCode;

  @override
  String toString() {
    return 'SubscriptionEvent.subscribe(planCode: $planCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeImpl &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, planCode);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscribeImplCopyWith<_$SubscribeImpl> get copyWith =>
      __$$SubscribeImplCopyWithImpl<_$SubscribeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return subscribe(planCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return subscribe?.call(planCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(planCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements SubscriptionEvent {
  const factory _Subscribe({required final String planCode}) = _$SubscribeImpl;

  String get planCode;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscribeImplCopyWith<_$SubscribeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSuccessImplCopyWith<$Res> {
  factory _$$PaymentSuccessImplCopyWith(
    _$PaymentSuccessImpl value,
    $Res Function(_$PaymentSuccessImpl) then,
  ) = __$$PaymentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentId, String orderId, String signature});
}

/// @nodoc
class __$$PaymentSuccessImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$PaymentSuccessImpl>
    implements _$$PaymentSuccessImplCopyWith<$Res> {
  __$$PaymentSuccessImplCopyWithImpl(
    _$PaymentSuccessImpl _value,
    $Res Function(_$PaymentSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? orderId = null,
    Object? signature = null,
  }) {
    return _then(
      _$PaymentSuccessImpl(
        paymentId: null == paymentId
            ? _value.paymentId
            : paymentId // ignore: cast_nullable_to_non_nullable
                  as String,
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as String,
        signature: null == signature
            ? _value.signature
            : signature // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PaymentSuccessImpl implements _PaymentSuccess {
  const _$PaymentSuccessImpl({
    required this.paymentId,
    required this.orderId,
    required this.signature,
  });

  @override
  final String paymentId;
  @override
  final String orderId;
  @override
  final String signature;

  @override
  String toString() {
    return 'SubscriptionEvent.paymentSuccess(paymentId: $paymentId, orderId: $orderId, signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccessImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentId, orderId, signature);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      __$$PaymentSuccessImplCopyWithImpl<_$PaymentSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return paymentSuccess(paymentId, orderId, signature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return paymentSuccess?.call(paymentId, orderId, signature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(paymentId, orderId, signature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSuccess implements SubscriptionEvent {
  const factory _PaymentSuccess({
    required final String paymentId,
    required final String orderId,
    required final String signature,
  }) = _$PaymentSuccessImpl;

  String get paymentId;
  String get orderId;
  String get signature;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentFailureImplCopyWith<$Res> {
  factory _$$PaymentFailureImplCopyWith(
    _$PaymentFailureImpl value,
    $Res Function(_$PaymentFailureImpl) then,
  ) = __$$PaymentFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaymentFailureImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$PaymentFailureImpl>
    implements _$$PaymentFailureImplCopyWith<$Res> {
  __$$PaymentFailureImplCopyWithImpl(
    _$PaymentFailureImpl _value,
    $Res Function(_$PaymentFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PaymentFailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PaymentFailureImpl implements _PaymentFailure {
  const _$PaymentFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SubscriptionEvent.paymentFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailureImplCopyWith<_$PaymentFailureImpl> get copyWith =>
      __$$PaymentFailureImplCopyWithImpl<_$PaymentFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return paymentFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return paymentFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return paymentFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return paymentFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (paymentFailure != null) {
      return paymentFailure(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailure implements SubscriptionEvent {
  const factory _PaymentFailure({required final String message}) =
      _$PaymentFailureImpl;

  String get message;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFailureImplCopyWith<_$PaymentFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpgradeSubscriptionImplCopyWith<$Res> {
  factory _$$UpgradeSubscriptionImplCopyWith(
    _$UpgradeSubscriptionImpl value,
    $Res Function(_$UpgradeSubscriptionImpl) then,
  ) = __$$UpgradeSubscriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String planCode});
}

/// @nodoc
class __$$UpgradeSubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$UpgradeSubscriptionImpl>
    implements _$$UpgradeSubscriptionImplCopyWith<$Res> {
  __$$UpgradeSubscriptionImplCopyWithImpl(
    _$UpgradeSubscriptionImpl _value,
    $Res Function(_$UpgradeSubscriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? planCode = null}) {
    return _then(
      _$UpgradeSubscriptionImpl(
        planCode: null == planCode
            ? _value.planCode
            : planCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UpgradeSubscriptionImpl implements _UpgradeSubscription {
  const _$UpgradeSubscriptionImpl({required this.planCode});

  @override
  final String planCode;

  @override
  String toString() {
    return 'SubscriptionEvent.upgradeSubscription(planCode: $planCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpgradeSubscriptionImpl &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, planCode);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpgradeSubscriptionImplCopyWith<_$UpgradeSubscriptionImpl> get copyWith =>
      __$$UpgradeSubscriptionImplCopyWithImpl<_$UpgradeSubscriptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return upgradeSubscription(planCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return upgradeSubscription?.call(planCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (upgradeSubscription != null) {
      return upgradeSubscription(planCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return upgradeSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return upgradeSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (upgradeSubscription != null) {
      return upgradeSubscription(this);
    }
    return orElse();
  }
}

abstract class _UpgradeSubscription implements SubscriptionEvent {
  const factory _UpgradeSubscription({required final String planCode}) =
      _$UpgradeSubscriptionImpl;

  String get planCode;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpgradeSubscriptionImplCopyWith<_$UpgradeSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseSubscriptionImplCopyWith<$Res> {
  factory _$$PauseSubscriptionImplCopyWith(
    _$PauseSubscriptionImpl value,
    $Res Function(_$PauseSubscriptionImpl) then,
  ) = __$$PauseSubscriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$PauseSubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$PauseSubscriptionImpl>
    implements _$$PauseSubscriptionImplCopyWith<$Res> {
  __$$PauseSubscriptionImplCopyWithImpl(
    _$PauseSubscriptionImpl _value,
    $Res Function(_$PauseSubscriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reason = null}) {
    return _then(
      _$PauseSubscriptionImpl(
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PauseSubscriptionImpl implements _PauseSubscription {
  const _$PauseSubscriptionImpl({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'SubscriptionEvent.pauseSubscription(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseSubscriptionImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseSubscriptionImplCopyWith<_$PauseSubscriptionImpl> get copyWith =>
      __$$PauseSubscriptionImplCopyWithImpl<_$PauseSubscriptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return pauseSubscription(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return pauseSubscription?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (pauseSubscription != null) {
      return pauseSubscription(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return pauseSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return pauseSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (pauseSubscription != null) {
      return pauseSubscription(this);
    }
    return orElse();
  }
}

abstract class _PauseSubscription implements SubscriptionEvent {
  const factory _PauseSubscription({required final String reason}) =
      _$PauseSubscriptionImpl;

  String get reason;

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PauseSubscriptionImplCopyWith<_$PauseSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResumeSubscriptionImplCopyWith<$Res> {
  factory _$$ResumeSubscriptionImplCopyWith(
    _$ResumeSubscriptionImpl value,
    $Res Function(_$ResumeSubscriptionImpl) then,
  ) = __$$ResumeSubscriptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeSubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$ResumeSubscriptionImpl>
    implements _$$ResumeSubscriptionImplCopyWith<$Res> {
  __$$ResumeSubscriptionImplCopyWithImpl(
    _$ResumeSubscriptionImpl _value,
    $Res Function(_$ResumeSubscriptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeSubscriptionImpl implements _ResumeSubscription {
  const _$ResumeSubscriptionImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.resumeSubscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeSubscriptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return resumeSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return resumeSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (resumeSubscription != null) {
      return resumeSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return resumeSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return resumeSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (resumeSubscription != null) {
      return resumeSubscription(this);
    }
    return orElse();
  }
}

abstract class _ResumeSubscription implements SubscriptionEvent {
  const factory _ResumeSubscription() = _$ResumeSubscriptionImpl;
}

/// @nodoc
abstract class _$$FetchHistoryImplCopyWith<$Res> {
  factory _$$FetchHistoryImplCopyWith(
    _$FetchHistoryImpl value,
    $Res Function(_$FetchHistoryImpl) then,
  ) = __$$FetchHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHistoryImplCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$FetchHistoryImpl>
    implements _$$FetchHistoryImplCopyWith<$Res> {
  __$$FetchHistoryImplCopyWithImpl(
    _$FetchHistoryImpl _value,
    $Res Function(_$FetchHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchHistoryImpl implements _FetchHistory {
  const _$FetchHistoryImpl();

  @override
  String toString() {
    return 'SubscriptionEvent.fetchHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function() fetchMySubscription,
    required TResult Function(String planCode) subscribe,
    required TResult Function(
      String paymentId,
      String orderId,
      String signature,
    )
    paymentSuccess,
    required TResult Function(String message) paymentFailure,
    required TResult Function(String planCode) upgradeSubscription,
    required TResult Function(String reason) pauseSubscription,
    required TResult Function() resumeSubscription,
    required TResult Function() fetchHistory,
  }) {
    return fetchHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function()? fetchMySubscription,
    TResult? Function(String planCode)? subscribe,
    TResult? Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult? Function(String message)? paymentFailure,
    TResult? Function(String planCode)? upgradeSubscription,
    TResult? Function(String reason)? pauseSubscription,
    TResult? Function()? resumeSubscription,
    TResult? Function()? fetchHistory,
  }) {
    return fetchHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function()? fetchMySubscription,
    TResult Function(String planCode)? subscribe,
    TResult Function(String paymentId, String orderId, String signature)?
    paymentSuccess,
    TResult Function(String message)? paymentFailure,
    TResult Function(String planCode)? upgradeSubscription,
    TResult Function(String reason)? pauseSubscription,
    TResult Function()? resumeSubscription,
    TResult Function()? fetchHistory,
    required TResult orElse(),
  }) {
    if (fetchHistory != null) {
      return fetchHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_FetchMySubscription value) fetchMySubscription,
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailure value) paymentFailure,
    required TResult Function(_UpgradeSubscription value) upgradeSubscription,
    required TResult Function(_PauseSubscription value) pauseSubscription,
    required TResult Function(_ResumeSubscription value) resumeSubscription,
    required TResult Function(_FetchHistory value) fetchHistory,
  }) {
    return fetchHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_FetchMySubscription value)? fetchMySubscription,
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailure value)? paymentFailure,
    TResult? Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult? Function(_PauseSubscription value)? pauseSubscription,
    TResult? Function(_ResumeSubscription value)? resumeSubscription,
    TResult? Function(_FetchHistory value)? fetchHistory,
  }) {
    return fetchHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_FetchMySubscription value)? fetchMySubscription,
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailure value)? paymentFailure,
    TResult Function(_UpgradeSubscription value)? upgradeSubscription,
    TResult Function(_PauseSubscription value)? pauseSubscription,
    TResult Function(_ResumeSubscription value)? resumeSubscription,
    TResult Function(_FetchHistory value)? fetchHistory,
    required TResult orElse(),
  }) {
    if (fetchHistory != null) {
      return fetchHistory(this);
    }
    return orElse();
  }
}

abstract class _FetchHistory implements SubscriptionEvent {
  const factory _FetchHistory() = _$FetchHistoryImpl;
}

/// @nodoc
mixin _$SubscriptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
    SubscriptionState value,
    $Res Function(SubscriptionState) then,
  ) = _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionState
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
    extends _$SubscriptionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SubscriptionState.initial()';
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
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
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
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionState {
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
    extends _$SubscriptionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SubscriptionState.loading()';
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
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
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
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SubscriptionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$PlansLoadedImplCopyWith<$Res> {
  factory _$$PlansLoadedImplCopyWith(
    _$PlansLoadedImpl value,
    $Res Function(_$PlansLoadedImpl) then,
  ) = __$$PlansLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> plans});
}

/// @nodoc
class __$$PlansLoadedImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$PlansLoadedImpl>
    implements _$$PlansLoadedImplCopyWith<$Res> {
  __$$PlansLoadedImplCopyWithImpl(
    _$PlansLoadedImpl _value,
    $Res Function(_$PlansLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? plans = null}) {
    return _then(
      _$PlansLoadedImpl(
        plans: null == plans
            ? _value._plans
            : plans // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$PlansLoadedImpl implements _PlansLoaded {
  const _$PlansLoadedImpl({required final List<dynamic> plans})
    : _plans = plans;

  final List<dynamic> _plans;
  @override
  List<dynamic> get plans {
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plans);
  }

  @override
  String toString() {
    return 'SubscriptionState.plansLoaded(plans: $plans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlansLoadedImpl &&
            const DeepCollectionEquality().equals(other._plans, _plans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plans));

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlansLoadedImplCopyWith<_$PlansLoadedImpl> get copyWith =>
      __$$PlansLoadedImplCopyWithImpl<_$PlansLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return plansLoaded(plans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return plansLoaded?.call(plans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
    required TResult orElse(),
  }) {
    if (plansLoaded != null) {
      return plansLoaded(plans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return plansLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return plansLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (plansLoaded != null) {
      return plansLoaded(this);
    }
    return orElse();
  }
}

abstract class _PlansLoaded implements SubscriptionState {
  const factory _PlansLoaded({required final List<dynamic> plans}) =
      _$PlansLoadedImpl;

  List<dynamic> get plans;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlansLoadedImplCopyWith<_$PlansLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionLoadedImplCopyWith<$Res> {
  factory _$$SubscriptionLoadedImplCopyWith(
    _$SubscriptionLoadedImpl value,
    $Res Function(_$SubscriptionLoadedImpl) then,
  ) = __$$SubscriptionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic>? subscription});
}

/// @nodoc
class __$$SubscriptionLoadedImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$SubscriptionLoadedImpl>
    implements _$$SubscriptionLoadedImplCopyWith<$Res> {
  __$$SubscriptionLoadedImplCopyWithImpl(
    _$SubscriptionLoadedImpl _value,
    $Res Function(_$SubscriptionLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? subscription = freezed}) {
    return _then(
      _$SubscriptionLoadedImpl(
        subscription: freezed == subscription
            ? _value._subscription
            : subscription // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$SubscriptionLoadedImpl implements _SubscriptionLoaded {
  const _$SubscriptionLoadedImpl({
    required final Map<String, dynamic>? subscription,
  }) : _subscription = subscription;

  final Map<String, dynamic>? _subscription;
  @override
  Map<String, dynamic>? get subscription {
    final value = _subscription;
    if (value == null) return null;
    if (_subscription is EqualUnmodifiableMapView) return _subscription;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SubscriptionState.subscriptionLoaded(subscription: $subscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._subscription,
              _subscription,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_subscription),
  );

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionLoadedImplCopyWith<_$SubscriptionLoadedImpl> get copyWith =>
      __$$SubscriptionLoadedImplCopyWithImpl<_$SubscriptionLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return subscriptionLoaded(subscription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return subscriptionLoaded?.call(subscription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
    required TResult orElse(),
  }) {
    if (subscriptionLoaded != null) {
      return subscriptionLoaded(subscription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return subscriptionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return subscriptionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (subscriptionLoaded != null) {
      return subscriptionLoaded(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionLoaded implements SubscriptionState {
  const factory _SubscriptionLoaded({
    required final Map<String, dynamic>? subscription,
  }) = _$SubscriptionLoadedImpl;

  Map<String, dynamic>? get subscription;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionLoadedImplCopyWith<_$SubscriptionLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SubscriptionState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SubscriptionState {
  const factory _Success({required final String message}) = _$SuccessImpl;

  String get message;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$SubscriptionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
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
    return 'SubscriptionState.error(message: $message)';
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

  /// Create a copy of SubscriptionState
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
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
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
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SubscriptionState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryLoadedImplCopyWith<$Res> {
  factory _$$HistoryLoadedImplCopyWith(
    _$HistoryLoadedImpl value,
    $Res Function(_$HistoryLoadedImpl) then,
  ) = __$$HistoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> history});
}

/// @nodoc
class __$$HistoryLoadedImplCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$HistoryLoadedImpl>
    implements _$$HistoryLoadedImplCopyWith<$Res> {
  __$$HistoryLoadedImplCopyWithImpl(
    _$HistoryLoadedImpl _value,
    $Res Function(_$HistoryLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? history = null}) {
    return _then(
      _$HistoryLoadedImpl(
        history: null == history
            ? _value._history
            : history // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$HistoryLoadedImpl implements _HistoryLoaded {
  const _$HistoryLoadedImpl({required final List<dynamic> history})
    : _history = history;

  final List<dynamic> _history;
  @override
  List<dynamic> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'SubscriptionState.historyLoaded(history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_history));

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      __$$HistoryLoadedImplCopyWithImpl<_$HistoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> plans) plansLoaded,
    required TResult Function(Map<String, dynamic>? subscription)
    subscriptionLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
    required TResult Function(List<dynamic> history) historyLoaded,
  }) {
    return historyLoaded(history);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> plans)? plansLoaded,
    TResult? Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
    TResult? Function(List<dynamic> history)? historyLoaded,
  }) {
    return historyLoaded?.call(history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> plans)? plansLoaded,
    TResult Function(Map<String, dynamic>? subscription)? subscriptionLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    TResult Function(List<dynamic> history)? historyLoaded,
    required TResult orElse(),
  }) {
    if (historyLoaded != null) {
      return historyLoaded(history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_PlansLoaded value) plansLoaded,
    required TResult Function(_SubscriptionLoaded value) subscriptionLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_HistoryLoaded value) historyLoaded,
  }) {
    return historyLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_PlansLoaded value)? plansLoaded,
    TResult? Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
  }) {
    return historyLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_PlansLoaded value)? plansLoaded,
    TResult Function(_SubscriptionLoaded value)? subscriptionLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    required TResult orElse(),
  }) {
    if (historyLoaded != null) {
      return historyLoaded(this);
    }
    return orElse();
  }
}

abstract class _HistoryLoaded implements SubscriptionState {
  const factory _HistoryLoaded({required final List<dynamic> history}) =
      _$HistoryLoadedImpl;

  List<dynamic> get history;

  /// Create a copy of SubscriptionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
