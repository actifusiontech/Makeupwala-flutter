part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded({
    required User user,
    LoyaltyBalance? loyaltyBalance,
  }) = _Loaded;
  const factory ProfileState.referralsLoaded({required List<ReferralRecord> referrals}) = _ReferralsLoaded;
  const factory ProfileState.rewardsLoaded({required List<RewardItem> rewards}) = _RewardsLoaded;
  const factory ProfileState.rewardRedeemed({required RewardRedemption redemption}) = _RewardRedeemed;
  const factory ProfileState.transactionsLoaded({required List<LoyaltyTransaction> transactions}) = _TransactionsLoaded;
  const factory ProfileState.error({required String message}) = _Error;
}
