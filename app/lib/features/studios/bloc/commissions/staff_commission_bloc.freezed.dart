// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_commission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StaffCommissionEvent {
  String get studioId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, String? artistId)
        fetchCommissions,
    required TResult Function(String commissionId, String studioId) markPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, String? artistId)? fetchCommissions,
    TResult? Function(String commissionId, String studioId)? markPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, String? artistId)? fetchCommissions,
    TResult Function(String commissionId, String studioId)? markPaid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCommissions value) fetchCommissions,
    required TResult Function(_MarkPaid value) markPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCommissions value)? fetchCommissions,
    TResult? Function(_MarkPaid value)? markPaid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCommissions value)? fetchCommissions,
    TResult Function(_MarkPaid value)? markPaid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffCommissionEventCopyWith<StaffCommissionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCommissionEventCopyWith<$Res> {
  factory $StaffCommissionEventCopyWith(StaffCommissionEvent value,
          $Res Function(StaffCommissionEvent) then) =
      _$StaffCommissionEventCopyWithImpl<$Res, StaffCommissionEvent>;
  @useResult
  $Res call({String studioId});
}

/// @nodoc
class _$StaffCommissionEventCopyWithImpl<$Res,
        $Val extends StaffCommissionEvent>
    implements $StaffCommissionEventCopyWith<$Res> {
  _$StaffCommissionEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchCommissionsImplCopyWith<$Res>
    implements $StaffCommissionEventCopyWith<$Res> {
  factory _$$FetchCommissionsImplCopyWith(_$FetchCommissionsImpl value,
          $Res Function(_$FetchCommissionsImpl) then) =
      __$$FetchCommissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studioId, String? artistId});
}

/// @nodoc
class __$$FetchCommissionsImplCopyWithImpl<$Res>
    extends _$StaffCommissionEventCopyWithImpl<$Res, _$FetchCommissionsImpl>
    implements _$$FetchCommissionsImplCopyWith<$Res> {
  __$$FetchCommissionsImplCopyWithImpl(_$FetchCommissionsImpl _value,
      $Res Function(_$FetchCommissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studioId = null,
    Object? artistId = freezed,
  }) {
    return _then(_$FetchCommissionsImpl(
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: freezed == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchCommissionsImpl implements _FetchCommissions {
  const _$FetchCommissionsImpl(this.studioId, {this.artistId});

  @override
  final String studioId;
  @override
  final String? artistId;

  @override
  String toString() {
    return 'StaffCommissionEvent.fetchCommissions(studioId: $studioId, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCommissionsImpl &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studioId, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCommissionsImplCopyWith<_$FetchCommissionsImpl> get copyWith =>
      __$$FetchCommissionsImplCopyWithImpl<_$FetchCommissionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, String? artistId)
        fetchCommissions,
    required TResult Function(String commissionId, String studioId) markPaid,
  }) {
    return fetchCommissions(studioId, artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, String? artistId)? fetchCommissions,
    TResult? Function(String commissionId, String studioId)? markPaid,
  }) {
    return fetchCommissions?.call(studioId, artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, String? artistId)? fetchCommissions,
    TResult Function(String commissionId, String studioId)? markPaid,
    required TResult orElse(),
  }) {
    if (fetchCommissions != null) {
      return fetchCommissions(studioId, artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCommissions value) fetchCommissions,
    required TResult Function(_MarkPaid value) markPaid,
  }) {
    return fetchCommissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCommissions value)? fetchCommissions,
    TResult? Function(_MarkPaid value)? markPaid,
  }) {
    return fetchCommissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCommissions value)? fetchCommissions,
    TResult Function(_MarkPaid value)? markPaid,
    required TResult orElse(),
  }) {
    if (fetchCommissions != null) {
      return fetchCommissions(this);
    }
    return orElse();
  }
}

abstract class _FetchCommissions implements StaffCommissionEvent {
  const factory _FetchCommissions(final String studioId,
      {final String? artistId}) = _$FetchCommissionsImpl;

  @override
  String get studioId;
  String? get artistId;
  @override
  @JsonKey(ignore: true)
  _$$FetchCommissionsImplCopyWith<_$FetchCommissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkPaidImplCopyWith<$Res>
    implements $StaffCommissionEventCopyWith<$Res> {
  factory _$$MarkPaidImplCopyWith(
          _$MarkPaidImpl value, $Res Function(_$MarkPaidImpl) then) =
      __$$MarkPaidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String commissionId, String studioId});
}

