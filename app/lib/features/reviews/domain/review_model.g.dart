// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      id: json['id'] as String,
      bookingId: json['booking_id'] as String,
      artistId: json['artist_id'] as String,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      userAvatar: json['user_avatar'] as String?,
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'artist_id': instance.artistId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_avatar': instance.userAvatar,
      'rating': instance.rating,
      'comment': instance.comment,
      'images': instance.images,
      'timestamp': instance.timestamp.toIso8601String(),
    };
