// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) {
  return _FavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get category => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @HiveField(4)
  double get rating => throw _privateConstructorUsedError;
  @HiveField(5)
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteModelCopyWith<FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteModelCopyWith<$Res> {
  factory $FavoriteModelCopyWith(
          FavoriteModel value, $Res Function(FavoriteModel) then) =
      _$FavoriteModelCopyWithImpl<$Res, FavoriteModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @JsonKey(name: 'full_name') String fullName,
      @HiveField(2) String category,
      @HiveField(3) @JsonKey(name: 'profile_image') String? profileImage,
      @HiveField(4) double rating,
      @HiveField(5) String location});
}

/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res, $Val extends FavoriteModel>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? category = null,
    Object? profileImage = freezed,
    Object? rating = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteModelImplCopyWith<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  factory _$$FavoriteModelImplCopyWith(
          _$FavoriteModelImpl value, $Res Function(_$FavoriteModelImpl) then) =
      __$$FavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) @JsonKey(name: 'full_name') String fullName,
      @HiveField(2) String category,
      @HiveField(3) @JsonKey(name: 'profile_image') String? profileImage,
      @HiveField(4) double rating,
      @HiveField(5) String location});
}

/// @nodoc
class __$$FavoriteModelImplCopyWithImpl<$Res>
    extends _$FavoriteModelCopyWithImpl<$Res, _$FavoriteModelImpl>
    implements _$$FavoriteModelImplCopyWith<$Res> {
  __$$FavoriteModelImplCopyWithImpl(
      _$FavoriteModelImpl _value, $Res Function(_$FavoriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? category = null,
    Object? profileImage = freezed,
    Object? rating = null,
    Object? location = null,
  }) {
    return _then(_$FavoriteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 5)
class _$FavoriteModelImpl implements _FavoriteModel {
  const _$FavoriteModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @JsonKey(name: 'full_name') required this.fullName,
      @HiveField(2) required this.category,
      @HiveField(3) @JsonKey(name: 'profile_image') this.profileImage,
      @HiveField(4) required this.rating,
      @HiveField(5) required this.location});

  factory _$FavoriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @HiveField(2)
  final String category;
  @override
  @HiveField(3)
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @HiveField(4)
  final double rating;
  @override
  @HiveField(5)
  final String location;

  @override
  String toString() {
    return 'FavoriteModel(id: $id, fullName: $fullName, category: $category, profileImage: $profileImage, rating: $rating, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, category, profileImage, rating, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteModelImplCopyWith<_$FavoriteModelImpl> get copyWith =>
      __$$FavoriteModelImplCopyWithImpl<_$FavoriteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteModelImplToJson(
      this,
    );
  }
}

abstract class _FavoriteModel implements FavoriteModel {
  const factory _FavoriteModel(
      {@HiveField(0) required final String id,
      @HiveField(1) @JsonKey(name: 'full_name') required final String fullName,
      @HiveField(2) required final String category,
      @HiveField(3) @JsonKey(name: 'profile_image') final String? profileImage,
      @HiveField(4) required final double rating,
      @HiveField(5) required final String location}) = _$FavoriteModelImpl;

  factory _FavoriteModel.fromJson(Map<String, dynamic> json) =
      _$FavoriteModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @HiveField(2)
  String get category;
  @override
  @HiveField(3)
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @HiveField(4)
  double get rating;
  @override
  @HiveField(5)
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteModelImplCopyWith<_$FavoriteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