/// @nodoc
class __$$MarkPaidImplCopyWithImpl<$Res>
    extends _$StaffCommissionEventCopyWithImpl<$Res, _$MarkPaidImpl>
    implements _$$MarkPaidImplCopyWith<$Res> {
  __$$MarkPaidImplCopyWithImpl(
      _$MarkPaidImpl _value, $Res Function(_$MarkPaidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commissionId = null,
    Object? studioId = null,
  }) {
    return _then(_$MarkPaidImpl(
      null == commissionId
          ? _value.commissionId
          : commissionId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studioId
          ? _value.studioId
          : studioId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkPaidImpl implements _MarkPaid {
  const _$MarkPaidImpl(this.commissionId, this.studioId);

  @override
  final String commissionId;
  @override
  final String studioId;

  @override
  String toString() {
    return 'StaffCommissionEvent.markPaid(commissionId: $commissionId, studioId: $studioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkPaidImpl &&
            (identical(other.commissionId, commissionId) ||
                other.commissionId == commissionId) &&
            (identical(other.studioId, studioId) ||
                other.studioId == studioId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commissionId, studioId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkPaidImplCopyWith<_$MarkPaidImpl> get copyWith =>
      __$$MarkPaidImplCopyWithImpl<_$MarkPaidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String studioId, String? artistId)
        fetchCommissions,
    required TResult Function(String commissionId, String studioId) markPaid,
  }) {
    return markPaid(commissionId, studioId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String studioId, String? artistId)? fetchCommissions,
    TResult? Function(String commissionId, String studioId)? markPaid,
  }) {
    return markPaid?.call(commissionId, studioId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String studioId, String? artistId)? fetchCommissions,
    TResult Function(String commissionId, String studioId)? markPaid,
    required TResult orElse(),
  }) {
    if (markPaid != null) {
      return markPaid(commissionId, studioId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCommissions value) fetchCommissions,
    required TResult Function(_MarkPaid value) markPaid,
  }) {
    return markPaid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCommissions value)? fetchCommissions,
    TResult? Function(_MarkPaid value)? markPaid,
  }) {
    return markPaid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCommissions value)? fetchCommissions,
    TResult Function(_MarkPaid value)? markPaid,
    required TResult orElse(),
  }) {
    if (markPaid != null) {
      return markPaid(this);
    }
    return orElse();
  }
}

abstract class _MarkPaid implements StaffCommissionEvent {
  const factory _MarkPaid(final String commissionId, final String studioId) =
      _$MarkPaidImpl;

  String get commissionId;
  @override
  String get studioId;
  @override
  @JsonKey(ignore: true)
  _$$MarkPaidImplCopyWith<_$MarkPaidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StaffCommissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> commissions) commissionsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> commissions)? commissionsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> commissions)? commissionsLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CommissionsLoaded value) commissionsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CommissionsLoaded value)? commissionsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CommissionsLoaded value)? commissionsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCommissionStateCopyWith<$Res> {
  factory $StaffCommissionStateCopyWith(StaffCommissionState value,
          $Res Function(StaffCommissionState) then) =
      _$StaffCommissionStateCopyWithImpl<$Res, StaffCommissionState>;
}

