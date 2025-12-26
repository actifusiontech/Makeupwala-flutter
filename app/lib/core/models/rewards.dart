import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rewards.freezed.dart';
part 'rewards.g.dart';

@freezed
class LoyaltyBalance with _$LoyaltyBalance {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoyaltyBalance({
    required String id,
    required String userId,
    required int balance,
    @Default(1) int tier,
    @Default(0) int totalBookings,
    DateTime? updatedAt,
  }) = _LoyaltyBalance;

  factory LoyaltyBalance.fromJson(Map<String, dynamic> json) => _$LoyaltyBalanceFromJson(json);
}

@freezed
class LoyaltyTransaction with _$LoyaltyTransaction {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoyaltyTransaction({
    required String id,
    required String userId,
    required int points,
    required String transactionType, // 'EARN', 'REDEEM'
    required String entityType, // 'BOOKING', 'REFERRAL'
    String? entityId,
    required String description,
    required DateTime createdAt,
  }) = _LoyaltyTransaction;

  factory LoyaltyTransaction.fromJson(Map<String, dynamic> json) => _$LoyaltyTransactionFromJson(json);
}

@freezed
class ReferralRecord with _$ReferralRecord {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ReferralRecord({
    required String id,
    required String referrerId,
    required String referredUserId,
    String? referredUserName, // Added for UI display
    required String status, // 'PENDING', 'COMPLETED'
    required int rewardPoints,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _ReferralRecord;

  factory ReferralRecord.fromJson(Map<String, dynamic> json) => _$ReferralRecordFromJson(json);
}
