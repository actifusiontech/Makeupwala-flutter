part of 'revenue_analytics_bloc.dart';

@freezed
class RevenueAnalyticsState with _$RevenueAnalyticsState {
  const factory RevenueAnalyticsState.initial() = _Initial;
  const factory RevenueAnalyticsState.loading() = _Loading;
  const factory RevenueAnalyticsState.loaded(Map<String, dynamic> report) = _Loaded;
  const factory RevenueAnalyticsState.error(String message) = _Error;
}
