// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
    updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function() fetchReferrals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function()? fetchReferrals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function()? fetchReferrals,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_FetchReferrals value) fetchReferrals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
    ProfileEvent value,
    $Res Function(ProfileEvent) then,
  ) = _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchProfileImplCopyWith<$Res> {
  factory _$$FetchProfileImplCopyWith(
    _$FetchProfileImpl value,
    $Res Function(_$FetchProfileImpl) then,
  ) = __$$FetchProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isArtist});
}

/// @nodoc
class __$$FetchProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchProfileImpl>
    implements _$$FetchProfileImplCopyWith<$Res> {
  __$$FetchProfileImplCopyWithImpl(
    _$FetchProfileImpl _value,
    $Res Function(_$FetchProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isArtist = null}) {
    return _then(
      _$FetchProfileImpl(
        isArtist: null == isArtist
            ? _value.isArtist
            : isArtist // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FetchProfileImpl implements _FetchProfile {
  const _$FetchProfileImpl({required this.isArtist});

  @override
  final bool isArtist;

  @override
  String toString() {
    return 'ProfileEvent.fetchProfile(isArtist: $isArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProfileImpl &&
            (identical(other.isArtist, isArtist) ||
                other.isArtist == isArtist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isArtist);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProfileImplCopyWith<_$FetchProfileImpl> get copyWith =>
      __$$FetchProfileImplCopyWithImpl<_$FetchProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
    updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function() fetchReferrals,
  }) {
    return fetchProfile(isArtist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function()? fetchReferrals,
  }) {
    return fetchProfile?.call(isArtist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function()? fetchReferrals,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile(isArtist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_FetchReferrals value) fetchReferrals,
  }) {
    return fetchProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
  }) {
    return fetchProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile(this);
    }
    return orElse();
  }
}

abstract class _FetchProfile implements ProfileEvent {
  const factory _FetchProfile({required final bool isArtist}) =
      _$FetchProfileImpl;

