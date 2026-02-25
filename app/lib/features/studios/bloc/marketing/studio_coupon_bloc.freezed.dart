// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'studio_coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudioCouponEvent {
  String get studioId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) fetchCoupons,
    required TResult Function(String studioId, Map<String, dynamic> couponData)
        createCoupon,
    required TResult Function(String studioId) triggerReminders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? fetchCoupons,
    TResult? Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult? Function(String studioId)? triggerReminders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? fetchCoupons,
    TResult Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult Function(String studioId)? triggerReminders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCoupons value) fetchCoupons,
    required TResult Function(_CreateCoupon value) createCoupon,
    required TResult Function(_TriggerReminders value) triggerReminders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCoupons value)? fetchCoupons,
    TResult? Function(_CreateCoupon value)? createCoupon,
    TResult? Function(_TriggerReminders value)? triggerReminders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCoupons value)? fetchCoupons,
    TResult Function(_CreateCoupon value)? createCoupon,
    TResult Function(_TriggerReminders value)? triggerReminders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudioCouponEventCopyWith<StudioCouponEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioCouponEventCopyWith<$Res> {
  factory $StudioCouponEventCopyWith(
          StudioCouponEvent value, $Res Function(StudioCouponEvent) then) =
      _$StudioCouponEventCopyWithImpl<$Res, StudioCouponEvent>;
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class _$StudioCouponEventCopyWithImpl<$Res, $Val extends StudioCouponEvent>
    implements $StudioCouponEventCopyWith<$Res> {
  _$StudioCouponEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_value.copyWith(
      studioId: null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCouponsImplCopyWith<$Res>
    implements $StudioCouponEventCopyWith<$Res> {
  factory _$$FetchCouponsImplCopyWith(
          _$FetchCouponsImpl value, $Res Function(_$FetchCouponsImpl) then) =
      __$$FetchCouponsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class __$$FetchCouponsImplCopyWithImpl<$Res>
    extends _$StudioCouponEventCopyWithImpl<$Res, _$FetchCouponsImpl>
    implements _$$FetchCouponsImplCopyWith<$Res> {
  __$$FetchCouponsImplCopyWithImpl(
      _$FetchCouponsImpl _value, $Res Function(_$FetchCouponsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_$FetchCouponsImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchCouponsImpl implements _FetchCoupons {
  const _$FetchCouponsImpl(this.studioId);

  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioCouponEvent.fetchCoupons(studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCouponsImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCouponsImplCopyWith<_$FetchCouponsImpl> get copyWith =>
      __$$FetchCouponsImplCopyWithImpl<_$FetchCouponsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) fetchCoupons,
    required TResult Function(String studioId, Map<String, dynamic> couponData)
        createCoupon,
    required TResult Function(String studioId) triggerReminders,
  }) {
    return fetchCoupons(studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? fetchCoupons,
    TResult? Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult? Function(String studioId)? triggerReminders,
  }) {
    return fetchCoupons?.call(studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? fetchCoupons,
    TResult Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult Function(String studioId)? triggerReminders,
    required TResult orElse(),
  }) {
    if (fetchCoupons != null) {
      return fetchCoupons(studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCoupons value) fetchCoupons,
    required TResult Function(_CreateCoupon value) createCoupon,
    required TResult Function(_TriggerReminders value) triggerReminders,
  }) {
    return fetchCoupons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCoupons value)? fetchCoupons,
    TResult? Function(_CreateCoupon value)? createCoupon,
    TResult? Function(_TriggerReminders value)? triggerReminders,
  }) {
    return fetchCoupons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCoupons value)? fetchCoupons,
    TResult Function(_CreateCoupon value)? createCoupon,
    TResult Function(_TriggerReminders value)? triggerReminders,
    required TResult orElse(),
  }) {
    if (fetchCoupons != null) {
      return fetchCoupons(this);
    }
    return orElse();
  }
}

abstract class _FetchCoupons implements StudioCouponEvent {
  const factory _FetchCoupons(final String studioId) = _$FetchCouponsImpl;

  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$FetchCouponsImplCopyWith<_$FetchCouponsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCouponImplCopyWith<$Res>
    implements $StudioCouponEventCopyWith<$Res> {
  factory _$$CreateCouponImplCopyWith(
          _$CreateCouponImpl value, $Res Function(_$CreateCouponImpl) then) =
      __$$CreateCouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, Map<String, dynamic> couponData});
}

