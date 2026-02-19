import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';

part 'brand_product_event.freezed.dart';

@freezed
class BrandProductEvent with _$BrandProductEvent {
  const factory BrandProductEvent.submitProduct({
    required String name,
    required String description,
    required String category,
    required String sku,
    required double? wholesalePrice,
    required double? retailPrice,
    required int? stockQuantity,
    required bool isSustainable,
    required List<File> images,
  }) = _SubmitProduct;
}
