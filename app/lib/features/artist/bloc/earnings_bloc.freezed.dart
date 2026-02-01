// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EarningsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEarningsStats,
    required TResult Function(String? period, String? status) fetchEarnings,
    required TResult Function() fetchPayouts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEarningsStats,
    TResult? Function(String? period, String? status)? fetchEarnings,
    TResult? Function()? fetchPayouts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEarningsStats,
    TResult Function(String? period, String? status)? fetchEarnings,
    TResult Function()? fetchPayouts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsStats value) fetchEarningsStats,
    required TResult Function(FetchEarnings value) fetchEarnings,
    required TResult Function(FetchPayouts value) fetchPayouts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult? Function(FetchEarnings value)? fetchEarnings,
    TResult? Function(FetchPayouts value)? fetchPayouts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult Function(FetchEarnings value)? fetchEarnings,
    TResult Function(FetchPayouts value)? fetchPayouts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsEventCopyWith<$Res> {
  factory $EarningsEventCopyWith(
    EarningsEvent value,
    $Res Function(EarningsEvent) then,
  ) = _$EarningsEventCopyWithImpl<$Res, EarningsEvent>;
}

/// @nodoc
class _$EarningsEventCopyWithImpl<$Res, $Val extends EarningsEvent>
    implements $EarningsEventCopyWith<$Res> {
  _$EarningsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchEarningsStatsImplCopyWith<$Res> {
  factory _$$FetchEarningsStatsImplCopyWith(
    _$FetchEarningsStatsImpl value,
    $Res Function(_$FetchEarningsStatsImpl) then,
  ) = __$$FetchEarningsStatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEarningsStatsImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$FetchEarningsStatsImpl>
    implements _$$FetchEarningsStatsImplCopyWith<$Res> {
  __$$FetchEarningsStatsImplCopyWithImpl(
    _$FetchEarningsStatsImpl _value,
    $Res Function(_$FetchEarningsStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchEarningsStatsImpl implements FetchEarningsStats {
  const _$FetchEarningsStatsImpl();

  @override
  String toString() {
    return 'EarningsEvent.fetchEarningsStats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchEarningsStatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEarningsStats,
    required TResult Function(String? period, String? status) fetchEarnings,
    required TResult Function() fetchPayouts,
  }) {
    return fetchEarningsStats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEarningsStats,
    TResult? Function(String? period, String? status)? fetchEarnings,
    TResult? Function()? fetchPayouts,
  }) {
    return fetchEarningsStats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEarningsStats,
    TResult Function(String? period, String? status)? fetchEarnings,
    TResult Function()? fetchPayouts,
    required TResult orElse(),
  }) {
    if (fetchEarningsStats != null) {
      return fetchEarningsStats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsStats value) fetchEarningsStats,
    required TResult Function(FetchEarnings value) fetchEarnings,
    required TResult Function(FetchPayouts value) fetchPayouts,
  }) {
    return fetchEarningsStats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult? Function(FetchEarnings value)? fetchEarnings,
    TResult? Function(FetchPayouts value)? fetchPayouts,
  }) {
    return fetchEarningsStats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult Function(FetchEarnings value)? fetchEarnings,
    TResult Function(FetchPayouts value)? fetchPayouts,
    required TResult orElse(),
  }) {
    if (fetchEarningsStats != null) {
      return fetchEarningsStats(this);
    }
    return orElse();
  }
}

abstract class FetchEarningsStats implements EarningsEvent {
  const factory FetchEarningsStats() = _$FetchEarningsStatsImpl;
}

/// @nodoc
abstract class _$$FetchEarningsImplCopyWith<$Res> {
  factory _$$FetchEarningsImplCopyWith(
    _$FetchEarningsImpl value,
    $Res Function(_$FetchEarningsImpl) then,
  ) = __$$FetchEarningsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? period, String? status});
}

