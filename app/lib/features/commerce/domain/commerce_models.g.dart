// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commerce_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      brandId: json['brand_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      sku: json['sku'] as String,
      wholesalePrice: (json['wholesale_price'] as num).toDouble(),
      retailPrice: (json['retail_price'] as num).toDouble(),
      taxPercentage: (json['tax_percentage'] as num?)?.toDouble() ?? 18.0,
      stockQuantity: (json['stock_quantity'] as num?)?.toInt() ?? 0,
      isSustainable: json['is_sustainable'] as bool? ?? false,
      imageUrls: (json['image_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      status: json['status'] as String? ?? 'active',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_id': instance.brandId,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'sku': instance.sku,
      'wholesale_price': instance.wholesalePrice,
      'retail_price': instance.retailPrice,
      'tax_percentage': instance.taxPercentage,
      'stock_quantity': instance.stockQuantity,
      'is_sustainable': instance.isSustainable,
      'image_urls': instance.imageUrls,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$ArtistStoreItemImpl _$$ArtistStoreItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistStoreItemImpl(
      id: json['id'] as String,
      artistId: json['artist_id'] as String,
      productId: json['product_id'] as String,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      commissionPercentage:
          (json['commission_percentage'] as num?)?.toDouble() ?? 10.0,
      isFeatured: json['is_featured'] as bool? ?? false,
    );

Map<String, dynamic> _$$ArtistStoreItemImplToJson(
        _$ArtistStoreItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_id': instance.artistId,
      'product_id': instance.productId,
      'product': instance.product,
      'commission_percentage': instance.commissionPercentage,
      'is_featured': instance.isFeatured,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String,
      buyerId: json['buyer_id'] as String,
      buyerType: json['buyer_type'] as String,
      orderType: json['order_type'] as String,
      referringArtistId: json['referring_artist_id'] as String?,
      totalAmount: (json['total_amount'] as num).toDouble(),
      taxAmount: (json['tax_amount'] as num).toDouble(),
      shippingAddress: json['shipping_address'] as String,
      gstin: json['gstin'] as String?,
      paymentStatus: json['payment_status'] as String? ?? 'pending',
      orderStatus: json['order_status'] as String? ?? 'placed',
      commissionSettled: json['commission_settled'] as bool? ?? false,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      trackingNumber: json['tracking_number'] as String?,
      trackingUrl: json['tracking_url'] as String?,
      shippingCarrier: json['shipping_carrier'] as String?,
      shippedAt: json['shipped_at'] == null
          ? null
          : DateTime.parse(json['shipped_at'] as String),
      deliveredAt: json['delivered_at'] == null
          ? null
          : DateTime.parse(json['delivered_at'] as String),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'buyer_id': instance.buyerId,
      'buyer_type': instance.buyerType,
      'order_type': instance.orderType,
      'referring_artist_id': instance.referringArtistId,
      'total_amount': instance.totalAmount,
      'tax_amount': instance.taxAmount,
      'shipping_address': instance.shippingAddress,
      'gstin': instance.gstin,
      'payment_status': instance.paymentStatus,
      'order_status': instance.orderStatus,
      'commission_settled': instance.commissionSettled,
      'items': instance.items,
      'created_at': instance.createdAt?.toIso8601String(),
      'tracking_number': instance.trackingNumber,
      'tracking_url': instance.trackingUrl,
      'shipping_carrier': instance.shippingCarrier,
      'shipped_at': instance.shippedAt?.toIso8601String(),
      'delivered_at': instance.deliveredAt?.toIso8601String(),
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unit_price'] as num).toDouble(),
      totalPrice: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product': instance.product,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'total_price': instance.totalPrice,
    };

_$CampaignImpl _$$CampaignImplFromJson(Map<String, dynamic> json) =>
    _$CampaignImpl(
      id: json['id'] as String,
      brandId: json['brand_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      requirements: json['requirements'] as String?,
      compensationType: json['compensation_type'] as String,
      compensationAmount:
          (json['compensation_amount'] as num?)?.toDouble() ?? 0.0,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      status: json['status'] as String? ?? 'ACTIVE',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CampaignImplToJson(_$CampaignImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_id': instance.brandId,
      'title': instance.title,
      'description': instance.description,
      'requirements': instance.requirements,
      'compensation_type': instance.compensationType,
      'compensation_amount': instance.compensationAmount,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$BadgeImpl _$$BadgeImplFromJson(Map<String, dynamic> json) => _$BadgeImpl(
      id: json['id'] as String,
      artistId: json['artist_id'] as String,
      badgeName: json['badge_name'] as String,
      badgeType: json['badge_type'] as String,
      issuedBy: json['issued_by'] as String?,
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
    );

Map<String, dynamic> _$$BadgeImplToJson(_$BadgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_id': instance.artistId,
      'badge_name': instance.badgeName,
      'badge_type': instance.badgeType,
      'issued_by': instance.issuedBy,
      'issued_at': instance.issuedAt?.toIso8601String(),
    };

_$CommissionImpl _$$CommissionImplFromJson(Map<String, dynamic> json) =>
    _$CommissionImpl(
      id: json['id'] as String,
      artistId: json['artist_id'] as String,
      orderId: json['order_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CommissionImplToJson(_$CommissionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_id': instance.artistId,
      'order_id': instance.orderId,
      'amount': instance.amount,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
    };
