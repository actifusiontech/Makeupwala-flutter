part of 'earnings_bloc.dart';

@freezed
class EarningsEvent with _$EarningsEvent {
  const factory EarningsEvent.fetchEarningsStats() = FetchEarningsStats;
  const factory EarningsEvent.fetchEarnings({
    String? period,
    String? status,
  }) = FetchEarnings;
  const factory EarningsEvent.fetchPayouts() = FetchPayouts;
}
