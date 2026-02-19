// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_kyc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistKYCEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStatus,
    required TResult Function(
            String idProof, String addressProof, String certificate)
        submitKYC,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStatus,
    TResult? Function(String idProof, String addressProof, String certificate)?
        submitKYC,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStatus,
    TResult Function(String idProof, String addressProof, String certificate)?
        submitKYC,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStatus value) fetchStatus,
    required TResult Function(_SubmitKYC value) submitKYC,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStatus value)? fetchStatus,
    TResult? Function(_SubmitKYC value)? submitKYC,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStatus value)? fetchStatus,
    TResult Function(_SubmitKYC value)? submitKYC,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistKYCEventCopyWith<$Res> {
  factory $ArtistKYCEventCopyWith(
          ArtistKYCEvent value, $Res Function(ArtistKYCEvent) then) =
      _$ArtistKYCEventCopyWithImpl<$Res, ArtistKYCEvent>;
}

/// @nodoc
class _$ArtistKYCEventCopyWithImpl<$Res, $Val extends ArtistKYCEvent>
    implements $ArtistKYCEventCopyWith<$Res> {
  _$ArtistKYCEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchStatusImplCopyWith<$Res> {
  factory _$$FetchStatusImplCopyWith(
          _$FetchStatusImpl value, $Res Function(_$FetchStatusImpl) then) =
      __$$FetchStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStatusImplCopyWithImpl<$Res>
    extends _$ArtistKYCEventCopyWithImpl<$Res, _$FetchStatusImpl>
    implements _$$FetchStatusImplCopyWith<$Res> {
  __$$FetchStatusImplCopyWithImpl(
      _$FetchStatusImpl _value, $Res Function(_$FetchStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchStatusImpl implements _FetchStatus {
  const _$FetchStatusImpl();

  @override
  String toString() {
    return 'ArtistKYCEvent.fetchStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStatus,
    required TResult Function(
            String idProof, String addressProof, String certificate)
        submitKYC,
  }) {
    return fetchStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStatus,
    TResult? Function(String idProof, String addressProof, String certificate)?
        submitKYC,
  }) {
    return fetchStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStatus,
    TResult Function(String idProof, String addressProof, String certificate)?
        submitKYC,
    required TResult orElse(),
  }) {
    if (fetchStatus != null) {
      return fetchStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStatus value) fetchStatus,
    required TResult Function(_SubmitKYC value) submitKYC,
  }) {
    return fetchStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStatus value)? fetchStatus,
    TResult? Function(_SubmitKYC value)? submitKYC,
  }) {
    return fetchStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStatus value)? fetchStatus,
    TResult Function(_SubmitKYC value)? submitKYC,
    required TResult orElse(),
  }) {
    if (fetchStatus != null) {
      return fetchStatus(this);
    }
    return orElse();
  }
}

abstract class _FetchStatus implements ArtistKYCEvent {
  const factory _FetchStatus() = _$FetchStatusImpl;
}

/// @nodoc
abstract class _$$SubmitKYCImplCopyWith<$Res> {
  factory _$$SubmitKYCImplCopyWith(
          _$SubmitKYCImpl value, $Res Function(_$SubmitKYCImpl) then) =
      __$$SubmitKYCImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idProof, String addressProof, String certificate});
}

