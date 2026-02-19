import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
@HiveType(typeId: 4) // TypeIds 0-3 are likely taken (User, Booking, etc.) - check conflicts if any
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required String body,
    @HiveField(3) String? payload,
    @HiveField(4) required DateTime timestamp,
    @HiveField(5) @Default(false) bool isRead,
    @HiveField(6) @Default('system') String type, // booking, chat, system, promotion
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
