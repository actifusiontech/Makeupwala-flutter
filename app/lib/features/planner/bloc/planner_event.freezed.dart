// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planner_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlannerEvent {
  String get bookingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId, String name, String role)
        createSquad,
    required TResult Function(String bookingId, String logisticId,
            String statusType, String statusValue)
        updateLogisticsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String name, String role)? createSquad,
    TResult? Function(String bookingId, String logisticId, String statusType,
            String statusValue)?
        updateLogisticsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String name, String role)? createSquad,
    TResult Function(String bookingId, String logisticId, String statusType,
            String statusValue)?
        updateLogisticsStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSquad value) createSquad,
    required TResult Function(_UpdateLogisticsStatus value)
        updateLogisticsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateSquad value)? createSquad,
    TResult? Function(_UpdateLogisticsStatus value)? updateLogisticsStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSquad value)? createSquad,
    TResult Function(_UpdateLogisticsStatus value)? updateLogisticsStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlannerEventCopyWith<PlannerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannerEventCopyWith<$Res> {
  factory $PlannerEventCopyWith(
          PlannerEvent value, $Res Function(PlannerEvent) then) =
      _$PlannerEventCopyWithImpl<$Res, PlannerEvent>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class _$PlannerEventCopyWithImpl<$Res, $Val extends PlannerEvent>
    implements $PlannerEventCopyWith<$Res> {
  _$PlannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_value.copyWith(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSquadImplCopyWith<$Res>
    implements $PlannerEventCopyWith<$Res> {
  factory _$$CreateSquadImplCopyWith(
          _$CreateSquadImpl value, $Res Function(_$CreateSquadImpl) then) =
      __$$CreateSquadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bookingId, String name, String role});
}

/// @nodoc
class __$$CreateSquadImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$CreateSquadImpl>
    implements _$$CreateSquadImplCopyWith<$Res> {
  __$$CreateSquadImplCopyWithImpl(
      _$CreateSquadImpl _value, $Res Function(_$CreateSquadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_$CreateSquadImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateSquadImpl implements _CreateSquad {
  const _$CreateSquadImpl(this.bookingId, this.name, this.role);

  @override
  final String bookingId;
  @override
  final String name;
  @override
  final String role;

  @override
  String toString() {
    return 'PlannerEvent.createSquad(bookingId: $bookingId, name: $name, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSquadImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSquadImplCopyWith<_$CreateSquadImpl> get copyWith =>
      __$$CreateSquadImplCopyWithImpl<_$CreateSquadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId, String name, String role)
        createSquad,
    required TResult Function(String bookingId, String logisticId,
            String statusType, String statusValue)
        updateLogisticsStatus,
  }) {
    return createSquad(bookingId, name, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String name, String role)? createSquad,
    TResult? Function(String bookingId, String logisticId, String statusType,
            String statusValue)?
        updateLogisticsStatus,
  }) {
    return createSquad?.call(bookingId, name, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String name, String role)? createSquad,
    TResult Function(String bookingId, String logisticId, String statusType,
            String statusValue)?
        updateLogisticsStatus,
    required TResult orElse(),
  }) {
    if (createSquad != null) {
      return createSquad(bookingId, name, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSquad value) createSquad,
    required TResult Function(_UpdateLogisticsStatus value)
        updateLogisticsStatus,
  }) {
    return createSquad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateSquad value)? createSquad,
    TResult? Function(_UpdateLogisticsStatus value)? updateLogisticsStatus,
  }) {
    return createSquad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSquad value)? createSquad,
    TResult Function(_UpdateLogisticsStatus value)? updateLogisticsStatus,
    required TResult orElse(),
  }) {
    if (createSquad != null) {
      return createSquad(this);
    }
    return orElse();
  }
}

abstract class _CreateSquad implements PlannerEvent {
  const factory _CreateSquad(
          final String bookingId, final String name, final String role) =
      _$CreateSquadImpl;

