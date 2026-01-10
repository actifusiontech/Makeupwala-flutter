part of 'earnings_bloc.dart';

@freezed
class EarningsState with _$EarningsState {
  const factory EarningsState.initial() = _Initial;
  const factory EarningsState.loading() = _Loading;
  const factory EarningsState.statsLoaded(EarningsStats stats) = _StatsLoaded;
  const factory EarningsState.earningsLoaded(List<Earning> earnings) = _EarningsLoaded;
  const factory EarningsState.payoutsLoaded(List<Payout> payouts) = _PayoutsLoaded;
  const factory EarningsState.error(String message) = _Error;
}
