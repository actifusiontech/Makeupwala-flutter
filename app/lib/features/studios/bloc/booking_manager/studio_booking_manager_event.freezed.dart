// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'studio_booking_manager_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudioBookingManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadBookings,
    required TResult Function(String bookingId, String status)
        updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadBookings,
    TResult? Function(String bookingId, String status)? updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadBookings,
    TResult Function(String bookingId, String status)? updateBookingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_UpdateBookingStatus value) updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_UpdateBookingStatus value)? updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_UpdateBookingStatus value)? updateBookingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudioBookingManagerEventCopyWith<$Res> {
  factory $StudioBookingManagerEventCopyWith(StudioBookingManagerEvent value,
          $Res Function(StudioBookingManagerEvent) then) =
      _$StudioBookingManagerEventCopyWithImpl<$Res, StudioBookingManagerEvent>;
}

/// @nodoc
class _$StudioBookingManagerEventCopyWithImpl<$Res,
        $Val extends StudioBookingManagerEvent>
    implements $StudioBookingManagerEventCopyWith<$Res> {
  _$StudioBookingManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadBookingsImplCopyWith<$Res> {
  factory _$$LoadBookingsImplCopyWith(
          _$LoadBookingsImpl value, $Res Function(_$LoadBookingsImpl) then) =
      __$$LoadBookingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class __$$LoadBookingsImplCopyWithImpl<$Res>
    extends _$StudioBookingManagerEventCopyWithImpl<$Res, _$LoadBookingsImpl>
    implements _$$LoadBookingsImplCopyWith<$Res> {
  __$$LoadBookingsImplCopyWithImpl(
      _$LoadBookingsImpl _value, $Res Function(_$LoadBookingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
  }) {
    return _then(_$LoadBookingsImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadBookingsImpl implements _LoadBookings {
  const _$LoadBookingsImpl(this.studioId);

  @override
  final String studioId;

  @override
  String toString() {
    return 'StudioBookingManagerEvent.loadBookings(studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBookingsImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBookingsImplCopyWith<_$LoadBookingsImpl> get copyWith =>
      __$$LoadBookingsImplCopyWithImpl<_$LoadBookingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadBookings,
    required TResult Function(String bookingId, String status)
        updateBookingStatus,
  }) {
    return loadBookings(studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadBookings,
    TResult? Function(String bookingId, String status)? updateBookingStatus,
  }) {
    return loadBookings?.call(studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadBookings,
    TResult Function(String bookingId, String status)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (loadBookings != null) {
      return loadBookings(studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_UpdateBookingStatus value) updateBookingStatus,
  }) {
    return loadBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_UpdateBookingStatus value)? updateBookingStatus,
  }) {
    return loadBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_UpdateBookingStatus value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (loadBookings != null) {
      return loadBookings(this);
    }
    return orElse();
  }
}

abstract class _LoadBookings implements StudioBookingManagerEvent {
  const factory _LoadBookings(final String studioId) = _$LoadBookingsImpl;

  String get studioId;
  @JsonKey(ignore: true)
  _$$LoadBookingsImplCopyWith<_$LoadBookingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBookingStatusImplCopyWith<$Res> {
  factory _$$UpdateBookingStatusImplCopyWith(_$UpdateBookingStatusImpl value,
          $Res Function(_$UpdateBookingStatusImpl) then) =
      __$$UpdateBookingStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String status});
}

/// @nodoc
class __$$UpdateBookingStatusImplCopyWithImpl<$Res>
    extends _$StudioBookingManagerEventCopyWithImpl<$Res,
        _$UpdateBookingStatusImpl>
    implements _$$UpdateBookingStatusImplCopyWith<$Res> {
  __$$UpdateBookingStatusImplCopyWithImpl(_$UpdateBookingStatusImpl _value,
      $Res Function(_$UpdateBookingStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? status = null,
  }) {
    return _then(_$UpdateBookingStatusImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateBookingStatusImpl implements _UpdateBookingStatus {
  const _$UpdateBookingStatusImpl(this.bookingId, this.status);

  @override
  final String bookingId;
  @override
  final String status;

  @override
  String toString() {
    return 'StudioBookingManagerEvent.updateBookingStatus(bookingId: $bookingId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBookingStatusImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBookingStatusImplCopyWith<_$UpdateBookingStatusImpl> get copyWith =>
      __$$UpdateBookingStatusImplCopyWithImpl<_$UpdateBookingStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId) loadBookings,
    required TResult Function(String bookingId, String status)
        updateBookingStatus,
  }) {
    return updateBookingStatus(bookingId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId)? loadBookings,
    TResult? Function(String bookingId, String status)? updateBookingStatus,
  }) {
    return updateBookingStatus?.call(bookingId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId)? loadBookings,
    TResult Function(String bookingId, String status)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (updateBookingStatus != null) {
      return updateBookingStatus(bookingId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_UpdateBookingStatus value) updateBookingStatus,
  }) {
    return updateBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_UpdateBookingStatus value)? updateBookingStatus,
  }) {
    return updateBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_UpdateBookingStatus value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (updateBookingStatus != null) {
      return updateBookingStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateBookingStatus implements StudioBookingManagerEvent {
  const factory _UpdateBookingStatus(
      final String bookingId, final String status) = _$UpdateBookingStatusImpl;

  String get bookingId;
  String get status;
  @JsonKey(ignore: true)
  _$$UpdateBookingStatusImplCopyWith<_$UpdateBookingStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
