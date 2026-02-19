import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/brand_models.dart';
import '../domain/commerce_models.dart';

part 'brand_state.freezed.dart';

@freezed
class BrandState with _$BrandState {
  const factory BrandState.initial() = _Initial;
  const factory BrandState.loading() = _Loading;
  const factory BrandState.loaded({
    BrandDashboardMetrics? metrics,
    @Default([]) List<Campaign> campaigns,
  }) = _Loaded;
  const factory BrandState.error(String message) = _Error;
  const factory BrandState.actionSuccess(String message) = _ActionSuccess;
}
