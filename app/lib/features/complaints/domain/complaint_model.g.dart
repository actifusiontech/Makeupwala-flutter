// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplaintModelImpl _$$ComplaintModelImplFromJson(Map<String, dynamic> json) =>
    _$ComplaintModelImpl(
      id: json['id'] as String,
      bookingId: json['booking_id'] as String,
      subject: json['subject'] as String,
      description: json['description'] as String,
      status: json['status'] as String? ?? 'PENDING',
      adminComment: json['admin_comment'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ComplaintModelImplToJson(
        _$ComplaintModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'subject': instance.subject,
      'description': instance.description,
      'status': instance.status,
      'admin_comment': instance.adminComment,
      'created_at': instance.createdAt.toIso8601String(),
    };
