// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandDashboardMetricsImpl _$$BrandDashboardMetricsImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandDashboardMetricsImpl(
      wholesaleSales: (json['wholesale_sales'] as num).toDouble(),
      wholesaleChange: json['wholesale_change'] as String,
      referralOrders: (json['referral_orders'] as num).toInt(),
      referralChange: json['referral_change'] as String,
      activeCurators: (json['active_curators'] as num).toInt(),
      curatorsChange: json['curators_change'] as String,
      pendingReviews: (json['pending_reviews'] as num).toInt(),
      recentSubmissions: (json['recent_submissions'] as List<dynamic>?)
              ?.map((e) =>
                  DashboardSubmission.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      topProducts: (json['top_products'] as List<dynamic>?)
              ?.map((e) => DashboardProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      revenueChart: (json['revenue_chart'] as List<dynamic>?)
              ?.map((e) => ChartDataPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      submissionChart: (json['submission_chart'] as List<dynamic>?)
              ?.map((e) => ChartDataPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BrandDashboardMetricsImplToJson(
        _$BrandDashboardMetricsImpl instance) =>
    <String, dynamic>{
      'wholesale_sales': instance.wholesaleSales,
      'wholesale_change': instance.wholesaleChange,
      'referral_orders': instance.referralOrders,
      'referral_change': instance.referralChange,
      'active_curators': instance.activeCurators,
      'curators_change': instance.curatorsChange,
      'pending_reviews': instance.pendingReviews,
      'recent_submissions': instance.recentSubmissions,
      'top_products': instance.topProducts,
      'revenue_chart': instance.revenueChart,
      'submission_chart': instance.submissionChart,
    };

_$DashboardSubmissionImpl _$$DashboardSubmissionImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardSubmissionImpl(
      id: json['id'] as String,
      artist: json['artist'] as String,
      campaign: json['campaign'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$DashboardSubmissionImplToJson(
        _$DashboardSubmissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist': instance.artist,
      'campaign': instance.campaign,
      'date': instance.date,
    };

_$DashboardProductImpl _$$DashboardProductImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardProductImpl(
      name: json['name'] as String,
      sales: (json['sales'] as num).toInt(),
    );

Map<String, dynamic> _$$DashboardProductImplToJson(
        _$DashboardProductImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sales': instance.sales,
    };

_$ChartDataPointImpl _$$ChartDataPointImplFromJson(Map<String, dynamic> json) =>
    _$ChartDataPointImpl(
      name: json['name'] as String,
      value: (json['value'] as num?)?.toDouble(),
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChartDataPointImplToJson(
        _$ChartDataPointImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'count': instance.count,
    };