/// @nodoc
class __$$FetchEarningsImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$FetchEarningsImpl>
    implements _$$FetchEarningsImplCopyWith<$Res> {
  __$$FetchEarningsImplCopyWithImpl(
    _$FetchEarningsImpl _value,
    $Res Function(_$FetchEarningsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? period = freezed, Object? status = freezed}) {
    return _then(
      _$FetchEarningsImpl(
        period: freezed == period
            ? _value.period
            : period // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$FetchEarningsImpl implements FetchEarnings {
  const _$FetchEarningsImpl({this.period, this.status});

  @override
  final String? period;
  @override
  final String? status;

  @override
  String toString() {
    return 'EarningsEvent.fetchEarnings(period: $period, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEarningsImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period, status);

  /// Create a copy of EarningsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEarningsImplCopyWith<_$FetchEarningsImpl> get copyWith =>
      __$$FetchEarningsImplCopyWithImpl<_$FetchEarningsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEarningsStats,
    required TResult Function(String? period, String? status) fetchEarnings,
    required TResult Function() fetchPayouts,
  }) {
    return fetchEarnings(period, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEarningsStats,
    TResult? Function(String? period, String? status)? fetchEarnings,
    TResult? Function()? fetchPayouts,
  }) {
    return fetchEarnings?.call(period, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEarningsStats,
    TResult Function(String? period, String? status)? fetchEarnings,
    TResult Function()? fetchPayouts,
    required TResult orElse(),
  }) {
    if (fetchEarnings != null) {
      return fetchEarnings(period, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsStats value) fetchEarningsStats,
    required TResult Function(FetchEarnings value) fetchEarnings,
    required TResult Function(FetchPayouts value) fetchPayouts,
  }) {
    return fetchEarnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult? Function(FetchEarnings value)? fetchEarnings,
    TResult? Function(FetchPayouts value)? fetchPayouts,
  }) {
    return fetchEarnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult Function(FetchEarnings value)? fetchEarnings,
    TResult Function(FetchPayouts value)? fetchPayouts,
    required TResult orElse(),
  }) {
    if (fetchEarnings != null) {
      return fetchEarnings(this);
    }
    return orElse();
  }
}

abstract class FetchEarnings implements EarningsEvent {
  const factory FetchEarnings({final String? period, final String? status}) =
      _$FetchEarningsImpl;

  String? get period;
  String? get status;

  /// Create a copy of EarningsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEarningsImplCopyWith<_$FetchEarningsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPayoutsImplCopyWith<$Res> {
  factory _$$FetchPayoutsImplCopyWith(
    _$FetchPayoutsImpl value,
    $Res Function(_$FetchPayoutsImpl) then,
  ) = __$$FetchPayoutsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPayoutsImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$FetchPayoutsImpl>
    implements _$$FetchPayoutsImplCopyWith<$Res> {
  __$$FetchPayoutsImplCopyWithImpl(
    _$FetchPayoutsImpl _value,
    $Res Function(_$FetchPayoutsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPayoutsImpl implements FetchPayouts {
  const _$FetchPayoutsImpl();

  @override
  String toString() {
    return 'EarningsEvent.fetchPayouts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPayoutsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEarningsStats,
    required TResult Function(String? period, String? status) fetchEarnings,
    required TResult Function() fetchPayouts,
  }) {
    return fetchPayouts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEarningsStats,
    TResult? Function(String? period, String? status)? fetchEarnings,
    TResult? Function()? fetchPayouts,
  }) {
    return fetchPayouts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEarningsStats,
    TResult Function(String? period, String? status)? fetchEarnings,
    TResult Function()? fetchPayouts,
    required TResult orElse(),
  }) {
    if (fetchPayouts != null) {
      return fetchPayouts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsStats value) fetchEarningsStats,
    required TResult Function(FetchEarnings value) fetchEarnings,
    required TResult Function(FetchPayouts value) fetchPayouts,
  }) {
    return fetchPayouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult? Function(FetchEarnings value)? fetchEarnings,
    TResult? Function(FetchPayouts value)? fetchPayouts,
  }) {
    return fetchPayouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsStats value)? fetchEarningsStats,
    TResult Function(FetchEarnings value)? fetchEarnings,
    TResult Function(FetchPayouts value)? fetchPayouts,
    required TResult orElse(),
  }) {
    if (fetchPayouts != null) {
      return fetchPayouts(this);
    }
    return orElse();
  }
}

