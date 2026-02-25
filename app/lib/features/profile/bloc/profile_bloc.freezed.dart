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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
        updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProfileImplCopyWith<$Res> {
  factory _$$FetchProfileImplCopyWith(
          _$FetchProfileImpl value, $Res Function(_$FetchProfileImpl) then) =
      __$$FetchProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isArtist});
}

/// @nodoc
class __$$FetchProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchProfileImpl>
    implements _$$FetchProfileImplCopyWith<$Res> {
  __$$FetchProfileImplCopyWithImpl(
      _$FetchProfileImpl _value, $Res Function(_$FetchProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isArtist = null,
  }) {
    return _then(_$FetchProfileImpl(
      isArtist: null == isArtist
          ? _value.isArtist
          : isArtist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
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

  @JsonKey(ignore: true)
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return fetchProfile(isArtist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return fetchProfile?.call(isArtist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
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
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return fetchProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return fetchProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
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
  @JsonKey(ignore: true)
  _$$FetchProfileImplCopyWith<_$FetchProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileImplCopyWith<$Res> {
  factory _$$UpdateProfileImplCopyWith(
          _$UpdateProfileImpl value, $Res Function(_$UpdateProfileImpl) then) =
      __$$UpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isArtist, Map<String, dynamic> data});
}

/// @nodoc
class __$$UpdateProfileImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileImpl>
    implements _$$UpdateProfileImplCopyWith<$Res> {
  __$$UpdateProfileImplCopyWithImpl(
      _$UpdateProfileImpl _value, $Res Function(_$UpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isArtist = null,
    Object? data = null,
  }) {
    return _then(_$UpdateProfileImpl(
      isArtist: null == isArtist
          ? _value.isArtist
          : isArtist // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$UpdateProfileImpl implements _UpdateProfile {
  const _$UpdateProfileImpl(
      {required this.isArtist, required final Map<String, dynamic> data})
      : _data = data;

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
      runtimeType, isArtist, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return updateProfile(isArtist, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return updateProfile?.call(isArtist, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
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
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements ProfileEvent {
  const factory _UpdateProfile(
      {required final bool isArtist,
      required final Map<String, dynamic> data}) = _$UpdateProfileImpl;

  bool get isArtist;
  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$UpdateProfileImplCopyWith<_$UpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadMediaImplCopyWith<$Res> {
  factory _$$UploadMediaImplCopyWith(
          _$UploadMediaImpl value, $Res Function(_$UploadMediaImpl) then) =
      __$$UploadMediaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$UploadMediaImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadMediaImpl>
    implements _$$UploadMediaImplCopyWith<$Res> {
  __$$UploadMediaImplCopyWithImpl(
      _$UploadMediaImpl _value, $Res Function(_$UploadMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$UploadMediaImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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

  @JsonKey(ignore: true)
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return uploadMedia(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return uploadMedia?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
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
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return uploadMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return uploadMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
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
  @JsonKey(ignore: true)
  _$$UploadMediaImplCopyWith<_$UploadMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadProfilePictureImplCopyWith<$Res> {
  factory _$$UploadProfilePictureImplCopyWith(_$UploadProfilePictureImpl value,
          $Res Function(_$UploadProfilePictureImpl) then) =
      __$$UploadProfilePictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$UploadProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UploadProfilePictureImpl>
    implements _$$UploadProfilePictureImplCopyWith<$Res> {
  __$$UploadProfilePictureImplCopyWithImpl(_$UploadProfilePictureImpl _value,
      $Res Function(_$UploadProfilePictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$UploadProfilePictureImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadProfilePictureImpl implements _UploadProfilePicture {
  const _$UploadProfilePictureImpl({required this.filePath});

  @override
  final String filePath;

  @override
  String toString() {
    return 'ProfileEvent.uploadProfilePicture(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfilePictureImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfilePictureImplCopyWith<_$UploadProfilePictureImpl>
      get copyWith =>
          __$$UploadProfilePictureImplCopyWithImpl<_$UploadProfilePictureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
        updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return uploadProfilePicture(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return uploadProfilePicture?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (uploadProfilePicture != null) {
      return uploadProfilePicture(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return uploadProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return uploadProfilePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (uploadProfilePicture != null) {
      return uploadProfilePicture(this);
    }
    return orElse();
  }
}

abstract class _UploadProfilePicture implements ProfileEvent {
  const factory _UploadProfilePicture({required final String filePath}) =
      _$UploadProfilePictureImpl;

  String get filePath;
  @JsonKey(ignore: true)
  _$$UploadProfilePictureImplCopyWith<_$UploadProfilePictureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProfilePictureImplCopyWith<$Res> {
  factory _$$RemoveProfilePictureImplCopyWith(_$RemoveProfilePictureImpl value,
          $Res Function(_$RemoveProfilePictureImpl) then) =
      __$$RemoveProfilePictureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$RemoveProfilePictureImpl>
    implements _$$RemoveProfilePictureImplCopyWith<$Res> {
  __$$RemoveProfilePictureImplCopyWithImpl(_$RemoveProfilePictureImpl _value,
      $Res Function(_$RemoveProfilePictureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveProfilePictureImpl implements _RemoveProfilePicture {
  const _$RemoveProfilePictureImpl();

  @override
  String toString() {
    return 'ProfileEvent.removeProfilePicture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProfilePictureImpl);
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return removeProfilePicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return removeProfilePicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (removeProfilePicture != null) {
      return removeProfilePicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return removeProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return removeProfilePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (removeProfilePicture != null) {
      return removeProfilePicture(this);
    }
    return orElse();
  }
}

abstract class _RemoveProfilePicture implements ProfileEvent {
  const factory _RemoveProfilePicture() = _$RemoveProfilePictureImpl;
}

/// @nodoc
abstract class _$$FetchReferralsImplCopyWith<$Res> {
  factory _$$FetchReferralsImplCopyWith(_$FetchReferralsImpl value,
          $Res Function(_$FetchReferralsImpl) then) =
      __$$FetchReferralsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchReferralsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchReferralsImpl>
    implements _$$FetchReferralsImplCopyWith<$Res> {
  __$$FetchReferralsImplCopyWithImpl(
      _$FetchReferralsImpl _value, $Res Function(_$FetchReferralsImpl) _then)
      : super(_value, _then);
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return fetchReferrals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return fetchReferrals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
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
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return fetchReferrals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return fetchReferrals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
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
abstract class _$$FetchRewardsImplCopyWith<$Res> {
  factory _$$FetchRewardsImplCopyWith(
          _$FetchRewardsImpl value, $Res Function(_$FetchRewardsImpl) then) =
      __$$FetchRewardsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRewardsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchRewardsImpl>
    implements _$$FetchRewardsImplCopyWith<$Res> {
  __$$FetchRewardsImplCopyWithImpl(
      _$FetchRewardsImpl _value, $Res Function(_$FetchRewardsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRewardsImpl implements _FetchRewards {
  const _$FetchRewardsImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetchRewards()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchRewardsImpl);
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return fetchRewards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return fetchRewards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchRewards != null) {
      return fetchRewards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return fetchRewards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return fetchRewards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchRewards != null) {
      return fetchRewards(this);
    }
    return orElse();
  }
}

abstract class _FetchRewards implements ProfileEvent {
  const factory _FetchRewards() = _$FetchRewardsImpl;
}

/// @nodoc
abstract class _$$RedeemRewardImplCopyWith<$Res> {
  factory _$$RedeemRewardImplCopyWith(
          _$RedeemRewardImpl value, $Res Function(_$RedeemRewardImpl) then) =
      __$$RedeemRewardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rewardId});
}

/// @nodoc
class __$$RedeemRewardImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$RedeemRewardImpl>
    implements _$$RedeemRewardImplCopyWith<$Res> {
  __$$RedeemRewardImplCopyWithImpl(
      _$RedeemRewardImpl _value, $Res Function(_$RedeemRewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardId = null,
  }) {
    return _then(_$RedeemRewardImpl(
      null == rewardId
          ? _value.rewardId
          : rewardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RedeemRewardImpl implements _RedeemReward {
  const _$RedeemRewardImpl(this.rewardId);

  @override
  final String rewardId;

  @override
  String toString() {
    return 'ProfileEvent.redeemReward(rewardId: $rewardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedeemRewardImpl &&
            (identical(other.rewardId, rewardId) ||
                other.rewardId == rewardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedeemRewardImplCopyWith<_$RedeemRewardImpl> get copyWith =>
      __$$RedeemRewardImplCopyWithImpl<_$RedeemRewardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isArtist) fetchProfile,
    required TResult Function(bool isArtist, Map<String, dynamic> data)
        updateProfile,
    required TResult Function(String filePath) uploadMedia,
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return redeemReward(rewardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return redeemReward?.call(rewardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (redeemReward != null) {
      return redeemReward(rewardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return redeemReward(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return redeemReward?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (redeemReward != null) {
      return redeemReward(this);
    }
    return orElse();
  }
}

abstract class _RedeemReward implements ProfileEvent {
  const factory _RedeemReward(final String rewardId) = _$RedeemRewardImpl;

  String get rewardId;
  @JsonKey(ignore: true)
  _$$RedeemRewardImplCopyWith<_$RedeemRewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTransactionsImplCopyWith<$Res> {
  factory _$$FetchTransactionsImplCopyWith(_$FetchTransactionsImpl value,
          $Res Function(_$FetchTransactionsImpl) then) =
      __$$FetchTransactionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTransactionsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$FetchTransactionsImpl>
    implements _$$FetchTransactionsImplCopyWith<$Res> {
  __$$FetchTransactionsImplCopyWithImpl(_$FetchTransactionsImpl _value,
      $Res Function(_$FetchTransactionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTransactionsImpl implements _FetchTransactions {
  const _$FetchTransactionsImpl();

  @override
  String toString() {
    return 'ProfileEvent.fetchTransactions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTransactionsImpl);
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
    required TResult Function(String filePath) uploadProfilePicture,
    required TResult Function() removeProfilePicture,
    required TResult Function() fetchReferrals,
    required TResult Function() fetchRewards,
    required TResult Function(String rewardId) redeemReward,
    required TResult Function() fetchTransactions,
  }) {
    return fetchTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isArtist)? fetchProfile,
    TResult? Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult? Function(String filePath)? uploadMedia,
    TResult? Function(String filePath)? uploadProfilePicture,
    TResult? Function()? removeProfilePicture,
    TResult? Function()? fetchReferrals,
    TResult? Function()? fetchRewards,
    TResult? Function(String rewardId)? redeemReward,
    TResult? Function()? fetchTransactions,
  }) {
    return fetchTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isArtist)? fetchProfile,
    TResult Function(bool isArtist, Map<String, dynamic> data)? updateProfile,
    TResult Function(String filePath)? uploadMedia,
    TResult Function(String filePath)? uploadProfilePicture,
    TResult Function()? removeProfilePicture,
    TResult Function()? fetchReferrals,
    TResult Function()? fetchRewards,
    TResult Function(String rewardId)? redeemReward,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadMedia value) uploadMedia,
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_RemoveProfilePicture value) removeProfilePicture,
    required TResult Function(_FetchReferrals value) fetchReferrals,
    required TResult Function(_FetchRewards value) fetchRewards,
    required TResult Function(_RedeemReward value) redeemReward,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return fetchTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProfile value)? fetchProfile,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadMedia value)? uploadMedia,
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult? Function(_FetchReferrals value)? fetchReferrals,
    TResult? Function(_FetchRewards value)? fetchRewards,
    TResult? Function(_RedeemReward value)? redeemReward,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return fetchTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadMedia value)? uploadMedia,
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_RemoveProfilePicture value)? removeProfilePicture,
    TResult Function(_FetchReferrals value)? fetchReferrals,
    TResult Function(_FetchRewards value)? fetchRewards,
    TResult Function(_RedeemReward value)? redeemReward,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactions implements ProfileEvent {
  const factory _FetchTransactions() = _$FetchTransactionsImpl;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReferralsLoaded value) referralsLoaded,
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
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
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
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
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
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
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
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
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
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
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
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
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
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
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
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
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
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
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
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
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
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
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
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
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
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
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? loyaltyBalance = freezed,
  }) {
    return _then(_$LoadedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      loyaltyBalance: freezed == loyaltyBalance
          ? _value.loyaltyBalance
          : loyaltyBalance // ignore: cast_nullable_to_non_nullable
              as LoyaltyBalance?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

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
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
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
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
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
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
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
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
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
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
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
  const factory _Loaded(
      {required final User user,
      final LoyaltyBalance? loyaltyBalance}) = _$LoadedImpl;

  User get user;
  LoyaltyBalance? get loyaltyBalance;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReferralsLoadedImplCopyWith<$Res> {
  factory _$$ReferralsLoadedImplCopyWith(_$ReferralsLoadedImpl value,
          $Res Function(_$ReferralsLoadedImpl) then) =
      __$$ReferralsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReferralRecord> referrals});
}

/// @nodoc
class __$$ReferralsLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ReferralsLoadedImpl>
    implements _$$ReferralsLoadedImplCopyWith<$Res> {
  __$$ReferralsLoadedImplCopyWithImpl(
      _$ReferralsLoadedImpl _value, $Res Function(_$ReferralsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referrals = null,
  }) {
    return _then(_$ReferralsLoadedImpl(
      referrals: null == referrals
          ? _value._referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<ReferralRecord>,
    ));
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
            const DeepCollectionEquality()
                .equals(other._referrals, _referrals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_referrals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralsLoadedImplCopyWith<_$ReferralsLoadedImpl> get copyWith =>
      __$$ReferralsLoadedImplCopyWithImpl<_$ReferralsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
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
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
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
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
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
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
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
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
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
  const factory _ReferralsLoaded(
      {required final List<ReferralRecord> referrals}) = _$ReferralsLoadedImpl;

  List<ReferralRecord> get referrals;
  @JsonKey(ignore: true)
  _$$ReferralsLoadedImplCopyWith<_$ReferralsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RewardsLoadedImplCopyWith<$Res> {
  factory _$$RewardsLoadedImplCopyWith(
          _$RewardsLoadedImpl value, $Res Function(_$RewardsLoadedImpl) then) =
      __$$RewardsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RewardItem> rewards});
}

/// @nodoc
class __$$RewardsLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$RewardsLoadedImpl>
    implements _$$RewardsLoadedImplCopyWith<$Res> {
  __$$RewardsLoadedImplCopyWithImpl(
      _$RewardsLoadedImpl _value, $Res Function(_$RewardsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewards = null,
  }) {
    return _then(_$RewardsLoadedImpl(
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<RewardItem>,
    ));
  }
}

/// @nodoc

class _$RewardsLoadedImpl implements _RewardsLoaded {
  const _$RewardsLoadedImpl({required final List<RewardItem> rewards})
      : _rewards = rewards;

  final List<RewardItem> _rewards;
  @override
  List<RewardItem> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'ProfileState.rewardsLoaded(rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsLoadedImpl &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rewards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsLoadedImplCopyWith<_$RewardsLoadedImpl> get copyWith =>
      __$$RewardsLoadedImplCopyWithImpl<_$RewardsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
    required TResult Function(String message) error,
  }) {
    return rewardsLoaded(rewards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return rewardsLoaded?.call(rewards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (rewardsLoaded != null) {
      return rewardsLoaded(rewards);
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return rewardsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return rewardsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (rewardsLoaded != null) {
      return rewardsLoaded(this);
    }
    return orElse();
  }
}

abstract class _RewardsLoaded implements ProfileState {
  const factory _RewardsLoaded({required final List<RewardItem> rewards}) =
      _$RewardsLoadedImpl;

  List<RewardItem> get rewards;
  @JsonKey(ignore: true)
  _$$RewardsLoadedImplCopyWith<_$RewardsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RewardRedeemedImplCopyWith<$Res> {
  factory _$$RewardRedeemedImplCopyWith(_$RewardRedeemedImpl value,
          $Res Function(_$RewardRedeemedImpl) then) =
      __$$RewardRedeemedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RewardRedemption redemption});

  $RewardRedemptionCopyWith<$Res> get redemption;
}

/// @nodoc
class __$$RewardRedeemedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$RewardRedeemedImpl>
    implements _$$RewardRedeemedImplCopyWith<$Res> {
  __$$RewardRedeemedImplCopyWithImpl(
      _$RewardRedeemedImpl _value, $Res Function(_$RewardRedeemedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redemption = null,
  }) {
    return _then(_$RewardRedeemedImpl(
      redemption: null == redemption
          ? _value.redemption
          : redemption // ignore: cast_nullable_to_non_nullable
              as RewardRedemption,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardRedemptionCopyWith<$Res> get redemption {
    return $RewardRedemptionCopyWith<$Res>(_value.redemption, (value) {
      return _then(_value.copyWith(redemption: value));
    });
  }
}

/// @nodoc

class _$RewardRedeemedImpl implements _RewardRedeemed {
  const _$RewardRedeemedImpl({required this.redemption});

  @override
  final RewardRedemption redemption;

  @override
  String toString() {
    return 'ProfileState.rewardRedeemed(redemption: $redemption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardRedeemedImpl &&
            (identical(other.redemption, redemption) ||
                other.redemption == redemption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, redemption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardRedeemedImplCopyWith<_$RewardRedeemedImpl> get copyWith =>
      __$$RewardRedeemedImplCopyWithImpl<_$RewardRedeemedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
    required TResult Function(String message) error,
  }) {
    return rewardRedeemed(redemption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return rewardRedeemed?.call(redemption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (rewardRedeemed != null) {
      return rewardRedeemed(redemption);
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return rewardRedeemed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return rewardRedeemed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (rewardRedeemed != null) {
      return rewardRedeemed(this);
    }
    return orElse();
  }
}

abstract class _RewardRedeemed implements ProfileState {
  const factory _RewardRedeemed({required final RewardRedemption redemption}) =
      _$RewardRedeemedImpl;

  RewardRedemption get redemption;
  @JsonKey(ignore: true)
  _$$RewardRedeemedImplCopyWith<_$RewardRedeemedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionsLoadedImplCopyWith<$Res> {
  factory _$$TransactionsLoadedImplCopyWith(_$TransactionsLoadedImpl value,
          $Res Function(_$TransactionsLoadedImpl) then) =
      __$$TransactionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoyaltyTransaction> transactions});
}

/// @nodoc
class __$$TransactionsLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$TransactionsLoadedImpl>
    implements _$$TransactionsLoadedImplCopyWith<$Res> {
  __$$TransactionsLoadedImplCopyWithImpl(_$TransactionsLoadedImpl _value,
      $Res Function(_$TransactionsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$TransactionsLoadedImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<LoyaltyTransaction>,
    ));
  }
}

/// @nodoc

class _$TransactionsLoadedImpl implements _TransactionsLoaded {
  const _$TransactionsLoadedImpl(
      {required final List<LoyaltyTransaction> transactions})
      : _transactions = transactions;

  final List<LoyaltyTransaction> _transactions;
  @override
  List<LoyaltyTransaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'ProfileState.transactionsLoaded(transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsLoadedImplCopyWith<_$TransactionsLoadedImpl> get copyWith =>
      __$$TransactionsLoadedImplCopyWithImpl<_$TransactionsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
    required TResult Function(String message) error,
  }) {
    return transactionsLoaded(transactions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult? Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
    TResult? Function(String message)? error,
  }) {
    return transactionsLoaded?.call(transactions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, LoyaltyBalance? loyaltyBalance)? loaded,
    TResult Function(List<ReferralRecord> referrals)? referralsLoaded,
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (transactionsLoaded != null) {
      return transactionsLoaded(transactions);
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return transactionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReferralsLoaded value)? referralsLoaded,
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return transactionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReferralsLoaded value)? referralsLoaded,
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (transactionsLoaded != null) {
      return transactionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _TransactionsLoaded implements ProfileState {
  const factory _TransactionsLoaded(
          {required final List<LoyaltyTransaction> transactions}) =
      _$TransactionsLoadedImpl;

  List<LoyaltyTransaction> get transactions;
  @JsonKey(ignore: true)
  _$$TransactionsLoadedImplCopyWith<_$TransactionsLoadedImpl> get copyWith =>
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
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorImpl>
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
    required TResult Function(User user, LoyaltyBalance? loyaltyBalance) loaded,
    required TResult Function(List<ReferralRecord> referrals) referralsLoaded,
    required TResult Function(List<RewardItem> rewards) rewardsLoaded,
    required TResult Function(RewardRedemption redemption) rewardRedeemed,
    required TResult Function(List<LoyaltyTransaction> transactions)
        transactionsLoaded,
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
    TResult? Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult? Function(RewardRedemption redemption)? rewardRedeemed,
    TResult? Function(List<LoyaltyTransaction> transactions)?
        transactionsLoaded,
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
    TResult Function(List<RewardItem> rewards)? rewardsLoaded,
    TResult Function(RewardRedemption redemption)? rewardRedeemed,
    TResult Function(List<LoyaltyTransaction> transactions)? transactionsLoaded,
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
    required TResult Function(_RewardsLoaded value) rewardsLoaded,
    required TResult Function(_RewardRedeemed value) rewardRedeemed,
    required TResult Function(_TransactionsLoaded value) transactionsLoaded,
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
    TResult? Function(_RewardsLoaded value)? rewardsLoaded,
    TResult? Function(_RewardRedeemed value)? rewardRedeemed,
    TResult? Function(_TransactionsLoaded value)? transactionsLoaded,
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
    TResult Function(_RewardsLoaded value)? rewardsLoaded,
    TResult Function(_RewardRedeemed value)? rewardRedeemed,
    TResult Function(_TransactionsLoaded value)? transactionsLoaded,
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
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
