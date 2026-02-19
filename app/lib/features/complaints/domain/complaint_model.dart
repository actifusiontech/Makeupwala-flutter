import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaint_model.freezed.dart';
part 'complaint_model.g.dart';

@freezed
class ComplaintModel with _$ComplaintModel {
  const factory ComplaintModel({
    required String id,
    @JsonKey(name: 'booking_id') required String bookingId,
    required String subject,
    required String description,
    @Default('PENDING') String status, // PENDING, RESOLVED, REJECTED
    @JsonKey(name: 'admin_comment') String? adminComment,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _ComplaintModel;

  factory ComplaintModel.fromJson(Map<String, dynamic> json) =>
      _$ComplaintModelFromJson(json);
}
