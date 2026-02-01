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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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
      String? couponCode,
    )
    createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )
    updateStatus,
  }) => throw _privateConstructorUsedError;
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
      String? couponCode,
    )?
    createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
  }) => throw _privateConstructorUsedError;
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
      String? couponCode,
    )?
    createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
    BookingEvent value,
    $Res Function(BookingEvent) then,
  ) = _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateBookingImplCopyWith<$Res> {
  factory _$$CreateBookingImplCopyWith(
    _$CreateBookingImpl value,
    $Res Function(_$CreateBookingImpl) then,
  ) = __$$CreateBookingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String artistId,
    String serviceId,
    DateTime date,
    String time,
    String? notes,
    int redeemPoints,
    String paymentMethod,
    String? couponCode,
  });
}

/// @nodoc
class __$$CreateBookingImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$CreateBookingImpl>
    implements _$$CreateBookingImplCopyWith<$Res> {
  __$$CreateBookingImplCopyWithImpl(
    _$CreateBookingImpl _value,
    $Res Function(_$CreateBookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(
      _$CreateBookingImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$CreateBookingImpl implements _CreateBooking {
  const _$CreateBookingImpl({
    required this.artistId,
    required this.serviceId,
    required this.date,
    required this.time,
    this.notes,
    this.redeemPoints = 0,
    this.paymentMethod = 'online',
    this.couponCode,
  });

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
  int get hashCode => Object.hash(
    runtimeType,
    artistId,
    serviceId,
    date,
    time,
    notes,
    redeemPoints,
    paymentMethod,
    couponCode,
  );

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      String? couponCode,
    )
    createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )
    updateStatus,
  }) {
    return createBooking(
      artistId,
      serviceId,
      date,
      time,
      notes,
      redeemPoints,
      paymentMethod,
      couponCode,
    );
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
      String? couponCode,
    )?
    createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
  }) {
    return createBooking?.call(
      artistId,
      serviceId,
      date,
      time,
      notes,
      redeemPoints,
      paymentMethod,
      couponCode,
    );
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
      String? couponCode,
    )?
    createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(
        artistId,
        serviceId,
        date,
        time,
        notes,
        redeemPoints,
        paymentMethod,
        couponCode,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBooking value) createBooking,
    required TResult Function(_FetchBookings value) fetchBookings,
    required TResult Function(_UpdateStatus value) updateStatus,
  }) {
    return createBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return createBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(this);
    }
    return orElse();
  }
}

abstract class _CreateBooking implements BookingEvent {
  const factory _CreateBooking({
    required final String artistId,
    required final String serviceId,
    required final DateTime date,
    required final String time,
    final String? notes,
    final int redeemPoints,
    final String paymentMethod,
    final String? couponCode,
  }) = _$CreateBookingImpl;

  String get artistId;
  String get serviceId;
  DateTime get date;
  String get time;
  String? get notes;
  int get redeemPoints;
  String get paymentMethod;
  String? get couponCode;

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBookingImplCopyWith<_$CreateBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBookingsImplCopyWith<$Res> {
  factory _$$FetchBookingsImplCopyWith(
    _$FetchBookingsImpl value,
    $Res Function(_$FetchBookingsImpl) then,
  ) = __$$FetchBookingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isArtist});
}

/// @nodoc
class __$$FetchBookingsImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$FetchBookingsImpl>
    implements _$$FetchBookingsImplCopyWith<$Res> {
  __$$FetchBookingsImplCopyWithImpl(
    _$FetchBookingsImpl _value,
    $Res Function(_$FetchBookingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isArtist = null}) {
    return _then(
      _$FetchBookingsImpl(
        isArtist: null == isArtist
            ? _value.isArtist
            : isArtist // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
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

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      String? couponCode,
    )
    createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )
    updateStatus,
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
      String? couponCode,
    )?
    createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
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
      String? couponCode,
    )?
    createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
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
  }) {
    return fetchBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return fetchBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
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

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchBookingsImplCopyWith<_$FetchBookingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
    _$UpdateStatusImpl value,
    $Res Function(_$UpdateStatusImpl) then,
  ) = __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String status, bool isArtist, String? note});
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
    _$UpdateStatusImpl _value,
    $Res Function(_$UpdateStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? status = null,
    Object? isArtist = null,
    Object? note = freezed,
  }) {
    return _then(
      _$UpdateStatusImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$UpdateStatusImpl implements _UpdateStatus {
  const _$UpdateStatusImpl({
    required this.bookingId,
    required this.status,
    required this.isArtist,
    this.note,
  });

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

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      String? couponCode,
    )
    createBooking,
    required TResult Function(bool isArtist) fetchBookings,
    required TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )
    updateStatus,
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
      String? couponCode,
    )?
    createBooking,
    TResult? Function(bool isArtist)? fetchBookings,
    TResult? Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
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
      String? couponCode,
    )?
    createBooking,
    TResult Function(bool isArtist)? fetchBookings,
    TResult Function(
      String bookingId,
      String status,
      bool isArtist,
      String? note,
    )?
    updateStatus,
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
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateBooking value)? createBooking,
    TResult? Function(_FetchBookings value)? fetchBookings,
    TResult? Function(_UpdateStatus value)? updateStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBooking value)? createBooking,
    TResult Function(_FetchBookings value)? fetchBookings,
    TResult Function(_UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatus implements BookingEvent {
  const factory _UpdateStatus({
    required final String bookingId,
    required final String status,
    required final bool isArtist,
    final String? note,
  }) = _$UpdateStatusImpl;

  String get bookingId;
  String get status;
  bool get isArtist;
  String? get note;

  /// Create a copy of BookingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
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
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(List<Map<String, dynamic>> bookings)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
    BookingState value,
    $Res Function(BookingState) then,
  ) = _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingState
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
    extends _$BookingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
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
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
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
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
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

  /// Create a copy of BookingState
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
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
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

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> bookings});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookings = null}) {
    return _then(
      _$LoadedImpl(
        bookings: null == bookings
            ? _value._bookings
            : bookings // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
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

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$BookingStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
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

  /// Create a copy of BookingState
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
    required TResult Function(String message) success,
    required TResult Function(List<Map<String, dynamic>> bookings) loaded,
    required TResult Function(String message) error,
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

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