/// @nodoc
class __$$CreateCouponImplCopyWithImpl<$Res>
    extends _$StudioCouponEventCopyWithImpl<$Res, _$CreateCouponImpl>
    implements _$$CreateCouponImplCopyWith<$Res> {
  __$$CreateCouponImplCopyWithImpl(
      _$CreateCouponImpl _value, $Res Function(_$CreateCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? couponData = null,
  }) {
    return _then(_$CreateCouponImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == couponData
          ? _value._couponData
          : couponData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateCouponImpl implements _CreateCoupon {
  const _$CreateCouponImpl(this.studioId, final Map<String, dynamic> couponData)
      : _couponData = couponData;

  @override
  final String studioId;
  final Map<String, dynamic> _couponData;
  @override
  Map<String, dynamic> get couponData {
    if (_couponData is EqualUnmodifiableMapView) return _couponData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_couponData);
  }

  @override
  String toString() {
    return 'StudioCouponEvent.createCoupon(studioId: $studioId, couponData: $couponData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCouponImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            const DeepCollectionEquality()
                .equals(other._couponData, _couponData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, studioId, const DeepCollectionEquality().hash(_couponData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCouponImplCopyWith<_$CreateCouponImpl> get copyWith =>
      __$$CreateCouponImplCopyWithImpl<_$CreateCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) fetchCoupons,
    required TResult Function(String studioId, Map<String, dynamic> couponData)
        createCoupon,
    required TResult Function(String studioId) triggerReminders,
  }) {
    return createCoupon(studioId, couponData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? fetchCoupons,
    TResult? Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult? Function(String studioId)? triggerReminders,
  }) {
    return createCoupon?.call(studioId, couponData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? fetchCoupons,
    TResult Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult Function(String studioId)? triggerReminders,
    required TResult orElse(),
  }) {
    if (createCoupon != null) {
      return createCoupon(studioId, couponData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCoupons value) fetchCoupons,
    required TResult Function(_CreateCoupon value) createCoupon,
    required TResult Function(_TriggerReminders value) triggerReminders,
  }) {
    return createCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCoupons value)? fetchCoupons,
    TResult? Function(_CreateCoupon value)? createCoupon,
    TResult? Function(_TriggerReminders value)? triggerReminders,
  }) {
    return createCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCoupons value)? fetchCoupons,
    TResult Function(_CreateCoupon value)? createCoupon,
    TResult Function(_TriggerReminders value)? triggerReminders,
    required TResult orElse(),
  }) {
    if (createCoupon != null) {
      return createCoupon(this);
    }
    return orElse();
  }
}

abstract class _CreateCoupon implements StudioCouponEvent {
  const factory _CreateCoupon(
          final String studioId, final Map<String, dynamic> couponData) =
      _$CreateCouponImpl;

  @override
  String get studioId;
  Map<String, dynamic> get couponData;
  @override
  @JsonKey(ignore: true)
  _$$CreateCouponImplCopyWith<_$CreateCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TriggerRemindersImplCopyWith<$Res>
    implements $StudioCouponEventCopyWith<$Res> {
  factory _$$TriggerRemindersImplCopyWith(_$TriggerRemindersImpl value,
          $Res Function(_$TriggerRemindersImpl) then) =
      __$$TriggerRemindersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class __$$TriggerRemindersImplCopyWithImpl<$Res>
    extends _$StudioCouponEventCopyWithImpl<$Res, _$TriggerRemindersImpl>
    implements _$$TriggerRemindersImplCopyWith<$Res> {
  __$$TriggerRemindersImplCopyWithImpl(_$TriggerRemindersImpl _value,
      $Res Function(_$TriggerRemindersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_$TriggerRemindersImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TriggerRemindersImpl implements _TriggerReminders {
  const _$TriggerRemindersImpl(this.studioId);

  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioCouponEvent.triggerReminders(studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerRemindersImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerRemindersImplCopyWith<_$TriggerRemindersImpl> get copyWith =>
      __$$TriggerRemindersImplCopyWithImpl<_$TriggerRemindersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) fetchCoupons,
    required TResult Function(String studioId, Map<String, dynamic> couponData)
        createCoupon,
    required TResult Function(String studioId) triggerReminders,
  }) {
    return triggerReminders(studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? fetchCoupons,
    TResult? Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult? Function(String studioId)? triggerReminders,
  }) {
    return triggerReminders?.call(studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? fetchCoupons,
    TResult Function(String studioId, Map<String, dynamic> couponData)?
        createCoupon,
    TResult Function(String studioId)? triggerReminders,
    required TResult orElse(),
  }) {
    if (triggerReminders != null) {
      return triggerReminders(studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCoupons value) fetchCoupons,
    required TResult Function(_CreateCoupon value) createCoupon,
    required TResult Function(_TriggerReminders value) triggerReminders,
  }) {
    return triggerReminders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCoupons value)? fetchCoupons,
    TResult? Function(_CreateCoupon value)? createCoupon,
    TResult? Function(_TriggerReminders value)? triggerReminders,
  }) {
    return triggerReminders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCoupons value)? fetchCoupons,
    TResult Function(_CreateCoupon value)? createCoupon,
    TResult Function(_TriggerReminders value)? triggerReminders,
    required TResult orElse(),
  }) {
    if (triggerReminders != null) {
      return triggerReminders(this);
    }
    return orElse();
  }
}

