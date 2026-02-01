// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoyaltyBalanceImpl _$$LoyaltyBalanceImplFromJson(Map<String, dynamic> json) =>
    _$LoyaltyBalanceImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      balance: (json['balance'] as num).toInt(),
      tier: (json['tier'] as num?)?.toInt() ?? 1,
      totalBookings: (json['total_bookings'] as num?)?.toInt() ?? 0,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LoyaltyBalanceImplToJson(
  _$LoyaltyBalanceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'balance': instance.balance,
  'tier': instance.tier,
  'total_bookings': instance.totalBookings,
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_$LoyaltyTransactionImpl _$$LoyaltyTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$LoyaltyTransactionImpl(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  points: (json['points'] as num).toInt(),
  transactionType: json['transaction_type'] as String,
  entityType: json['entity_type'] as String,
  entityId: json['entity_id'] as String?,
  description: json['description'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$$LoyaltyTransactionImplToJson(
  _$LoyaltyTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'points': instance.points,
  'transaction_type': instance.transactionType,
  'entity_type': instance.entityType,
  'entity_id': instance.entityId,
  'description': instance.description,
  'created_at': instance.createdAt.toIso8601String(),
};

_$ReferralRecordImpl _$$ReferralRecordImplFromJson(Map<String, dynamic> json) =>
    _$ReferralRecordImpl(
      id: json['id'] as String,
      referrerId: json['referrer_id'] as String,
      referredUserId: json['referred_user_id'] as String,
      referredUserName: json['referred_user_name'] as String?,
      status: json['status'] as String,
      rewardPoints: (json['reward_points'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ReferralRecordImplToJson(
  _$ReferralRecordImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'referrer_id': instance.referrerId,
  'referred_user_id': instance.referredUserId,
  'referred_user_name': instance.referredUserName,
  'status': instance.status,
  'reward_points': instance.rewardPoints,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};

_$LeaderboardEntryImpl _$$LeaderboardEntryImplFromJson(
  Map<String, dynamic> json,
) => _$LeaderboardEntryImpl(
  rank: (json['rank'] as num).toInt(),
  userId: json['user_id'] as String,
  userName: json['user_name'] as String,
  referralCount: (json['referral_count'] as num).toInt(),
  pointsEarned: (json['points_earned'] as num).toInt(),
);

Map<String, dynamic> _$$LeaderboardEntryImplToJson(
  _$LeaderboardEntryImpl instance,
) => <String, dynamic>{
  'rank': instance.rank,
  'user_id': instance.userId,
  'user_name': instance.userName,
  'referral_count': instance.referralCount,
  'points_earned': instance.pointsEarned,
};
