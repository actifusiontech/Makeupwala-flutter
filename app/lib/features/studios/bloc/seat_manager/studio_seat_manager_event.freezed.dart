// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'studio_seat_manager_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudioSeatManagerEvent {
  String get studioId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadSeats,
    required TResult Function(String studioId, Map<String, dynamic> seatData)
        addSeat,
    required TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)
        updateSeat,
    required TResult Function(String studioId, String seatId) deleteSeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadSeats,
    TResult? Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult? Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult? Function(String studioId, String seatId)? deleteSeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadSeats,
    TResult Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult Function(String studioId, String seatId)? deleteSeat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSeats value) loadSeats,
    required TResult Function(_AddSeat value) addSeat,
    required TResult Function(_UpdateSeat value) updateSeat,
    required TResult Function(_DeleteSeat value) deleteSeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSeats value)? loadSeats,
    TResult? Function(_AddSeat value)? addSeat,
    TResult? Function(_UpdateSeat value)? updateSeat,
    TResult? Function(_DeleteSeat value)? deleteSeat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSeats value)? loadSeats,
    TResult Function(_AddSeat value)? addSeat,
    TResult Function(_UpdateSeat value)? updateSeat,
    TResult Function(_DeleteSeat value)? deleteSeat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudioSeatManagerEventCopyWith<StudioSeatManagerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioSeatManagerEventCopyWith<$Res> {
  factory $StudioSeatManagerEventCopyWith(StudioSeatManagerEvent value,
          $Res Function(StudioSeatManagerEvent) then) =
      _$StudioSeatManagerEventCopyWithImpl<$Res, StudioSeatManagerEvent>;
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class _$StudioSeatManagerEventCopyWithImpl<$Res,
        $Val extends StudioSeatManagerEvent>
    implements $StudioSeatManagerEventCopyWith<$Res> {
  _$StudioSeatManagerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$LoadSeatsImplCopyWith<$Res>
    implements $StudioSeatManagerEventCopyWith<$Res> {
  factory _$$LoadSeatsImplCopyWith(
          _$LoadSeatsImpl value, $Res Function(_$LoadSeatsImpl) then) =
      __$$LoadSeatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class __$$LoadSeatsImplCopyWithImpl<$Res>
    extends _$StudioSeatManagerEventCopyWithImpl<$Res, _$LoadSeatsImpl>
    implements _$$LoadSeatsImplCopyWith<$Res> {
  __$$LoadSeatsImplCopyWithImpl(
      _$LoadSeatsImpl _value, $Res Function(_$LoadSeatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_$LoadSeatsImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSeatsImpl implements _LoadSeats {
  const _$LoadSeatsImpl(this.studioId);

  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioSeatManagerEvent.loadSeats(studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSeatsImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSeatsImplCopyWith<_$LoadSeatsImpl> get copyWith =>
      __$$LoadSeatsImplCopyWithImpl<_$LoadSeatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadSeats,
    required TResult Function(String studioId, Map<String, dynamic> seatData)
        addSeat,
    required TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)
        updateSeat,
    required TResult Function(String studioId, String seatId) deleteSeat,
  }) {
    return loadSeats(studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadSeats,
    TResult? Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult? Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult? Function(String studioId, String seatId)? deleteSeat,
  }) {
    return loadSeats?.call(studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadSeats,
    TResult Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult Function(String studioId, String seatId)? deleteSeat,
    required TResult orElse(),
  }) {
    if (loadSeats != null) {
      return loadSeats(studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSeats value) loadSeats,
    required TResult Function(_AddSeat value) addSeat,
    required TResult Function(_UpdateSeat value) updateSeat,
    required TResult Function(_DeleteSeat value) deleteSeat,
  }) {
    return loadSeats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSeats value)? loadSeats,
    TResult? Function(_AddSeat value)? addSeat,
    TResult? Function(_UpdateSeat value)? updateSeat,
    TResult? Function(_DeleteSeat value)? deleteSeat,
  }) {
    return loadSeats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSeats value)? loadSeats,
    TResult Function(_AddSeat value)? addSeat,
    TResult Function(_UpdateSeat value)? updateSeat,
    TResult Function(_DeleteSeat value)? deleteSeat,
    required TResult orElse(),
  }) {
    if (loadSeats != null) {
      return loadSeats(this);
    }
    return orElse();
  }
}

abstract class _LoadSeats implements StudioSeatManagerEvent {
  const factory _LoadSeats(final String studioId) = _$LoadSeatsImpl;

  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$LoadSeatsImplCopyWith<_$LoadSeatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSeatImplCopyWith<$Res>
    implements $StudioSeatManagerEventCopyWith<$Res> {
  factory _$$AddSeatImplCopyWith(
          _$AddSeatImpl value, $Res Function(_$AddSeatImpl) then) =
      __$$AddSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, Map<String, dynamic> seatData});
}

