import 'package:freezed_annotation/freezed_annotation.dart';

part 'commerce_models.freezed.dart';
part 'commerce_models.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String brandId,
    required String name,
    required String description,
    required String category,
    required String sku,
    required double wholesalePrice,
    required double retailPrice,
    @Default(18.0) double taxPercentage,
    @Default(0) int stockQuantity,
    @Default(false) bool isSustainable,
    @Default([]) List<String> imageUrls,
    @Default('active') String status,
    DateTime? createdAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ArtistStoreItem with _$ArtistStoreItem {
  const factory ArtistStoreItem({
    required String id,
    required String artistId,
    required String productId,
    Product? product,
    @Default(10.0) double commissionPercentage,
    @Default(false) bool isFeatured,
  }) = _ArtistStoreItem;

  factory ArtistStoreItem.fromJson(Map<String, dynamic> json) => _$ArtistStoreItemFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required String buyerId,
    required String buyerType,
    required String orderType,
    String? referringArtistId,
    required double totalAmount,
    required double taxAmount,
    required String shippingAddress,
    String? gstin,
    @Default('pending') String paymentStatus,
    @Default('placed') String orderStatus,
    @Default(false) bool commissionSettled,
    @Default([]) List<OrderItem> items,
    DateTime? createdAt,
    // Fulfillment tracking fields
    String? trackingNumber,
    String? trackingUrl,
    String? shippingCarrier,
    DateTime? shippedAt,
    DateTime? deliveredAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    required String productId,
    Product? product,
    required int quantity,
    required double unitPrice,
    required double totalPrice,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}

@freezed
class Campaign with _$Campaign {
  const factory Campaign({
    required String id,
    required String brandId,
    required String title,
    required String description,
    String? requirements,
    required String compensationType,
    @Default(0.0) double compensationAmount,
    DateTime? startDate,
    DateTime? endDate,
    @Default('ACTIVE') String status,
    DateTime? createdAt,
  }) = _Campaign;

  factory Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);
}

@freezed
class Badge with _$Badge {
  const factory Badge({
    required String id,
    required String artistId,
    required String badgeName,
    required String badgeType, // skill, brand, sustainability
    String? issuedBy,
    DateTime? issuedAt,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}
@freezed
class Commission with _$Commission {
  const factory Commission({
    required String id,
    required String artistId,
    required String orderId,
    required double amount,
    required String status,
    DateTime? createdAt,
  }) = _Commission;

  factory Commission.fromJson(Map<String, dynamic> json) => _$CommissionFromJson(json);
}
