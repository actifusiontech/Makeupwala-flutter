part of 'revenue_analytics_bloc.dart';

@freezed
class RevenueAnalyticsEvent with _$RevenueAnalyticsEvent {
  const factory RevenueAnalyticsEvent.fetchAnalytics(String studioId, {@Default('monthly') String timeframe}) = _FetchAnalytics;
}
