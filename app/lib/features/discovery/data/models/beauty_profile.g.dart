// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beauty_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeautyProfileImpl _$$BeautyProfileImplFromJson(Map<String, dynamic> json) =>
    _$BeautyProfileImpl(
      userId: json['user_id'] as String?,
      skinTone: json['skin_tone'] as String,
      skinType: json['skin_type'] as String,
      preferredStyle: json['preferred_style'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$BeautyProfileImplToJson(_$BeautyProfileImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'skin_tone': instance.skinTone,
      'skin_type': instance.skinType,
      'preferred_style': instance.preferredStyle,
      'created_at': instance.createdAt?.toIso8601String(),
    };