abstract class FetchPayouts implements EarningsEvent {
  const factory FetchPayouts() = _$FetchPayoutsImpl;
}

/// @nodoc
mixin _$EarningsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsStateCopyWith<$Res> {
  factory $EarningsStateCopyWith(
    EarningsState value,
    $Res Function(EarningsState) then,
  ) = _$EarningsStateCopyWithImpl<$Res, EarningsState>;
}

/// @nodoc
class _$EarningsStateCopyWithImpl<$Res, $Val extends EarningsState>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningsState
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
    extends _$EarningsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EarningsState.initial()';
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
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
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
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EarningsState {
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
    extends _$EarningsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EarningsState.loading()';
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
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
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
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EarningsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$StatsLoadedImplCopyWith<$Res> {
  factory _$$StatsLoadedImplCopyWith(
    _$StatsLoadedImpl value,
    $Res Function(_$StatsLoadedImpl) then,
  ) = __$$StatsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EarningsStats stats});
}

/// @nodoc
class __$$StatsLoadedImplCopyWithImpl<$Res>
    extends _$EarningsStateCopyWithImpl<$Res, _$StatsLoadedImpl>
    implements _$$StatsLoadedImplCopyWith<$Res> {
  __$$StatsLoadedImplCopyWithImpl(
    _$StatsLoadedImpl _value,
    $Res Function(_$StatsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stats = null}) {
    return _then(
      _$StatsLoadedImpl(
        null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as EarningsStats,
      ),
    );
  }
}

/// @nodoc

class _$StatsLoadedImpl implements _StatsLoaded {
  const _$StatsLoadedImpl(this.stats);

  @override
  final EarningsStats stats;

