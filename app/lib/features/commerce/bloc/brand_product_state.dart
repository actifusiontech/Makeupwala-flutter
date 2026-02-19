import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_product_state.freezed.dart';

@freezed
class BrandProductState with _$BrandProductState {
  const factory BrandProductState.initial() = _Initial;
  const factory BrandProductState.submitting() = _Submitting;
  const factory BrandProductState.success() = _Success;
  const factory BrandProductState.error(String message) = _Error;
}