/// @nodoc
class _$StaffCommissionStateCopyWithImpl<$Res,
        $Val extends StaffCommissionState>
    implements $StaffCommissionStateCopyWith<$Res> {
  _$StaffCommissionStateCopyWithImpl(this._value, this._then);

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
    extends _$StaffCommissionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StaffCommissionState.initial()';
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
    required TResult Function(List<dynamic> commissions) commissionsLoaded,
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
    TResult? Function(List<dynamic> commissions)? commissionsLoaded,
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
    TResult Function(List<dynamic> commissions)? commissionsLoaded,
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
    required TResult Function(_CommissionsLoaded value) commissionsLoaded,
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
    TResult? Function(_CommissionsLoaded value)? commissionsLoaded,
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
    TResult Function(_CommissionsLoaded value)? commissionsLoaded,
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

abstract class _Initial implements StaffCommissionState {
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
    extends _$StaffCommissionStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'StaffCommissionState.loading()';
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
    required TResult Function(List<dynamic> commissions) commissionsLoaded,
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
    TResult? Function(List<dynamic> commissions)? commissionsLoaded,
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
    TResult Function(List<dynamic> commissions)? commissionsLoaded,
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
    required TResult Function(_CommissionsLoaded value) commissionsLoaded,
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
    TResult? Function(_CommissionsLoaded value)? commissionsLoaded,
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
    TResult Function(_CommissionsLoaded value)? commissionsLoaded,
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

abstract class _Loading implements StaffCommissionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CommissionsLoadedImplCopyWith<$Res> {
  factory _$$CommissionsLoadedImplCopyWith(_$CommissionsLoadedImpl value,
          $Res Function(_$CommissionsLoadedImpl) then) =
      __$$CommissionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> commissions});
}

/// @nodoc
class __$$CommissionsLoadedImplCopyWithImpl<$Res>
    extends _$StaffCommissionStateCopyWithImpl<$Res, _$CommissionsLoadedImpl>
    implements _$$CommissionsLoadedImplCopyWith<$Res> {
  __$$CommissionsLoadedImplCopyWithImpl(_$CommissionsLoadedImpl _value,
      $Res Function(_$CommissionsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commissions = null,
  }) {
    return _then(_$CommissionsLoadedImpl(
      null == commissions
          ? _value._commissions
          : commissions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CommissionsLoadedImpl implements _CommissionsLoaded {
  const _$CommissionsLoadedImpl(final List<dynamic> commissions)
      : _commissions = commissions;

  final List<dynamic> _commissions;
  @override
  List<dynamic> get commissions {
    if (_commissions is EqualUnmodifiableListView) return _commissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commissions);
  }

  @override
  String toString() {
    return 'StaffCommissionState.commissionsLoaded(commissions: $commissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommissionsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._commissions, _commissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_commissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommissionsLoadedImplCopyWith<_$CommissionsLoadedImpl> get copyWith =>
      __$$CommissionsLoadedImplCopyWithImpl<_$CommissionsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> commissions) commissionsLoaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return commissionsLoaded(commissions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> commissions)? commissionsLoaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return commissionsLoaded?.call(commissions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> commissions)? commissionsLoaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (commissionsLoaded != null) {
      return commissionsLoaded(commissions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CommissionsLoaded value) commissionsLoaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return commissionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CommissionsLoaded value)? commissionsLoaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return commissionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CommissionsLoaded value)? commissionsLoaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (commissionsLoaded != null) {
      return commissionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _CommissionsLoaded implements StaffCommissionState {
  const factory _CommissionsLoaded(final List<dynamic> commissions) =
      _$CommissionsLoadedImpl;

  List<dynamic> get commissions;
  @JsonKey(ignore: true)
  _$$CommissionsLoadedImplCopyWith<_$CommissionsLoadedImpl> get copyWith =>
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
    extends _$StaffCommissionStateCopyWithImpl<$Res, _$SuccessImpl>
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
    return 'StaffCommissionState.success(message: $message)';
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
    required TResult Function(List<dynamic> commissions) commissionsLoaded,
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
    TResult? Function(List<dynamic> commissions)? commissionsLoaded,
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
    TResult Function(List<dynamic> commissions)? commissionsLoaded,
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
    required TResult Function(_CommissionsLoaded value) commissionsLoaded,
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
    TResult? Function(_CommissionsLoaded value)? commissionsLoaded,
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
    TResult Function(_CommissionsLoaded value)? commissionsLoaded,
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

abstract class _Success implements StaffCommissionState {
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
    extends _$StaffCommissionStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'StaffCommissionState.error(message: $message)';
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
    required TResult Function(List<dynamic> commissions) commissionsLoaded,
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
    TResult? Function(List<dynamic> commissions)? commissionsLoaded,
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
    TResult Function(List<dynamic> commissions)? commissionsLoaded,
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
    required TResult Function(_CommissionsLoaded value) commissionsLoaded,
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
    TResult? Function(_CommissionsLoaded value)? commissionsLoaded,
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
    TResult Function(_CommissionsLoaded value)? commissionsLoaded,
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

abstract class _Error implements StaffCommissionState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
