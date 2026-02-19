// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyContactImpl _$$EmergencyContactImplFromJson(
        Map<String, dynamic> json) =>
    _$EmergencyContactImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      relation: json['relation'] as String,
      isNotificationEnabled: json['is_notification_enabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$EmergencyContactImplToJson(
        _$EmergencyContactImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'relation': instance.relation,
      'is_notification_enabled': instance.isNotificationEnabled,
    };

_$SOSAlertImpl _$$SOSAlertImplFromJson(Map<String, dynamic> json) =>
    _$SOSAlertImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      address: json['address'] as String?,
      batteryLevel: (json['battery_level'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      status: json['status'] as String? ?? 'active',
    );

Map<String, dynamic> _$$SOSAlertImplToJson(_$SOSAlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
      'battery_level': instance.batteryLevel,
      'created_at': instance.createdAt.toIso8601String(),
      'status': instance.status,
    };
