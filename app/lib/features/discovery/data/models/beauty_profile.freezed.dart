// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beauty_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeautyProfile _$BeautyProfileFromJson(Map<String, dynamic> json) {
  return _BeautyProfile.fromJson(json);
}

/// @nodoc
mixin _$BeautyProfile {
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'skin_tone')
  String get skinTone => throw _privateConstructorUsedError;
  @JsonKey(name: 'skin_type')
  String get skinType => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_style')
  String get preferredStyle => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeautyProfileCopyWith<BeautyProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeautyProfileCopyWith<$Res> {
  factory $BeautyProfileCopyWith(
          BeautyProfile value, $Res Function(BeautyProfile) then) =
      _$BeautyProfileCopyWithImpl<$Res, BeautyProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'skin_tone') String skinTone,
      @JsonKey(name: 'skin_type') String skinType,
      @JsonKey(name: 'preferred_style') String preferredStyle,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$BeautyProfileCopyWithImpl<$Res, $Val extends BeautyProfile>
    implements $BeautyProfileCopyWith<$Res> {
  _$BeautyProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? skinTone = null,
    Object? skinType = null,
    Object? preferredStyle = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      skinTone: null == skinTone
          ? _value.skinTone
          : skinTone // ignore: cast_nullable_to_non_nullable
              as String,
      skinType: null == skinType
          ? _value.skinType
          : skinType // ignore: cast_nullable_to_non_nullable
              as String,
      preferredStyle: null == preferredStyle
          ? _value.preferredStyle
          : preferredStyle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeautyProfileImplCopyWith<$Res>
    implements $BeautyProfileCopyWith<$Res> {
  factory _$$BeautyProfileImplCopyWith(
          _$BeautyProfileImpl value, $Res Function(_$BeautyProfileImpl) then) =
      __$$BeautyProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'skin_tone') String skinTone,
      @JsonKey(name: 'skin_type') String skinType,
      @JsonKey(name: 'preferred_style') String preferredStyle,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$BeautyProfileImplCopyWithImpl<$Res>
    extends _$BeautyProfileCopyWithImpl<$Res, _$BeautyProfileImpl>
    implements _$$BeautyProfileImplCopyWith<$Res> {
  __$$BeautyProfileImplCopyWithImpl(
      _$BeautyProfileImpl _value, $Res Function(_$BeautyProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? skinTone = null,
    Object? skinType = null,
    Object? preferredStyle = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$BeautyProfileImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      skinTone: null == skinTone
          ? _value.skinTone
          : skinTone // ignore: cast_nullable_to_non_nullable
              as String,
      skinType: null == skinType
          ? _value.skinType
          : skinType // ignore: cast_nullable_to_non_nullable
              as String,
      preferredStyle: null == preferredStyle
          ? _value.preferredStyle
          : preferredStyle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeautyProfileImpl implements _BeautyProfile {
  const _$BeautyProfileImpl(
      {@JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'skin_tone') required this.skinTone,
      @JsonKey(name: 'skin_type') required this.skinType,
      @JsonKey(name: 'preferred_style') required this.preferredStyle,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$BeautyProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeautyProfileImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'skin_tone')
  final String skinTone;
  @override
  @JsonKey(name: 'skin_type')
  final String skinType;
  @override
  @JsonKey(name: 'preferred_style')
  final String preferredStyle;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'BeautyProfile(userId: $userId, skinTone: $skinTone, skinType: $skinType, preferredStyle: $preferredStyle, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeautyProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.skinTone, skinTone) ||
                other.skinTone == skinTone) &&
            (identical(other.skinType, skinType) ||
                other.skinType == skinType) &&
            (identical(other.preferredStyle, preferredStyle) ||
                other.preferredStyle == preferredStyle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userId, skinTone, skinType, preferredStyle, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeautyProfileImplCopyWith<_$BeautyProfileImpl> get copyWith =>
      __$$BeautyProfileImplCopyWithImpl<_$BeautyProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeautyProfileImplToJson(
      this,
    );
  }
}

abstract class _BeautyProfile implements BeautyProfile {
  const factory _BeautyProfile(
      {@JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'skin_tone') required final String skinTone,
      @JsonKey(name: 'skin_type') required final String skinType,
      @JsonKey(name: 'preferred_style') required final String preferredStyle,
      @JsonKey(name: 'created_at')
      final DateTime? createdAt}) = _$BeautyProfileImpl;

  factory _BeautyProfile.fromJson(Map<String, dynamic> json) =
      _$BeautyProfileImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'skin_tone')
  String get skinTone;
  @override
  @JsonKey(name: 'skin_type')
  String get skinType;
  @override
  @JsonKey(name: 'preferred_style')
  String get preferredStyle;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BeautyProfileImplCopyWith<_$BeautyProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
