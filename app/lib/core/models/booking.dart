import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Booking({
    required String id,
    required String customerId,
    required String artistId,
    required List<String> serviceIds,
    required String bookingDate,
    required String bookingTime,
    required String address,
    required double totalAmount,
    required String status, // 'pending', 'confirmed', 'completed', 'cancelled'
    String? paymentId,
    String? paymentStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}
