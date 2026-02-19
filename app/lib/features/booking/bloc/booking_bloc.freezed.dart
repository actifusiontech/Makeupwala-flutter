// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateBookingImplCopyWith<$Res> {
  factory _$$CreateBookingImplCopyWith(
          _$CreateBookingImpl value, $Res Function(_$CreateBookingImpl) then) =
      __$$CreateBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String artistId,
      String serviceId,
      DateTime date,
      String time,
      String? notes,
      int redeemPoints,
      String paymentMethod,
      String? couponCode});
}

/// @nodoc
class __$$CreateBookingImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$CreateBookingImpl>
    implements _$$CreateBookingImplCopyWith<$Res> {
  __$$CreateBookingImplCopyWithImpl(
      _$CreateBookingImpl _value, $Res Function(_$CreateBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? serviceId = null,
    Object? date = null,
    Object? time = null,
    Object? notes = freezed,
    Object? redeemPoints = null,
    Object? paymentMethod = null,
    Object? couponCode = freezed,
  }) {
    return _then(_$CreateBookingImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemPoints: null == redeemPoints
          ? _value.redeemPoints
          : redeemPoints // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateBookingImpl implements _CreateBooking {
  const _$CreateBookingImpl(
      {required this.artistId,
      required this.serviceId,
      required this.date,
      required this.time,
      this.notes,
      this.redeemPoints = 0,
      this.paymentMethod = 'online',
      this.couponCode});

  @override
  final String artistId;
  @override
  final String serviceId;
  @override
  final DateTime date;
  @override
  final String time;
  @override
  final String? notes;
  @override
  @JsonKey()
  final int redeemPoints;
  @override
  @JsonKey()
  final String paymentMethod;
  @override
  final String? couponCode;

  @override
  String toString() {
    return 'BookingEvent.createBooking(artistId: $artistId, serviceId: $serviceId, date: $date, time: $time, notes: $notes, redeemPoints: $redeemPoints, paymentMethod: $paymentMethod, couponCode: $couponCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.redeemPoints, redeemPoints) ||
                other.redeemPoints == redeemPoints) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, serviceId, date, time,
      notes, redeemPoints, paymentMethod, couponCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingImplCopyWith<_$CreateBookingImpl> get copyWith =>
      __$$CreateBookingImplCopyWithImpl<_$CreateBookingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return createBooking(artistId, serviceId, date, time, notes, redeemPoints,
        paymentMethod, couponCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return createBooking?.call(artistId, serviceId, date, time, notes,
        redeemPoints, paymentMethod, couponCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(artistId, serviceId, date, time, notes, redeemPoints,
          paymentMethod, couponCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return createBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return createBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(this);
    }
    return orElse();
  }
}

abstract class _CreateBooking implements BookingEvent {
  const factory _CreateBooking(
      {required final String artistId,
      required final String serviceId,
      required final DateTime date,
      required final String time,
      final String? notes,
      final int redeemPoints,
      final String paymentMethod,
      final String? couponCode}) = _$CreateBookingImpl;

  String get artistId;
  String get serviceId;
  DateTime get date;
  String get time;
  String? get notes;
  int get redeemPoints;
  String get paymentMethod;
  String? get couponCode;
  @JsonKey(ignore: true)
  _$$CreateBookingImplCopyWith<_$CreateBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBookingsImplCopyWith<$Res> {
  factory _$$FetchBookingsImplCopyWith(
          _$FetchBookingsImpl value, $Res Function(_$FetchBookingsImpl) then) =
      __$$FetchBookingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isArtist});
}

/// @nodoc
class __$$FetchBookingsImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$FetchBookingsImpl>
    implements _$$FetchBookingsImplCopyWith<$Res> {
  __$$FetchBookingsImplCopyWithImpl(
      _$FetchBookingsImpl _value, $Res Function(_$FetchBookingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isArtist = null,
  }) {
    return _then(_$FetchBookingsImpl(
      isArtist: null == isArtist
          ? _value.isArtist
          : isArtist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchBookingsImpl implements _FetchBookings {
  const _$FetchBookingsImpl({required this.isArtist});

  @override
  final bool isArtist;

  @override
  String toString() {
    return 'BookingEvent.fetchBookings(isArtist: $isArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBookingsImpl &&
            (identical(other.isArtist, isArtist) ||
                other.isArtist == isArtist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isArtist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBookingsImplCopyWith<_$FetchBookingsImpl> get copyWith =>
      __$$FetchBookingsImplCopyWithImpl<_$FetchBookingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return fetchBookings(isArtist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return fetchBookings?.call(isArtist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (fetchBookings != null) {
      return fetchBookings(isArtist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return fetchBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return fetchBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (fetchBookings != null) {
      return fetchBookings(this);
    }
    return orElse();
  }
}

abstract class _FetchBookings implements BookingEvent {
  const factory _FetchBookings({required final bool isArtist}) =
      _$FetchBookingsImpl;

  bool get isArtist;
  @JsonKey(ignore: true)
  _$$FetchBookingsImplCopyWith<_$FetchBookingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String status, bool isArtist, String? note});
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
      _$UpdateStatusImpl _value, $Res Function(_$UpdateStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? status = null,
    Object? isArtist = null,
    Object? note = freezed,
  }) {
    return _then(_$UpdateStatusImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isArtist: null == isArtist
          ? _value.isArtist
          : isArtist // ignore: cast_nullable_to_non_nullable
              as bool,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateStatusImpl implements _UpdateStatus {
  const _$UpdateStatusImpl(
      {required this.bookingId,
      required this.status,
      required this.isArtist,
      this.note});

  @override
  final String bookingId;
  @override
  final String status;
  @override
  final bool isArtist;
  @override
  final String? note;

  @override
  String toString() {
    return 'BookingEvent.updateStatus(bookingId: $bookingId, status: $status, isArtist: $isArtist, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isArtist, isArtist) ||
                other.isArtist == isArtist) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bookingId, status, isArtist, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      __$$UpdateStatusImplCopyWithImpl<_$UpdateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return updateStatus(bookingId, status, isArtist, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return updateStatus?.call(bookingId, status, isArtist, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(bookingId, status, isArtist, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatus implements BookingEvent {
  const factory _UpdateStatus(
      {required final String bookingId,
      required final String status,
      required final bool isArtist,
      final String? note}) = _$UpdateStatusImpl;

  String get bookingId;
  String get status;
  bool get isArtist;
  String? get note;
  @JsonKey(ignore: true)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadBookingsImplCopyWith<$Res> {
  factory _$$LoadBookingsImplCopyWith(
          _$LoadBookingsImpl value, $Res Function(_$LoadBookingsImpl) then) =
      __$$LoadBookingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadBookingsImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$LoadBookingsImpl>
    implements _$$LoadBookingsImplCopyWith<$Res> {
  __$$LoadBookingsImplCopyWithImpl(
      _$LoadBookingsImpl _value, $Res Function(_$LoadBookingsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadBookingsImpl implements _LoadBookings {
  const _$LoadBookingsImpl();

  @override
  String toString() {
    return 'BookingEvent.loadBookings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadBookingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return loadBookings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return loadBookings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (loadBookings != null) {
      return loadBookings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return loadBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return loadBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (loadBookings != null) {
      return loadBookings(this);
    }
    return orElse();
  }
}

abstract class _LoadBookings implements BookingEvent {
  const factory _LoadBookings() = _$LoadBookingsImpl;
}

/// @nodoc
abstract class _$$CancelBookingImplCopyWith<$Res> {
  factory _$$CancelBookingImplCopyWith(
          _$CancelBookingImpl value, $Res Function(_$CancelBookingImpl) then) =
      __$$CancelBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$CancelBookingImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$CancelBookingImpl>
    implements _$$CancelBookingImplCopyWith<$Res> {
  __$$CancelBookingImplCopyWithImpl(
      _$CancelBookingImpl _value, $Res Function(_$CancelBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$CancelBookingImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelBookingImpl implements _CancelBooking {
  const _$CancelBookingImpl({required this.bookingId});

  @override
  final String bookingId;

  @override
  String toString() {
    return 'BookingEvent.cancelBooking(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelBookingImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelBookingImplCopyWith<_$CancelBookingImpl> get copyWith =>
      __$$CancelBookingImplCopyWithImpl<_$CancelBookingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return cancelBooking(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return cancelBooking?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (cancelBooking != null) {
      return cancelBooking(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return cancelBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return cancelBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (cancelBooking != null) {
      return cancelBooking(this);
    }
    return orElse();
  }
}

abstract class _CancelBooking implements BookingEvent {
  const factory _CancelBooking({required final String bookingId}) =
      _$CancelBookingImpl;

  String get bookingId;
  @JsonKey(ignore: true)
  _$$CancelBookingImplCopyWith<_$CancelBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessPaymentImplCopyWith<$Res> {
  factory _$$ProcessPaymentImplCopyWith(_$ProcessPaymentImpl value,
          $Res Function(_$ProcessPaymentImpl) then) =
      __$$ProcessPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String orderId, String paymentId, String signature, String bookingId});
}

/// @nodoc
class __$$ProcessPaymentImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$ProcessPaymentImpl>
    implements _$$ProcessPaymentImplCopyWith<$Res> {
  __$$ProcessPaymentImplCopyWithImpl(
      _$ProcessPaymentImpl _value, $Res Function(_$ProcessPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? paymentId = null,
    Object? signature = null,
    Object? bookingId = null,
  }) {
    return _then(_$ProcessPaymentImpl(
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
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessPaymentImpl implements _ProcessPayment {
  const _$ProcessPaymentImpl(
      {required this.orderId,
      required this.paymentId,
      required this.signature,
      required this.bookingId});

  @override
  final String orderId;
  @override
  final String paymentId;
  @override
  final String signature;
  @override
  final String bookingId;

  @override
  String toString() {
    return 'BookingEvent.processPayment(orderId: $orderId, paymentId: $paymentId, signature: $signature, bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessPaymentImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, paymentId, signature, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessPaymentImplCopyWith<_$ProcessPaymentImpl> get copyWith =>
      __$$ProcessPaymentImplCopyWithImpl<_$ProcessPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return processPayment(orderId, paymentId, signature, bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return processPayment?.call(orderId, paymentId, signature, bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (processPayment != null) {
      return processPayment(orderId, paymentId, signature, bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return processPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return processPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (processPayment != null) {
      return processPayment(this);
    }
    return orElse();
  }
}

abstract class _ProcessPayment implements BookingEvent {
  const factory _ProcessPayment(
      {required final String orderId,
      required final String paymentId,
      required final String signature,
      required final String bookingId}) = _$ProcessPaymentImpl;

  String get orderId;
  String get paymentId;
  String get signature;
  String get bookingId;
  @JsonKey(ignore: true)
  _$$ProcessPaymentImplCopyWith<_$ProcessPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadBookingDetailsImplCopyWith<$Res> {
  factory _$$LoadBookingDetailsImplCopyWith(_$LoadBookingDetailsImpl value,
          $Res Function(_$LoadBookingDetailsImpl) then) =
      __$$LoadBookingDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$LoadBookingDetailsImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$LoadBookingDetailsImpl>
    implements _$$LoadBookingDetailsImplCopyWith<$Res> {
  __$$LoadBookingDetailsImplCopyWithImpl(_$LoadBookingDetailsImpl _value,
      $Res Function(_$LoadBookingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$LoadBookingDetailsImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadBookingDetailsImpl implements _LoadBookingDetails {
  const _$LoadBookingDetailsImpl({required this.bookingId});

  @override
  final String bookingId;

  @override
  String toString() {
    return 'BookingEvent.loadBookingDetails(bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadBookingDetailsImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadBookingDetailsImplCopyWith<_$LoadBookingDetailsImpl> get copyWith =>
      __$$LoadBookingDetailsImplCopyWithImpl<_$LoadBookingDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)
        createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
            String bookingId, String status, bool isArtist, String? note)
        updateStatus,
    required TResult Function() loadBookings,
    required TResult Function(String bookingId) cancelBooking,
    required TResult Function(String orderId, String paymentId,
            String signature, String bookingId)
        processPayment,
    required TResult Function(String bookingId) loadBookingDetails,
  }) {
    return loadBookingDetails(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult? Function()? loadBookings,
    TResult? Function(String bookingId)? cancelBooking,
    TResult? Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult? Function(String bookingId)? loadBookingDetails,
  }) {
    return loadBookingDetails?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String artistId,
            String serviceId,
            DateTime date,
            String time,
            String? notes,
            int redeemPoints,
            String paymentMethod,
            String? couponCode)?
        createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
            String bookingId, String status, bool isArtist, String? note)?
        updateStatus,
    TResult Function()? loadBookings,
    TResult Function(String bookingId)? cancelBooking,
    TResult Function(String orderId, String paymentId, String signature,
            String bookingId)?
        processPayment,
    TResult Function(String bookingId)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (loadBookingDetails != null) {
      return loadBookingDetails(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
    required TResult Function(_LoadBookings value) loadBookings,
    required TResult Function(_CancelBooking value) cancelBooking,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_LoadBookingDetails value) loadBookingDetails,
  }) {
    return loadBookingDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
    TResult? Function(_LoadBookings value)? loadBookings,
    TResult? Function(_CancelBooking value)? cancelBooking,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_LoadBookingDetails value)? loadBookingDetails,
  }) {
    return loadBookingDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    TResult Function(_LoadBookings value)? loadBookings,
    TResult Function(_CancelBooking value)? cancelBooking,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_LoadBookingDetails value)? loadBookingDetails,
    required TResult orElse(),
  }) {
    if (loadBookingDetails != null) {
      return loadBookingDetails(this);
    }
    return orElse();
  }
}

abstract class _LoadBookingDetails implements BookingEvent {
  const factory _LoadBookingDetails({required final String bookingId}) =
      _$LoadBookingDetailsImpl;

  String get bookingId;
  @JsonKey(ignore: true)
  _$$LoadBookingDetailsImplCopyWith<_$LoadBookingDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

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
    extends _$BookingStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BookingState.initial()';
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
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookingState {
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
    extends _$BookingStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'BookingState.loading()';
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
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BookingState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$BookingStateCopyWithImpl<$Res, _$SuccessImpl>
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BookingState.success(message: $message)';
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
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BookingState {
  const factory _Success({required final String message}) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> bookings});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_$LoadedImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<Map<String, dynamic>> bookings})
      : _bookings = bookings;

  final List<Map<String, dynamic>> _bookings;
  @override
  List<Map<String, dynamic>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'BookingState.loaded(bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return loaded(bookings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return loaded?.call(bookings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BookingState {
  const factory _Loaded({required final List<Map<String, dynamic>> bookings}) =
      _$LoadedImpl;

  List<Map<String, dynamic>> get bookings;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$BookingStateCopyWithImpl<$Res, _$ErrorImpl>
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'BookingState.error(message: $message)';
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
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
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
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BookingState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentRequiredImplCopyWith<$Res> {
  factory _$$PaymentRequiredImplCopyWith(_$PaymentRequiredImpl value,
          $Res Function(_$PaymentRequiredImpl) then) =
      __$$PaymentRequiredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, double amount, String bookingId, String keyId});
}

/// @nodoc
class __$$PaymentRequiredImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$PaymentRequiredImpl>
    implements _$$PaymentRequiredImplCopyWith<$Res> {
  __$$PaymentRequiredImplCopyWithImpl(
      _$PaymentRequiredImpl _value, $Res Function(_$PaymentRequiredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? amount = null,
    Object? bookingId = null,
    Object? keyId = null,
  }) {
    return _then(_$PaymentRequiredImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentRequiredImpl implements _PaymentRequired {
  const _$PaymentRequiredImpl(
      {required this.orderId,
      required this.amount,
      required this.bookingId,
      required this.keyId});

  @override
  final String orderId;
  @override
  final double amount;
  @override
  final String bookingId;
  @override
  final String keyId;

  @override
  String toString() {
    return 'BookingState.paymentRequired(orderId: $orderId, amount: $amount, bookingId: $bookingId, keyId: $keyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRequiredImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.keyId, keyId) || other.keyId == keyId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, amount, bookingId, keyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRequiredImplCopyWith<_$PaymentRequiredImpl> get copyWith =>
      __$$PaymentRequiredImplCopyWithImpl<_$PaymentRequiredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return paymentRequired(orderId, amount, bookingId, keyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return paymentRequired?.call(orderId, amount, bookingId, keyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (paymentRequired != null) {
      return paymentRequired(orderId, amount, bookingId, keyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return paymentRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return paymentRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (paymentRequired != null) {
      return paymentRequired(this);
    }
    return orElse();
  }
}

abstract class _PaymentRequired implements BookingState {
  const factory _PaymentRequired(
      {required final String orderId,
      required final double amount,
      required final String bookingId,
      required final String keyId}) = _$PaymentRequiredImpl;

  String get orderId;
  double get amount;
  String get bookingId;
  String get keyId;
  @JsonKey(ignore: true)
  _$$PaymentRequiredImplCopyWith<_$PaymentRequiredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingsLoadedImplCopyWith<$Res> {
  factory _$$BookingsLoadedImplCopyWith(_$BookingsLoadedImpl value,
          $Res Function(_$BookingsLoadedImpl) then) =
      __$$BookingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> bookings});
}

/// @nodoc
class __$$BookingsLoadedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingsLoadedImpl>
    implements _$$BookingsLoadedImplCopyWith<$Res> {
  __$$BookingsLoadedImplCopyWithImpl(
      _$BookingsLoadedImpl _value, $Res Function(_$BookingsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_$BookingsLoadedImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$BookingsLoadedImpl implements _BookingsLoaded {
  const _$BookingsLoadedImpl(
      {required final List<Map<String, dynamic>> bookings})
      : _bookings = bookings;

  final List<Map<String, dynamic>> _bookings;
  @override
  List<Map<String, dynamic>> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'BookingState.bookingsLoaded(bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingsLoadedImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingsLoadedImplCopyWith<_$BookingsLoadedImpl> get copyWith =>
      __$$BookingsLoadedImplCopyWithImpl<_$BookingsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return bookingsLoaded(bookings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return bookingsLoaded?.call(bookings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (bookingsLoaded != null) {
      return bookingsLoaded(bookings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return bookingsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return bookingsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (bookingsLoaded != null) {
      return bookingsLoaded(this);
    }
    return orElse();
  }
}

abstract class _BookingsLoaded implements BookingState {
  const factory _BookingsLoaded(
          {required final List<Map<String, dynamic>> bookings}) =
      _$BookingsLoadedImpl;

  List<Map<String, dynamic>> get bookings;
  @JsonKey(ignore: true)
  _$$BookingsLoadedImplCopyWith<_$BookingsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingDetailsLoadedImplCopyWith<$Res> {
  factory _$$BookingDetailsLoadedImplCopyWith(_$BookingDetailsLoadedImpl value,
          $Res Function(_$BookingDetailsLoadedImpl) then) =
      __$$BookingDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> booking});
}

/// @nodoc
class __$$BookingDetailsLoadedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingDetailsLoadedImpl>
    implements _$$BookingDetailsLoadedImplCopyWith<$Res> {
  __$$BookingDetailsLoadedImplCopyWithImpl(_$BookingDetailsLoadedImpl _value,
      $Res Function(_$BookingDetailsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
  }) {
    return _then(_$BookingDetailsLoadedImpl(
      booking: null == booking
          ? _value._booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$BookingDetailsLoadedImpl implements _BookingDetailsLoaded {
  const _$BookingDetailsLoadedImpl(
      {required final Map<String, dynamic> booking})
      : _booking = booking;

  final Map<String, dynamic> _booking;
  @override
  Map<String, dynamic> get booking {
    if (_booking is EqualUnmodifiableMapView) return _booking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_booking);
  }

  @override
  String toString() {
    return 'BookingState.bookingDetailsLoaded(booking: $booking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsLoadedImpl &&
            const DeepCollectionEquality().equals(other._booking, _booking));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_booking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsLoadedImplCopyWith<_$BookingDetailsLoadedImpl>
      get copyWith =>
          __$$BookingDetailsLoadedImplCopyWithImpl<_$BookingDetailsLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
    required TResult Function(
            String orderId, double amount, String bookingId, String keyId)
        paymentRequired,
    required TResult Function(List<Map<String, dynamic>> bookings)
        bookingsLoaded,
    required TResult Function(Map<String, dynamic> booking)
        bookingDetailsLoaded,
  }) {
    return bookingDetailsLoaded(booking);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult? Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult? Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
  }) {
    return bookingDetailsLoaded?.call(booking);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    TResult Function(
            String orderId, double amount, String bookingId, String keyId)?
        paymentRequired,
    TResult Function(List<Map<String, dynamic>> bookings)? bookingsLoaded,
    TResult Function(Map<String, dynamic> booking)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (bookingDetailsLoaded != null) {
      return bookingDetailsLoaded(booking);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentRequired value) paymentRequired,
    required TResult Function(_BookingsLoaded value) bookingsLoaded,
    required TResult Function(_BookingDetailsLoaded value) bookingDetailsLoaded,
  }) {
    return bookingDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentRequired value)? paymentRequired,
    TResult? Function(_BookingsLoaded value)? bookingsLoaded,
    TResult? Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
  }) {
    return bookingDetailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentRequired value)? paymentRequired,
    TResult Function(_BookingsLoaded value)? bookingsLoaded,
    TResult Function(_BookingDetailsLoaded value)? bookingDetailsLoaded,
    required TResult orElse(),
  }) {
    if (bookingDetailsLoaded != null) {
      return bookingDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _BookingDetailsLoaded implements BookingState {
  const factory _BookingDetailsLoaded(
          {required final Map<String, dynamic> booking}) =
      _$BookingDetailsLoadedImpl;

  Map<String, dynamic> get booking;
  @JsonKey(ignore: true)
  _$$BookingDetailsLoadedImplCopyWith<_$BookingDetailsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
