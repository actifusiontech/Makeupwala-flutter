part of 'product_usage_bloc.dart';

@freezed
class ProductUsageEvent with _$ProductUsageEvent {
  const factory ProductUsageEvent.fetchInventory() = _FetchInventory;
  const factory ProductUsageEvent.logUsage({
    required String studioId,
    required String visitId,
    required String productId,
    required double units,
  }) = _LogUsage;
}
