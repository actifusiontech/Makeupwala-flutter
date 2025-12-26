// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Booking _$BookingFromJson(Map<String, dynamic> json) => _Booking(
  id: json['id'] as String,
  customerId: json['customer_id'] as String,
  artistId: json['artist_id'] as String,
  serviceIds: (json['service_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  bookingDate: json['booking_date'] as String,
  bookingTime: json['booking_time'] as String,
  address: json['address'] as String,
  totalAmount: (json['total_amount'] as num).toDouble(),
  status: json['status'] as String,
  paymentId: json['payment_id'] as String?,
  paymentStatus: json['payment_status'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$BookingToJson(_Booking instance) => <String, dynamic>{
  'id': instance.id,
  'customer_id': instance.customerId,
  'artist_id': instance.artistId,
  'service_ids': instance.serviceIds,
  'booking_date': instance.bookingDate,
  'booking_time': instance.bookingTime,
  'address': instance.address,
  'total_amount': instance.totalAmount,
  'status': instance.status,
  'payment_id': instance.paymentId,
  'payment_status': instance.paymentStatus,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