/// @nodoc
class __$$AddSeatImplCopyWithImpl<$Res>
    extends _$StudioSeatManagerEventCopyWithImpl<$Res, _$AddSeatImpl>
    implements _$$AddSeatImplCopyWith<$Res> {
  __$$AddSeatImplCopyWithImpl(
      _$AddSeatImpl _value, $Res Function(_$AddSeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? seatData = null,
  }) {
    return _then(_$AddSeatImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == seatData
          ? _value._seatData
          : seatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AddSeatImpl implements _AddSeat {
  const _$AddSeatImpl(this.studioId, final Map<String, dynamic> seatData)
      : _seatData = seatData;

  @override
  final String studioId;
  final Map<String, dynamic> _seatData;
  @override
  Map<String, dynamic> get seatData {
    if (_seatData is EqualUnmodifiableMapView) return _seatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_seatData);
  }

  @override
  String toString() {
    return 'StudioSeatManagerEvent.addSeat(studioId: $studioId, seatData: $seatData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSeatImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            const DeepCollectionEquality().equals(other._seatData, _seatData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, studioId, const DeepCollectionEquality().hash(_seatData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSeatImplCopyWith<_$AddSeatImpl> get copyWith =>
      __$$AddSeatImplCopyWithImpl<_$AddSeatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadSeats,
    required TResult Function(String studioId, Map<String, dynamic> seatData)
        addSeat,
    required TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)
        updateSeat,
    required TResult Function(String studioId, String seatId) deleteSeat,
  }) {
    return addSeat(studioId, seatData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadSeats,
    TResult? Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult? Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult? Function(String studioId, String seatId)? deleteSeat,
  }) {
    return addSeat?.call(studioId, seatData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadSeats,
    TResult Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult Function(String studioId, String seatId)? deleteSeat,
    required TResult orElse(),
  }) {
    if (addSeat != null) {
      return addSeat(studioId, seatData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSeats value) loadSeats,
    required TResult Function(_AddSeat value) addSeat,
    required TResult Function(_UpdateSeat value) updateSeat,
    required TResult Function(_DeleteSeat value) deleteSeat,
  }) {
    return addSeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSeats value)? loadSeats,
    TResult? Function(_AddSeat value)? addSeat,
    TResult? Function(_UpdateSeat value)? updateSeat,
    TResult? Function(_DeleteSeat value)? deleteSeat,
  }) {
    return addSeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSeats value)? loadSeats,
    TResult Function(_AddSeat value)? addSeat,
    TResult Function(_UpdateSeat value)? updateSeat,
    TResult Function(_DeleteSeat value)? deleteSeat,
    required TResult orElse(),
  }) {
    if (addSeat != null) {
      return addSeat(this);
    }
    return orElse();
  }
}

abstract class _AddSeat implements StudioSeatManagerEvent {
  const factory _AddSeat(
          final String studioId, final Map<String, dynamic> seatData) =
      _$AddSeatImpl;

  @override
  String get studioId;
  Map<String, dynamic> get seatData;
  @override
  @JsonKey(ignore: true)
  _$$AddSeatImplCopyWith<_$AddSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSeatImplCopyWith<$Res>
    implements $StudioSeatManagerEventCopyWith<$Res> {
  factory _$$UpdateSeatImplCopyWith(
          _$UpdateSeatImpl value, $Res Function(_$UpdateSeatImpl) then) =
      __$$UpdateSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, String seatId, Map<String, dynamic> seatData});
}

/// @nodoc
class __$$UpdateSeatImplCopyWithImpl<$Res>
    extends _$StudioSeatManagerEventCopyWithImpl<$Res, _$UpdateSeatImpl>
    implements _$$UpdateSeatImplCopyWith<$Res> {
  __$$UpdateSeatImplCopyWithImpl(
      _$UpdateSeatImpl _value, $Res Function(_$UpdateSeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? seatId = null,
    Object? seatData = null,
  }) {
    return _then(_$UpdateSeatImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == seatData
          ? _value._seatData
          : seatData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateSeatImpl implements _UpdateSeat {
  const _$UpdateSeatImpl(
      this.studioId, this.seatId, final Map<String, dynamic> seatData)
      : _seatData = seatData;

  @override
  final String studioId;
  @override
  final String seatId;
  final Map<String, dynamic> _seatData;
  @override
  Map<String, dynamic> get seatData {
    if (_seatData is EqualUnmodifiableMapView) return _seatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_seatData);
  }

  @override
  String toString() {
    return 'StudioSeatManagerEvent.updateSeat(studioId: $studioId, seatId: $seatId, seatData: $seatData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSeatImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            const DeepCollectionEquality().equals(other._seatData, _seatData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId, seatId,
      const DeepCollectionEquality().hash(_seatData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSeatImplCopyWith<_$UpdateSeatImpl> get copyWith =>
      __$$UpdateSeatImplCopyWithImpl<_$UpdateSeatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadSeats,
    required TResult Function(String studioId, Map<String, dynamic> seatData)
        addSeat,
    required TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)
        updateSeat,
    required TResult Function(String studioId, String seatId) deleteSeat,
  }) {
    return updateSeat(studioId, seatId, seatData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadSeats,
    TResult? Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult? Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult? Function(String studioId, String seatId)? deleteSeat,
  }) {
    return updateSeat?.call(studioId, seatId, seatData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadSeats,
    TResult Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult Function(String studioId, String seatId)? deleteSeat,
    required TResult orElse(),
  }) {
    if (updateSeat != null) {
      return updateSeat(studioId, seatId, seatData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSeats value) loadSeats,
    required TResult Function(_AddSeat value) addSeat,
    required TResult Function(_UpdateSeat value) updateSeat,
    required TResult Function(_DeleteSeat value) deleteSeat,
  }) {
    return updateSeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSeats value)? loadSeats,
    TResult? Function(_AddSeat value)? addSeat,
    TResult? Function(_UpdateSeat value)? updateSeat,
    TResult? Function(_DeleteSeat value)? deleteSeat,
  }) {
    return updateSeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSeats value)? loadSeats,
    TResult Function(_AddSeat value)? addSeat,
    TResult Function(_UpdateSeat value)? updateSeat,
    TResult Function(_DeleteSeat value)? deleteSeat,
    required TResult orElse(),
  }) {
    if (updateSeat != null) {
      return updateSeat(this);
    }
    return orElse();
  }
}