/// @nodoc
class __$$SubmitKYCImplCopyWithImpl<$Res>
    extends _$ArtistKYCEventCopyWithImpl<$Res, _$SubmitKYCImpl>
    implements _$$SubmitKYCImplCopyWith<$Res> {
  __$$SubmitKYCImplCopyWithImpl(
      _$SubmitKYCImpl _value, $Res Function(_$SubmitKYCImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProof = null,
    Object? addressProof = null,
    Object? certificate = null,
  }) {
    return _then(_$SubmitKYCImpl(
      idProof: null == idProof
          ? _value.idProof
          : idProof // ignore: cast_nullable_to_non_nullable
              as String,
      addressProof: null == addressProof
          ? _value.addressProof
          : addressProof // ignore: cast_nullable_to_non_nullable
              as String,
      certificate: null == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitKYCImpl implements _SubmitKYC {
  const _$SubmitKYCImpl(
      {required this.idProof,
      required this.addressProof,
      required this.certificate});

  @override
  final String idProof;
  @override
  final String addressProof;
  @override
  final String certificate;

  @override
  String toString() {
    return 'ArtistKYCEvent.submitKYC(idProof: $idProof, addressProof: $addressProof, certificate: $certificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitKYCImpl &&
            (identical(other.idProof, idProof) || other.idProof == idProof) &&
            (identical(other.addressProof, addressProof) ||
                other.addressProof == addressProof) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idProof, addressProof, certificate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitKYCImplCopyWith<_$SubmitKYCImpl> get copyWith =>
      __$$SubmitKYCImplCopyWithImpl<_$SubmitKYCImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStatus,
    required TResult Function(
            String idProof, String addressProof, String certificate)
        submitKYC,
  }) {
    return submitKYC(idProof, addressProof, certificate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStatus,
    TResult? Function(String idProof, String addressProof, String certificate)?
        submitKYC,
  }) {
    return submitKYC?.call(idProof, addressProof, certificate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStatus,
    TResult Function(String idProof, String addressProof, String certificate)?
        submitKYC,
    required TResult orElse(),
  }) {
    if (submitKYC != null) {
      return submitKYC(idProof, addressProof, certificate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStatus value) fetchStatus,
    required TResult Function(_SubmitKYC value) submitKYC,
  }) {
    return submitKYC(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStatus value)? fetchStatus,
    TResult? Function(_SubmitKYC value)? submitKYC,
  }) {
    return submitKYC?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStatus value)? fetchStatus,
    TResult Function(_SubmitKYC value)? submitKYC,
    required TResult orElse(),
  }) {
    if (submitKYC != null) {
      return submitKYC(this);
    }
    return orElse();
  }
}

abstract class _SubmitKYC implements ArtistKYCEvent {
  const factory _SubmitKYC(
      {required final String idProof,
      required final String addressProof,
      required final String certificate}) = _$SubmitKYCImpl;

  String get idProof;
  String get addressProof;
  String get certificate;
  @JsonKey(ignore: true)
  _$$SubmitKYCImplCopyWith<_$SubmitKYCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistKYCState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistKYCStateCopyWith<$Res> {
  factory $ArtistKYCStateCopyWith(
          ArtistKYCState value, $Res Function(ArtistKYCState) then) =
      _$ArtistKYCStateCopyWithImpl<$Res, ArtistKYCState>;
}

/// @nodoc
class _$ArtistKYCStateCopyWithImpl<$Res, $Val extends ArtistKYCState>
    implements $ArtistKYCStateCopyWith<$Res> {
  _$ArtistKYCStateCopyWithImpl(this._value, this._then);

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
    extends _$ArtistKYCStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ArtistKYCState.initial()';
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
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArtistKYCState {
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
    extends _$ArtistKYCStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ArtistKYCState.loading()';
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
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtistKYCState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ArtistKYC kyc});

  $ArtistKYCCopyWith<$Res> get kyc;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ArtistKYCStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kyc = null,
  }) {
    return _then(_$LoadedImpl(
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as ArtistKYC,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistKYCCopyWith<$Res> get kyc {
    return $ArtistKYCCopyWith<$Res>(_value.kyc, (value) {
      return _then(_value.copyWith(kyc: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.kyc});

  @override
  final ArtistKYC kyc;

  @override
  String toString() {
    return 'ArtistKYCState.loaded(kyc: $kyc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.kyc, kyc) || other.kyc == kyc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kyc);

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
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) {
    return loaded(kyc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(kyc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(kyc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArtistKYCState {
  const factory _Loaded({required final ArtistKYC kyc}) = _$LoadedImpl;

  ArtistKYC get kyc;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
          _$SubmittingImpl value, $Res Function(_$SubmittingImpl) then) =
      __$$SubmittingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$ArtistKYCStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
      _$SubmittingImpl _value, $Res Function(_$SubmittingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl();

  @override
  String toString() {
    return 'ArtistKYCState.submitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements ArtistKYCState {
  const factory _Submitting() = _$SubmittingImpl;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$ArtistKYCStateCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl();

  @override
  String toString() {
    return 'ArtistKYCState.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ArtistKYCState {
  const factory _Submitted() = _$SubmittedImpl;
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
    extends _$ArtistKYCStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ArtistKYCState.error(message: $message)';
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
    required TResult Function(ArtistKYC kyc) loaded,
    required TResult Function() submitting,
    required TResult Function() submitted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ArtistKYC kyc)? loaded,
    TResult? Function()? submitting,
    TResult? Function()? submitted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ArtistKYC kyc)? loaded,
    TResult Function()? submitting,
    TResult Function()? submitted,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArtistKYCState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
