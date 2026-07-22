// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWalletDetails,
    required TResult Function(double amount) requestWithdrawal,
    required TResult Function(double amount) initiateTopUp,
    required TResult Function(
            String orderId, String paymentId, String signature)
        processTopUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWalletDetails,
    TResult? Function(double amount)? requestWithdrawal,
    TResult? Function(double amount)? initiateTopUp,
    TResult? Function(String orderId, String paymentId, String signature)?
        processTopUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWalletDetails,
    TResult Function(double amount)? requestWithdrawal,
    TResult Function(double amount)? initiateTopUp,
    TResult Function(String orderId, String paymentId, String signature)?
        processTopUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWalletDetails value) fetchWalletDetails,
    required TResult Function(_RequestWithdrawal value) requestWithdrawal,
    required TResult Function(_InitiateTopUp value) initiateTopUp,
    required TResult Function(_ProcessTopUp value) processTopUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult? Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult? Function(_InitiateTopUp value)? initiateTopUp,
    TResult? Function(_ProcessTopUp value)? processTopUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult Function(_InitiateTopUp value)? initiateTopUp,
    TResult Function(_ProcessTopUp value)? processTopUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchWalletDetailsImplCopyWith<$Res> {
  factory _$$FetchWalletDetailsImplCopyWith(_$FetchWalletDetailsImpl value,
          $Res Function(_$FetchWalletDetailsImpl) then) =
      __$$FetchWalletDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchWalletDetailsImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$FetchWalletDetailsImpl>
    implements _$$FetchWalletDetailsImplCopyWith<$Res> {
  __$$FetchWalletDetailsImplCopyWithImpl(_$FetchWalletDetailsImpl _value,
      $Res Function(_$FetchWalletDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchWalletDetailsImpl implements _FetchWalletDetails {
  const _$FetchWalletDetailsImpl();

  @override
  String toString() {
    return 'WalletEvent.fetchWalletDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchWalletDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWalletDetails,
    required TResult Function(double amount) requestWithdrawal,
    required TResult Function(double amount) initiateTopUp,
    required TResult Function(
            String orderId, String paymentId, String signature)
        processTopUp,
  }) {
    return fetchWalletDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWalletDetails,
    TResult? Function(double amount)? requestWithdrawal,
    TResult? Function(double amount)? initiateTopUp,
    TResult? Function(String orderId, String paymentId, String signature)?
        processTopUp,
  }) {
    return fetchWalletDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWalletDetails,
    TResult Function(double amount)? requestWithdrawal,
    TResult Function(double amount)? initiateTopUp,
    TResult Function(String orderId, String paymentId, String signature)?
        processTopUp,
    required TResult orElse(),
  }) {
    if (fetchWalletDetails != null) {
      return fetchWalletDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWalletDetails value) fetchWalletDetails,
    required TResult Function(_RequestWithdrawal value) requestWithdrawal,
    required TResult Function(_InitiateTopUp value) initiateTopUp,
    required TResult Function(_ProcessTopUp value) processTopUp,
  }) {
    return fetchWalletDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult? Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult? Function(_InitiateTopUp value)? initiateTopUp,
    TResult? Function(_ProcessTopUp value)? processTopUp,
  }) {
    return fetchWalletDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult Function(_InitiateTopUp value)? initiateTopUp,
    TResult Function(_ProcessTopUp value)? processTopUp,
    required TResult orElse(),
  }) {
    if (fetchWalletDetails != null) {
      return fetchWalletDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchWalletDetails implements WalletEvent {
  const factory _FetchWalletDetails() = _$FetchWalletDetailsImpl;
}

/// @nodoc
abstract class _$$RequestWithdrawalImplCopyWith<$Res> {
  factory _$$RequestWithdrawalImplCopyWith(_$RequestWithdrawalImpl value,
          $Res Function(_$RequestWithdrawalImpl) then) =
      __$$RequestWithdrawalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$RequestWithdrawalImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$RequestWithdrawalImpl>
    implements _$$RequestWithdrawalImplCopyWith<$Res> {
  __$$RequestWithdrawalImplCopyWithImpl(_$RequestWithdrawalImpl _value,
      $Res Function(_$RequestWithdrawalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$RequestWithdrawalImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RequestWithdrawalImpl implements _RequestWithdrawal {
  const _$RequestWithdrawalImpl({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'WalletEvent.requestWithdrawal(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestWithdrawalImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestWithdrawalImplCopyWith<_$RequestWithdrawalImpl> get copyWith =>
      __$$RequestWithdrawalImplCopyWithImpl<_$RequestWithdrawalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWalletDetails,
    required TResult Function(double amount) requestWithdrawal,
    required TResult Function(double amount) initiateTopUp,
    required TResult Function(
            String orderId, String paymentId, String signature)
        processTopUp,
  }) {
    return requestWithdrawal(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWalletDetails,
    TResult? Function(double amount)? requestWithdrawal,
    TResult? Function(double amount)? initiateTopUp,
    TResult? Function(String orderId, String paymentId, String signature)?
        processTopUp,
  }) {
    return requestWithdrawal?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWalletDetails,
    TResult Function(double amount)? requestWithdrawal,
    TResult Function(double amount)? initiateTopUp,
    TResult Function(String orderId, String paymentId, String signature)?
        processTopUp,
    required TResult orElse(),
  }) {
    if (requestWithdrawal != null) {
      return requestWithdrawal(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWalletDetails value) fetchWalletDetails,
    required TResult Function(_RequestWithdrawal value) requestWithdrawal,
    required TResult Function(_InitiateTopUp value) initiateTopUp,
    required TResult Function(_ProcessTopUp value) processTopUp,
  }) {
    return requestWithdrawal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult? Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult? Function(_InitiateTopUp value)? initiateTopUp,
    TResult? Function(_ProcessTopUp value)? processTopUp,
  }) {
    return requestWithdrawal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult Function(_InitiateTopUp value)? initiateTopUp,
    TResult Function(_ProcessTopUp value)? processTopUp,
    required TResult orElse(),
  }) {
    if (requestWithdrawal != null) {
      return requestWithdrawal(this);
    }
    return orElse();
  }
}

abstract class _RequestWithdrawal implements WalletEvent {
  const factory _RequestWithdrawal({required final double amount}) =
      _$RequestWithdrawalImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$RequestWithdrawalImplCopyWith<_$RequestWithdrawalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitiateTopUpImplCopyWith<$Res> {
  factory _$$InitiateTopUpImplCopyWith(
          _$InitiateTopUpImpl value, $Res Function(_$InitiateTopUpImpl) then) =
      __$$InitiateTopUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$InitiateTopUpImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$InitiateTopUpImpl>
    implements _$$InitiateTopUpImplCopyWith<$Res> {
  __$$InitiateTopUpImplCopyWithImpl(
      _$InitiateTopUpImpl _value, $Res Function(_$InitiateTopUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$InitiateTopUpImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InitiateTopUpImpl implements _InitiateTopUp {
  const _$InitiateTopUpImpl({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'WalletEvent.initiateTopUp(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateTopUpImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateTopUpImplCopyWith<_$InitiateTopUpImpl> get copyWith =>
      __$$InitiateTopUpImplCopyWithImpl<_$InitiateTopUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWalletDetails,
    required TResult Function(double amount) requestWithdrawal,
    required TResult Function(double amount) initiateTopUp,
    required TResult Function(
            String orderId, String paymentId, String signature)
        processTopUp,
  }) {
    return initiateTopUp(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWalletDetails,
    TResult? Function(double amount)? requestWithdrawal,
    TResult? Function(double amount)? initiateTopUp,
    TResult? Function(String orderId, String paymentId, String signature)?
        processTopUp,
  }) {
    return initiateTopUp?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWalletDetails,
    TResult Function(double amount)? requestWithdrawal,
    TResult Function(double amount)? initiateTopUp,
    TResult Function(String orderId, String paymentId, String signature)?
        processTopUp,
    required TResult orElse(),
  }) {
    if (initiateTopUp != null) {
      return initiateTopUp(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWalletDetails value) fetchWalletDetails,
    required TResult Function(_RequestWithdrawal value) requestWithdrawal,
    required TResult Function(_InitiateTopUp value) initiateTopUp,
    required TResult Function(_ProcessTopUp value) processTopUp,
  }) {
    return initiateTopUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult? Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult? Function(_InitiateTopUp value)? initiateTopUp,
    TResult? Function(_ProcessTopUp value)? processTopUp,
  }) {
    return initiateTopUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult Function(_InitiateTopUp value)? initiateTopUp,
    TResult Function(_ProcessTopUp value)? processTopUp,
    required TResult orElse(),
  }) {
    if (initiateTopUp != null) {
      return initiateTopUp(this);
    }
    return orElse();
  }
}

abstract class _InitiateTopUp implements WalletEvent {
  const factory _InitiateTopUp({required final double amount}) =
      _$InitiateTopUpImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$InitiateTopUpImplCopyWith<_$InitiateTopUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessTopUpImplCopyWith<$Res> {
  factory _$$ProcessTopUpImplCopyWith(
          _$ProcessTopUpImpl value, $Res Function(_$ProcessTopUpImpl) then) =
      __$$ProcessTopUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String paymentId, String signature});
}

/// @nodoc
class __$$ProcessTopUpImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ProcessTopUpImpl>
    implements _$$ProcessTopUpImplCopyWith<$Res> {
  __$$ProcessTopUpImplCopyWithImpl(
      _$ProcessTopUpImpl _value, $Res Function(_$ProcessTopUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? paymentId = null,
    Object? signature = null,
  }) {
    return _then(_$ProcessTopUpImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessTopUpImpl implements _ProcessTopUp {
  const _$ProcessTopUpImpl(
      {required this.orderId,
      required this.paymentId,
      required this.signature});

  @override
  final String orderId;
  @override
  final String paymentId;
  @override
  final String signature;

  @override
  String toString() {
    return 'WalletEvent.processTopUp(orderId: $orderId, paymentId: $paymentId, signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessTopUpImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, paymentId, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessTopUpImplCopyWith<_$ProcessTopUpImpl> get copyWith =>
      __$$ProcessTopUpImplCopyWithImpl<_$ProcessTopUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchWalletDetails,
    required TResult Function(double amount) requestWithdrawal,
    required TResult Function(double amount) initiateTopUp,
    required TResult Function(
            String orderId, String paymentId, String signature)
        processTopUp,
  }) {
    return processTopUp(orderId, paymentId, signature);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchWalletDetails,
    TResult? Function(double amount)? requestWithdrawal,
    TResult? Function(double amount)? initiateTopUp,
    TResult? Function(String orderId, String paymentId, String signature)?
        processTopUp,
  }) {
    return processTopUp?.call(orderId, paymentId, signature);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchWalletDetails,
    TResult Function(double amount)? requestWithdrawal,
    TResult Function(double amount)? initiateTopUp,
    TResult Function(String orderId, String paymentId, String signature)?
        processTopUp,
    required TResult orElse(),
  }) {
    if (processTopUp != null) {
      return processTopUp(orderId, paymentId, signature);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWalletDetails value) fetchWalletDetails,
    required TResult Function(_RequestWithdrawal value) requestWithdrawal,
    required TResult Function(_InitiateTopUp value) initiateTopUp,
    required TResult Function(_ProcessTopUp value) processTopUp,
  }) {
    return processTopUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult? Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult? Function(_InitiateTopUp value)? initiateTopUp,
    TResult? Function(_ProcessTopUp value)? processTopUp,
  }) {
    return processTopUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWalletDetails value)? fetchWalletDetails,
    TResult Function(_RequestWithdrawal value)? requestWithdrawal,
    TResult Function(_InitiateTopUp value)? initiateTopUp,
    TResult Function(_ProcessTopUp value)? processTopUp,
    required TResult orElse(),
  }) {
    if (processTopUp != null) {
      return processTopUp(this);
    }
    return orElse();
  }
}

abstract class _ProcessTopUp implements WalletEvent {
  const factory _ProcessTopUp(
      {required final String orderId,
      required final String paymentId,
      required final String signature}) = _$ProcessTopUpImpl;

  String get orderId;
  String get paymentId;
  String get signature;
  @JsonKey(ignore: true)
  _$$ProcessTopUpImplCopyWith<_$ProcessTopUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