  bool get isArtist;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchProfileImplCopyWith<_$FetchProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
    _$UpdateProfileImpl value,
    $Res Function(_$UpdateProfileImpl) then,
  ) = __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isArtist, Map<String, dynamic> data});
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
    _$UpdateProfileImpl _value,
    $Res Function(_$UpdateProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isArtist = null, Object? data = null}) {
    return _then(
      _$UpdateProfileImpl(
        isArtist: null == isArtist
            ? _value.isArtist
            : isArtist // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl({
    required this.isArtist,
    required final Map<String, dynamic> data,
  }) : _data = data;

  @override
  final bool isArtist;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ProfileEvent.updateProfile(isArtist: $isArtist, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileImpl &&
            (identical(other.isArtist, isArtist) ||
                other.isArtist == isArtist) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isArtist,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      __$$UpdateProfileImplCopyWithImpl<_$UpdateProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
    updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function() fetchReferrals,
  }) {
    return updateProfile(isArtist, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function()? fetchReferrals,
  }) {
    return updateProfile?.call(isArtist, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function()? fetchReferrals,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(isArtist, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_FetchReferrals value) fetchReferrals,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements ProfileEvent {
  const factory _UpdateProfile({
    required final bool isArtist,
    required final Map<String, dynamic> data,
  }) = _$UpdateProfileImpl;

  bool get isArtist;
  Map<String, dynamic> get data;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadMediaImplCopyWith<$Res> {
  factory _$$UploadMediaImplCopyWith(
    _$UploadMediaImpl value,
    $Res Function(_$UploadMediaImpl) then,
  ) = __$$UploadMediaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$UploadMediaImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadMediaImpl>
    implements _$$UploadMediaImplCopyWith<$Res> {
  __$$UploadMediaImplCopyWithImpl(
    _$UploadMediaImpl _value,
    $Res Function(_$UploadMediaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filePath = null}) {
    return _then(
      _$UploadMediaImpl(
        filePath: null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UploadMediaImpl implements _UploadMedia {
  const _$UploadMediaImpl({required this.filePath});

  @override
  final String filePath;

  @override
  String toString() {
    return 'ProfileEvent.uploadMedia(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMediaImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMediaImplCopyWith<_$UploadMediaImpl> get copyWith =>
      __$$UploadMediaImplCopyWithImpl<_$UploadMediaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
    updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function() fetchReferrals,
  }) {
    return uploadMedia(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function()? fetchReferrals,
  }) {
    return uploadMedia?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function()? fetchReferrals,
    required TResult orElse(),
  }) {
    if (uploadMedia != null) {
      return uploadMedia(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_FetchReferrals value) fetchReferrals,
  }) {
    return uploadMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
  }) {
    return uploadMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    required TResult orElse(),
  }) {
    if (uploadMedia != null) {
      return uploadMedia(this);
    }
    return orElse();
  }
}

abstract class _UploadMedia implements ProfileEvent {
  const factory _UploadMedia({required final String filePath}) =
      _$UploadMediaImpl;

  String get filePath;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadMediaImplCopyWith<_$UploadMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchReferralsImplCopyWith<$Res> {
  factory _$$FetchReferralsImplCopyWith(
    _$FetchReferralsImpl value,
    $Res Function(_$FetchReferralsImpl) then,
  ) = __$$FetchReferralsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchReferralsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchReferralsImpl>
    implements _$$FetchReferralsImplCopyWith<$Res> {
  __$$FetchReferralsImplCopyWithImpl(
    _$FetchReferralsImpl _value,
    $Res Function(_$FetchReferralsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchReferralsImpl implements _FetchReferrals {
  const _$FetchReferralsImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetchReferrals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchReferralsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
    updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function() fetchReferrals,
  }) {
    return fetchReferrals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function()? fetchReferrals,
  }) {
    return fetchReferrals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function()? fetchReferrals,
    required TResult orElse(),
  }) {
    if (fetchReferrals != null) {
      return fetchReferrals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_FetchReferrals value) fetchReferrals,
  }) {
    return fetchReferrals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
  }) {
    return fetchReferrals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    required TResult orElse(),
  }) {
    if (fetchReferrals != null) {
      return fetchReferrals(this);
    }
    return orElse();
  }
}

abstract class _FetchReferrals implements ProfileEvent {
  const factory _FetchReferrals() = _$FetchReferralsImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
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
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
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
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
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
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
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
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
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
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
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
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
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
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
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
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
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
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, LoyaltyBalance? loyaltyBalance});

  $UserCopyWith<$Res> get user;
  $LoyaltyBalanceCopyWith<$Res>? get loyaltyBalance;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null, Object? loyaltyBalance = freezed}) {
    return _then(
      _$LoadedImpl(
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        loyaltyBalance: freezed == loyaltyBalance
            ? _value.loyaltyBalance
            : loyaltyBalance // ignore: cast_nullable_to_non_nullable
                  as LoyaltyBalance?,
      ),
    );
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoyaltyBalanceCopyWith<$Res>? get loyaltyBalance {
    if (_value.loyaltyBalance == null) {
      return null;
    }

    return $LoyaltyBalanceCopyWith<$Res>(_value.loyaltyBalance!, (value) {
      return _then(_value.copyWith(loyaltyBalance: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.user, this.loyaltyBalance});

  @override
  final User user;
  @override
  final LoyaltyBalance? loyaltyBalance;

  @override
  String toString() {
    return 'ProfileState.loaded(user: $user, loyaltyBalance: $loyaltyBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loyaltyBalance, loyaltyBalance) ||
                other.loyaltyBalance == loyaltyBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, loyaltyBalance);

  /// Create a copy of ProfileState
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
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(String message) error,
  }) {
    return loaded(user, loyaltyBalance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(user, loyaltyBalance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, loyaltyBalance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
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
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
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
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ProfileState {
  const factory _Loaded({
    required final User user,
    final LoyaltyBalance? loyaltyBalance,
  }) = _$LoadedImpl;

  User get user;
  LoyaltyBalance? get loyaltyBalance;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReferralsLoadedImplCopyWith<$Res> {
  factory _$$ReferralsLoadedImplCopyWith(
    _$ReferralsLoadedImpl value,
    $Res Function(_$ReferralsLoadedImpl) then,
  ) = __$$ReferralsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReferralRecord> referrals});
}

/// @nodoc
class __$$ReferralsLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ReferralsLoadedImpl>
    implements _$$ReferralsLoadedImplCopyWith<$Res> {
  __$$ReferralsLoadedImplCopyWithImpl(
    _$ReferralsLoadedImpl _value,
    $Res Function(_$ReferralsLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? referrals = null}) {
    return _then(
      _$ReferralsLoadedImpl(
        referrals: null == referrals
            ? _value._referrals
            : referrals // ignore: cast_nullable_to_non_nullable
                  as List<ReferralRecord>,
      ),
    );
  }
}

/// @nodoc

class _$ReferralsLoadedImpl implements _ReferralsLoaded {
  const _$ReferralsLoadedImpl({required final List<ReferralRecord> referrals})
    : _referrals = referrals;

  final List<ReferralRecord> _referrals;
  @override
  List<ReferralRecord> get referrals {
    if (_referrals is EqualUnmodifiableListView) return _referrals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referrals);
  }

  @override
  String toString() {
    return 'ProfileState.referralsLoaded(referrals: $referrals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralsLoadedImpl &&
            const DeepCollectionEquality().equals(
              other._referrals,
              _referrals,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_referrals));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralsLoadedImplCopyWith<_$ReferralsLoadedImpl> get copyWith =>
      __$$ReferralsLoadedImplCopyWithImpl<_$ReferralsLoadedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(String message) error,
  }) {
    return referralsLoaded(referrals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(String message)? error,
  }) {
    return referralsLoaded?.call(referrals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (referralsLoaded != null) {
      return referralsLoaded(referrals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return referralsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return referralsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (referralsLoaded != null) {
      return referralsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ReferralsLoaded implements ProfileState {
  const factory _ReferralsLoaded({
    required final List<ReferralRecord> referrals,
  }) = _$ReferralsLoadedImpl;

  List<ReferralRecord> get referrals;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferralsLoadedImplCopyWith<_$ReferralsLoadedImpl> get copyWith =>
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
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
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
    return 'ProfileState.error(message: $message)';
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

  /// Create a copy of ProfileState
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
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
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
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
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
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
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
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProfileState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
