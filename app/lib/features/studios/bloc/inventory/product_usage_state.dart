part of 'product_usage_bloc.dart';

@freezed
class ProductUsageState with _$ProductUsageState {
  const factory ProductUsageState.initial() = _Initial;
  const factory ProductUsageState.loading() = _Loading;
  const factory ProductUsageState.inventoryLoaded(List<dynamic> products) = _InventoryLoaded;
  const factory ProductUsageState.success(String message) = _Success;
  const factory ProductUsageState.error(String message) = _Error;
}
