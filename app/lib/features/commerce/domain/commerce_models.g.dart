// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commerce_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      brandId: json['brandId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      sku: json['sku'] as String,
      wholesalePrice: (json['wholesalePrice'] as num).toDouble(),
      retailPrice: (json['retailPrice'] as num).toDouble(),
      taxPercentage: (json['taxPercentage'] as num?)?.toDouble() ?? 18.0,
      stockQuantity: (json['stockQuantity'] as num?)?.toInt() ?? 0,
      isSustainable: json['isSustainable'] as bool? ?? false,
      imageUrls:
          (json['imageUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      status: json['status'] as String? ?? 'active',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brandId': instance.brandId,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'sku': instance.sku,
      'wholesalePrice': instance.wholesalePrice,
      'retailPrice': instance.retailPrice,
      'taxPercentage': instance.taxPercentage,
      'stockQuantity': instance.stockQuantity,
      'isSustainable': instance.isSustainable,
      'imageUrls': instance.imageUrls,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$ArtistStoreItemImpl _$$ArtistStoreItemImplFromJson(
  Map<String, dynamic> json,
) => _$ArtistStoreItemImpl(
  id: json['id'] as String,
  artistId: json['artistId'] as String,
  productId: json['productId'] as String,
  product: json['product'] == null
      ? null
      : Product.fromJson(json['product'] as Map<String, dynamic>),
  commissionPercentage:
      (json['commissionPercentage'] as num?)?.toDouble() ?? 10.0,
  isFeatured: json['isFeatured'] as bool? ?? false,
);

Map<String, dynamic> _$$ArtistStoreItemImplToJson(
  _$ArtistStoreItemImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'artistId': instance.artistId,
  'productId': instance.productId,
  'product': instance.product,
  'commissionPercentage': instance.commissionPercentage,
  'isFeatured': instance.isFeatured,
};

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
  id: json['id'] as String,
  buyerId: json['buyerId'] as String,
  buyerType: json['buyerType'] as String,
  orderType: json['orderType'] as String,
  referringArtistId: json['referringArtistId'] as String?,
  totalAmount: (json['totalAmount'] as num).toDouble(),
  taxAmount: (json['taxAmount'] as num).toDouble(),
  shippingAddress: json['shippingAddress'] as String,
  gstin: json['gstin'] as String?,
  paymentStatus: json['paymentStatus'] as String? ?? 'pending',
  orderStatus: json['orderStatus'] as String? ?? 'placed',
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'buyerId': instance.buyerId,
      'buyerType': instance.buyerType,
      'orderType': instance.orderType,
      'referringArtistId': instance.referringArtistId,
      'totalAmount': instance.totalAmount,
      'taxAmount': instance.taxAmount,
      'shippingAddress': instance.shippingAddress,
      'gstin': instance.gstin,
      'paymentStatus': instance.paymentStatus,
      'orderStatus': instance.orderStatus,
      'items': instance.items,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as String,
      productId: json['productId'] as String,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'product': instance.product,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
    };

_$CampaignImpl _$$CampaignImplFromJson(Map<String, dynamic> json) =>
    _$CampaignImpl(
      id: json['id'] as String,
      brandId: json['brandId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      requirements: json['requirements'] as String?,
      rewardBadgeName: json['rewardBadgeName'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CampaignImplToJson(_$CampaignImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brandId': instance.brandId,
      'title': instance.title,
      'description': instance.description,
      'requirements': instance.requirements,
      'rewardBadgeName': instance.rewardBadgeName,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$BadgeImpl _$$BadgeImplFromJson(Map<String, dynamic> json) => _$BadgeImpl(
  id: json['id'] as String,
  artistId: json['artistId'] as String,
  badgeName: json['badgeName'] as String,
  badgeType: json['badgeType'] as String,
  issuedBy: json['issuedBy'] as String?,
  issuedAt: json['issuedAt'] == null
      ? null
      : DateTime.parse(json['issuedAt'] as String),
);

Map<String, dynamic> _$$BadgeImplToJson(_$BadgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artistId': instance.artistId,
      'badgeName': instance.badgeName,
      'badgeType': instance.badgeType,
      'issuedBy': instance.issuedBy,
      'issuedAt': instance.issuedAt?.toIso8601String(),
    };
