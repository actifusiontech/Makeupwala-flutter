import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_models.freezed.dart';
part 'brand_models.g.dart';

@freezed
class BrandDashboardMetrics with _$BrandDashboardMetrics {
  const factory BrandDashboardMetrics({
    required double wholesaleSales,
    required String wholesaleChange,
    required int referralOrders,
    required String referralChange,
    required int activeCurators,
    required String curatorsChange,
    required int pendingReviews,
    @Default([]) List<DashboardSubmission> recentSubmissions,
    @Default([]) List<DashboardProduct> topProducts,
    @Default([]) List<ChartDataPoint> revenueChart,
    @Default([]) List<ChartDataPoint> submissionChart,
  }) = _BrandDashboardMetrics;

  factory BrandDashboardMetrics.fromJson(Map<String, dynamic> json) => _$BrandDashboardMetricsFromJson(json);
}

@freezed
class DashboardSubmission with _$DashboardSubmission {
  const factory DashboardSubmission({
    required String id,
    required String artist,
    required String campaign,
    required String date,
  }) = _DashboardSubmission;

  factory DashboardSubmission.fromJson(Map<String, dynamic> json) => _$DashboardSubmissionFromJson(json);
}

@freezed
class DashboardProduct with _$DashboardProduct {
  const factory DashboardProduct({
    required String name,
    required int sales,
  }) = _DashboardProduct;

  factory DashboardProduct.fromJson(Map<String, dynamic> json) => _$DashboardProductFromJson(json);
}

@freezed
class ChartDataPoint with _$ChartDataPoint {
  const factory ChartDataPoint({
    required String name,
    double? value,
    int? count,
  }) = _ChartDataPoint;

  factory ChartDataPoint.fromJson(Map<String, dynamic> json) => _$ChartDataPointFromJson(json);
}