  @override
  String get bookingId;
  String get name;
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$CreateSquadImplCopyWith<_$CreateSquadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateLogisticsStatusImplCopyWith<$Res>
    implements $PlannerEventCopyWith<$Res> {
  factory _$$UpdateLogisticsStatusImplCopyWith(
          _$UpdateLogisticsStatusImpl value,
          $Res Function(_$UpdateLogisticsStatusImpl) then) =
      __$$UpdateLogisticsStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bookingId,
      String logisticId,
      String statusType,
      String statusValue});
}

/// @nodoc
class __$$UpdateLogisticsStatusImplCopyWithImpl<$Res>
    extends _$PlannerEventCopyWithImpl<$Res, _$UpdateLogisticsStatusImpl>
    implements _$$UpdateLogisticsStatusImplCopyWith<$Res> {
  __$$UpdateLogisticsStatusImplCopyWithImpl(_$UpdateLogisticsStatusImpl _value,
      $Res Function(_$UpdateLogisticsStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? logisticId = null,
    Object? statusType = null,
    Object? statusValue = null,
  }) {
    return _then(_$UpdateLogisticsStatusImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == logisticId
          ? _value.logisticId
          : logisticId // ignore: cast_nullable_to_non_nullable
              as String,
      null == statusType
          ? _value.statusType
          : statusType // ignore: cast_nullable_to_non_nullable
              as String,
      null == statusValue
          ? _value.statusValue
          : statusValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateLogisticsStatusImpl implements _UpdateLogisticsStatus {
  const _$UpdateLogisticsStatusImpl(
      this.bookingId, this.logisticId, this.statusType, this.statusValue);

  @override
  final String bookingId;
  @override
  final String logisticId;
  @override
  final String statusType;
  @override
  final String statusValue;

  @override
  String toString() {
    return 'PlannerEvent.updateLogisticsStatus(bookingId: $bookingId, logisticId: $logisticId, statusType: $statusType, statusValue: $statusValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLogisticsStatusImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.logisticId, logisticId) ||
                other.logisticId == logisticId) &&
            (identical(other.statusType, statusType) ||
                other.statusType == statusType) &&
            (identical(other.statusValue, statusValue) ||
                other.statusValue == statusValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookingId, logisticId, statusType, statusValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLogisticsStatusImplCopyWith<_$UpdateLogisticsStatusImpl>
      get copyWith => __$$UpdateLogisticsStatusImplCopyWithImpl<
          _$UpdateLogisticsStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId, String name, String role)
        createSquad,
    required TResult Function(String bookingId, String logisticId,
            String statusType, String statusValue)
        updateLogisticsStatus,
  }) {
    return updateLogisticsStatus(
        bookingId, logisticId, statusType, statusValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String name, String role)? createSquad,
    TResult? Function(String bookingId, String logisticId, String statusType,
            String statusValue)?
        updateLogisticsStatus,
  }) {
    return updateLogisticsStatus?.call(
        bookingId, logisticId, statusType, statusValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String name, String role)? createSquad,
    TResult Function(String bookingId, String logisticId, String statusType,
            String statusValue)?
        updateLogisticsStatus,
    required TResult orElse(),
  }) {
    if (updateLogisticsStatus != null) {
      return updateLogisticsStatus(
          bookingId, logisticId, statusType, statusValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSquad value) createSquad,
    required TResult Function(_UpdateLogisticsStatus value)
        updateLogisticsStatus,
  }) {
    return updateLogisticsStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateSquad value)? createSquad,
    TResult? Function(_UpdateLogisticsStatus value)? updateLogisticsStatus,
  }) {
    return updateLogisticsStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSquad value)? createSquad,
    TResult Function(_UpdateLogisticsStatus value)? updateLogisticsStatus,
    required TResult orElse(),
  }) {
    if (updateLogisticsStatus != null) {
      return updateLogisticsStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateLogisticsStatus implements PlannerEvent {
  const factory _UpdateLogisticsStatus(
      final String bookingId,
      final String logisticId,
      final String statusType,
      final String statusValue) = _$UpdateLogisticsStatusImpl;

  @override
  String get bookingId;
  String get logisticId;
  String get statusType;
  String get statusValue;
  @override
  @JsonKey(ignore: true)
  _$$UpdateLogisticsStatusImplCopyWith<_$UpdateLogisticsStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}
