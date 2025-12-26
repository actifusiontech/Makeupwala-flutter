// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  fullName: json['full_name'] as String,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  role: json['role'] as String,
  profileImageUrl: json['profile_image_url'] as String?,
  isVerified: json['is_verified'] as bool? ?? false,
  referralCode: json['referral_code'] as String?,
  loyaltyPoints: (json['loyalty_points'] as num?)?.toInt() ?? 0,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'full_name': instance.fullName,
  'email': instance.email,
  'phone': instance.phone,
  'role': instance.role,
  'profile_image_url': instance.profileImageUrl,
  'is_verified': instance.isVerified,
  'referral_code': instance.referralCode,
  'loyalty_points': instance.loyaltyPoints,
  'created_at': instance.createdAt?.toIso8601String(),
};