  @override
  String toString() {
    return 'EarningsState.statsLoaded(stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsLoadedImpl &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsLoadedImplCopyWith<_$StatsLoadedImpl> get copyWith =>
      __$$StatsLoadedImplCopyWithImpl<_$StatsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) {
    return statsLoaded(stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) {
    return statsLoaded?.call(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (statsLoaded != null) {
      return statsLoaded(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return statsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return statsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (statsLoaded != null) {
      return statsLoaded(this);
    }
    return orElse();
  }
}

abstract class _StatsLoaded implements EarningsState {
  const factory _StatsLoaded(final EarningsStats stats) = _$StatsLoadedImpl;

  EarningsStats get stats;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsLoadedImplCopyWith<_$StatsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EarningsLoadedImplCopyWith<$Res> {
  factory _$$EarningsLoadedImplCopyWith(
    _$EarningsLoadedImpl value,
    $Res Function(_$EarningsLoadedImpl) then,
  ) = __$$EarningsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Earning> earnings});
}

/// @nodoc
class __$$EarningsLoadedImplCopyWithImpl<$Res>
    extends _$EarningsStateCopyWithImpl<$Res, _$EarningsLoadedImpl>
    implements _$$EarningsLoadedImplCopyWith<$Res> {
  __$$EarningsLoadedImplCopyWithImpl(
    _$EarningsLoadedImpl _value,
    $Res Function(_$EarningsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? earnings = null}) {
    return _then(
      _$EarningsLoadedImpl(
        null == earnings
            ? _value._earnings
            : earnings // ignore: cast_nullable_to_non_nullable
                  as List<Earning>,
      ),
    );
  }
}

/// @nodoc

class _$EarningsLoadedImpl implements _EarningsLoaded {
  const _$EarningsLoadedImpl(final List<Earning> earnings)
    : _earnings = earnings;

  final List<Earning> _earnings;
  @override
  List<Earning> get earnings {
    if (_earnings is EqualUnmodifiableListView) return _earnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earnings);
  }

  @override
  String toString() {
    return 'EarningsState.earningsLoaded(earnings: $earnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsLoadedImpl &&
            const DeepCollectionEquality().equals(other._earnings, _earnings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_earnings));

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsLoadedImplCopyWith<_$EarningsLoadedImpl> get copyWith =>
      __$$EarningsLoadedImplCopyWithImpl<_$EarningsLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) {
    return earningsLoaded(earnings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) {
    return earningsLoaded?.call(earnings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (earningsLoaded != null) {
      return earningsLoaded(earnings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return earningsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return earningsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (earningsLoaded != null) {
      return earningsLoaded(this);
    }
    return orElse();
  }
}

abstract class _EarningsLoaded implements EarningsState {
  const factory _EarningsLoaded(final List<Earning> earnings) =
      _$EarningsLoadedImpl;

  List<Earning> get earnings;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningsLoadedImplCopyWith<_$EarningsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayoutsLoadedImplCopyWith<$Res> {
  factory _$$PayoutsLoadedImplCopyWith(
    _$PayoutsLoadedImpl value,
    $Res Function(_$PayoutsLoadedImpl) then,
  ) = __$$PayoutsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Payout> payouts});
}

/// @nodoc
class __$$PayoutsLoadedImplCopyWithImpl<$Res>
    extends _$EarningsStateCopyWithImpl<$Res, _$PayoutsLoadedImpl>
    implements _$$PayoutsLoadedImplCopyWith<$Res> {
  __$$PayoutsLoadedImplCopyWithImpl(
    _$PayoutsLoadedImpl _value,
    $Res Function(_$PayoutsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? payouts = null}) {
    return _then(
      _$PayoutsLoadedImpl(
        null == payouts
            ? _value._payouts
            : payouts // ignore: cast_nullable_to_non_nullable
                  as List<Payout>,
      ),
    );
  }
}

/// @nodoc

class _$PayoutsLoadedImpl implements _PayoutsLoaded {
  const _$PayoutsLoadedImpl(final List<Payout> payouts) : _payouts = payouts;

  final List<Payout> _payouts;
  @override
  List<Payout> get payouts {
    if (_payouts is EqualUnmodifiableListView) return _payouts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payouts);
  }

  @override
  String toString() {
    return 'EarningsState.payoutsLoaded(payouts: $payouts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutsLoadedImpl &&
            const DeepCollectionEquality().equals(other._payouts, _payouts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payouts));

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutsLoadedImplCopyWith<_$PayoutsLoadedImpl> get copyWith =>
      __$$PayoutsLoadedImplCopyWithImpl<_$PayoutsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) {
    return payoutsLoaded(payouts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) {
    return payoutsLoaded?.call(payouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (payoutsLoaded != null) {
      return payoutsLoaded(payouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return payoutsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return payoutsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (payoutsLoaded != null) {
      return payoutsLoaded(this);
    }
    return orElse();
  }
}

abstract class _PayoutsLoaded implements EarningsState {
  const factory _PayoutsLoaded(final List<Payout> payouts) =
      _$PayoutsLoadedImpl;

  List<Payout> get payouts;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayoutsLoadedImplCopyWith<_$PayoutsLoadedImpl> get copyWith =>
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
    extends _$EarningsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EarningsState.error(message: $message)';
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

  /// Create a copy of EarningsState
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
    required TResult Function(EarningsStats stats) statsLoaded,
    required TResult Function(List<Earning> earnings) earningsLoaded,
    required TResult Function(List<Payout> payouts) payoutsLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(EarningsStats stats)? statsLoaded,
    TResult? Function(List<Earning> earnings)? earningsLoaded,
    TResult? Function(List<Payout> payouts)? payoutsLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(EarningsStats stats)? statsLoaded,
    TResult Function(List<Earning> earnings)? earningsLoaded,
    TResult Function(List<Payout> payouts)? payoutsLoaded,
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
    required TResult Function(_StatsLoaded value) statsLoaded,
    required TResult Function(_EarningsLoaded value) earningsLoaded,
    required TResult Function(_PayoutsLoaded value) payoutsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_StatsLoaded value)? statsLoaded,
    TResult? Function(_EarningsLoaded value)? earningsLoaded,
    TResult? Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_StatsLoaded value)? statsLoaded,
    TResult Function(_EarningsLoaded value)? earningsLoaded,
    TResult Function(_PayoutsLoaded value)? payoutsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EarningsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
