import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rewards.freezed.dart';
part 'rewards.g.dart';

@freezed
class LoyaltyBalance with _$LoyaltyBalance {
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

@freezed
class LeaderboardEntry with _$LeaderboardEntry {
  const factory LeaderboardEntry({
    required int rank,
    required String userId,
    required String userName,
    required int referralCount,
    required int pointsEarned,
  }) = _LeaderboardEntry;

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) => _$LeaderboardEntryFromJson(json);
}

@freezed
class RewardItem with _$RewardItem {
  const factory RewardItem({
    required String id,
    required String title,
    required String description,
    required int pointsCost,
    required String type, // 'COUPON', 'SERVICE', 'PHYSICAL'
    String? imageUrl,
    @Default(true) bool isActive,
    @Default(-1) int stock,
    DateTime? createdAt,
  }) = _RewardItem;

  factory RewardItem.fromJson(Map<String, dynamic> json) => _$RewardItemFromJson(json);
}

@freezed
class RewardRedemption with _$RewardRedemption {
  const factory RewardRedemption({
    required String id,
    required String userId,
    required String rewardItemId,
    required int pointsUsed,
    required String status, // 'PENDING', 'COMPLETED'
    String? code,
    DateTime? createdAt,
  }) = _RewardRedemption;

  factory RewardRedemption.fromJson(Map<String, dynamic> json) => _$RewardRedemptionFromJson(json);
}