abstract class _TriggerReminders implements StudioCouponEvent {
  const factory _TriggerReminders(final String studioId) =
      _$TriggerRemindersImpl;

  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$TriggerRemindersImplCopyWith<_$TriggerRemindersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudioCouponState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> coupons) couponsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> coupons)? couponsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> coupons)? couponsLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CouponsLoaded value) couponsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CouponsLoaded value)? couponsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CouponsLoaded value)? couponsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioCouponStateCopyWith<$Res> {
  factory $StudioCouponStateCopyWith(
          StudioCouponState value, $Res Function(StudioCouponState) then) =
      _$StudioCouponStateCopyWithImpl<$Res, StudioCouponState>;
}

/// @nodoc
class _$StudioCouponStateCopyWithImpl<$Res, $Val extends StudioCouponState>
    implements $StudioCouponStateCopyWith<$Res> {
  _$StudioCouponStateCopyWithImpl(this._value, this._then);

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
    extends _$StudioCouponStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StudioCouponState.initial()';
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
    required TResult Function(List<dynamic> coupons) couponsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> coupons)? couponsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> coupons)? couponsLoaded,
    TResult Function(String message)? success,
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
    required TResult Function(_CouponsLoaded value) couponsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CouponsLoaded value)? couponsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CouponsLoaded value)? couponsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StudioCouponState {
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
    extends _$StudioCouponStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'StudioCouponState.loading()';
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
    required TResult Function(List<dynamic> coupons) couponsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> coupons)? couponsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> coupons)? couponsLoaded,
    TResult Function(String message)? success,
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
    required TResult Function(_CouponsLoaded value) couponsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CouponsLoaded value)? couponsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CouponsLoaded value)? couponsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements StudioCouponState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CouponsLoadedImplCopyWith<$Res> {
  factory _$$CouponsLoadedImplCopyWith(
          _$CouponsLoadedImpl value, $Res Function(_$CouponsLoadedImpl) then) =
      __$$CouponsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> coupons});
}

/// @nodoc
class __$$CouponsLoadedImplCopyWithImpl<$Res>
    extends _$StudioCouponStateCopyWithImpl<$Res, _$CouponsLoadedImpl>
    implements _$$CouponsLoadedImplCopyWith<$Res> {
  __$$CouponsLoadedImplCopyWithImpl(
      _$CouponsLoadedImpl _value, $Res Function(_$CouponsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = null,
  }) {
    return _then(_$CouponsLoadedImpl(
      null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CouponsLoadedImpl implements _CouponsLoaded {
  const _$CouponsLoadedImpl(final List<dynamic> coupons) : _coupons = coupons;

  final List<dynamic> _coupons;
  @override
  List<dynamic> get coupons {
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupons);
  }

  @override
  String toString() {
    return 'StudioCouponState.couponsLoaded(coupons: $coupons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponsLoadedImpl &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponsLoadedImplCopyWith<_$CouponsLoadedImpl> get copyWith =>
      __$$CouponsLoadedImplCopyWithImpl<_$CouponsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> coupons) couponsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return couponsLoaded(coupons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> coupons)? couponsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return couponsLoaded?.call(coupons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> coupons)? couponsLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (couponsLoaded != null) {
      return couponsLoaded(coupons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CouponsLoaded value) couponsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return couponsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CouponsLoaded value)? couponsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return couponsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CouponsLoaded value)? couponsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (couponsLoaded != null) {
      return couponsLoaded(this);
    }
    return orElse();
  }
}

abstract class _CouponsLoaded implements StudioCouponState {
  const factory _CouponsLoaded(final List<dynamic> coupons) =
      _$CouponsLoadedImpl;

  List<dynamic> get coupons;
  @JsonKey(ignore: true)
  _$$CouponsLoadedImplCopyWith<_$CouponsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StudioCouponStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StudioCouponState.success(message: $message)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> coupons) couponsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> coupons)? couponsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> coupons)? couponsLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
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
    required TResult Function(_CouponsLoaded value) couponsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CouponsLoaded value)? couponsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CouponsLoaded value)? couponsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements StudioCouponState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
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
    extends _$StudioCouponStateCopyWithImpl<$Res, _$ErrorImpl>
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
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StudioCouponState.error(message: $message)';
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
    required TResult Function(List<dynamic> coupons) couponsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> coupons)? couponsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> coupons)? couponsLoaded,
    TResult Function(String message)? success,
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
    required TResult Function(_CouponsLoaded value) couponsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CouponsLoaded value)? couponsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CouponsLoaded value)? couponsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements StudioCouponState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