abstract class _UpdateSeat implements StudioSeatManagerEvent {
  const factory _UpdateSeat(final String studioId, final String seatId,
      final Map<String, dynamic> seatData) = _$UpdateSeatImpl;

  @override
  String get studioId;
  String get seatId;
  Map<String, dynamic> get seatData;
  @override
  @JsonKey(ignore: true)
  _$$UpdateSeatImplCopyWith<_$UpdateSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSeatImplCopyWith<$Res>
    implements $StudioSeatManagerEventCopyWith<$Res> {
  factory _$$DeleteSeatImplCopyWith(
          _$DeleteSeatImpl value, $Res Function(_$DeleteSeatImpl) then) =
      __$$DeleteSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, String seatId});
}

/// @nodoc
class __$$DeleteSeatImplCopyWithImpl<$Res>
    extends _$StudioSeatManagerEventCopyWithImpl<$Res, _$DeleteSeatImpl>
    implements _$$DeleteSeatImplCopyWith<$Res> {
  __$$DeleteSeatImplCopyWithImpl(
      _$DeleteSeatImpl _value, $Res Function(_$DeleteSeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? seatId = null,
  }) {
    return _then(_$DeleteSeatImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      null == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSeatImpl implements _DeleteSeat {
  const _$DeleteSeatImpl(this.studioId, this.seatId);

  @override
  final String studioId;
  @override
  final String seatId;

  @override
  String toString() {
    return 'StudioSeatManagerEvent.deleteSeat(studioId: $studioId, seatId: $seatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSeatImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            (identical(other.seatId, seatId) || other.seatId == seatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId, seatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSeatImplCopyWith<_$DeleteSeatImpl> get copyWith =>
      __$$DeleteSeatImplCopyWithImpl<_$DeleteSeatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadSeats,
    required TResult Function(String studioId, Map<String, dynamic> seatData)
        addSeat,
    required TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)
        updateSeat,
    required TResult Function(String studioId, String seatId) deleteSeat,
  }) {
    return deleteSeat(studioId, seatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadSeats,
    TResult? Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult? Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult? Function(String studioId, String seatId)? deleteSeat,
  }) {
    return deleteSeat?.call(studioId, seatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadSeats,
    TResult Function(String studioId, Map<String, dynamic> seatData)? addSeat,
    TResult Function(
            String studioId, String seatId, Map<String, dynamic> seatData)?
        updateSeat,
    TResult Function(String studioId, String seatId)? deleteSeat,
    required TResult orElse(),
  }) {
    if (deleteSeat != null) {
      return deleteSeat(studioId, seatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSeats value) loadSeats,
    required TResult Function(_AddSeat value) addSeat,
    required TResult Function(_UpdateSeat value) updateSeat,
    required TResult Function(_DeleteSeat value) deleteSeat,
  }) {
    return deleteSeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSeats value)? loadSeats,
    TResult? Function(_AddSeat value)? addSeat,
    TResult? Function(_UpdateSeat value)? updateSeat,
    TResult? Function(_DeleteSeat value)? deleteSeat,
  }) {
    return deleteSeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSeats value)? loadSeats,
    TResult Function(_AddSeat value)? addSeat,
    TResult Function(_UpdateSeat value)? updateSeat,
    TResult Function(_DeleteSeat value)? deleteSeat,
    required TResult orElse(),
  }) {
    if (deleteSeat != null) {
      return deleteSeat(this);
    }
    return orElse();
  }
}

abstract class _DeleteSeat implements StudioSeatManagerEvent {
  const factory _DeleteSeat(final String studioId, final String seatId) =
      _$DeleteSeatImpl;

  @override
  String get studioId;
  String get seatId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteSeatImplCopyWith<_$DeleteSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
