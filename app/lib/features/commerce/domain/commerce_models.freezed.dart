// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commerce_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get brandId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  double get wholesalePrice => throw _privateConstructorUsedError;
  double get retailPrice => throw _privateConstructorUsedError;
  double get taxPercentage => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  bool get isSustainable => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String brandId,
      String name,
      String description,
      String category,
      String sku,
      double wholesalePrice,
      double retailPrice,
      double taxPercentage,
      int stockQuantity,
      bool isSustainable,
      List<String> imageUrls,
      String status,
      DateTime? createdAt});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandId = null,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? sku = null,
    Object? wholesalePrice = null,
    Object? retailPrice = null,
    Object? taxPercentage = null,
    Object? stockQuantity = null,
    Object? isSustainable = null,
    Object? imageUrls = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      wholesalePrice: null == wholesalePrice
          ? _value.wholesalePrice
          : wholesalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      retailPrice: null == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as double,
      taxPercentage: null == taxPercentage
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSustainable: null == isSustainable
          ? _value.isSustainable
          : isSustainable // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String brandId,
      String name,
      String description,
      String category,
      String sku,
      double wholesalePrice,
      double retailPrice,
      double taxPercentage,
      int stockQuantity,
      bool isSustainable,
      List<String> imageUrls,
      String status,
      DateTime? createdAt});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandId = null,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? sku = null,
    Object? wholesalePrice = null,
    Object? retailPrice = null,
    Object? taxPercentage = null,
    Object? stockQuantity = null,
    Object? isSustainable = null,
    Object? imageUrls = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      wholesalePrice: null == wholesalePrice
          ? _value.wholesalePrice
          : wholesalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      retailPrice: null == retailPrice
          ? _value.retailPrice
          : retailPrice // ignore: cast_nullable_to_non_nullable
              as double,
      taxPercentage: null == taxPercentage
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isSustainable: null == isSustainable
          ? _value.isSustainable
          : isSustainable // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.brandId,
      required this.name,
      required this.description,
      required this.category,
      required this.sku,
      required this.wholesalePrice,
      required this.retailPrice,
      this.taxPercentage = 18.0,
      this.stockQuantity = 0,
      this.isSustainable = false,
      final List<String> imageUrls = const [],
      this.status = 'active',
      this.createdAt})
      : _imageUrls = imageUrls;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String brandId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String category;
  @override
  final String sku;
  @override
  final double wholesalePrice;
  @override
  final double retailPrice;
  @override
  @JsonKey()
  final double taxPercentage;
  @override
  @JsonKey()
  final int stockQuantity;
  @override
  @JsonKey()
  final bool isSustainable;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Product(id: $id, brandId: $brandId, name: $name, description: $description, category: $category, sku: $sku, wholesalePrice: $wholesalePrice, retailPrice: $retailPrice, taxPercentage: $taxPercentage, stockQuantity: $stockQuantity, isSustainable: $isSustainable, imageUrls: $imageUrls, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.wholesalePrice, wholesalePrice) ||
                other.wholesalePrice == wholesalePrice) &&
            (identical(other.retailPrice, retailPrice) ||
                other.retailPrice == retailPrice) &&
            (identical(other.taxPercentage, taxPercentage) ||
                other.taxPercentage == taxPercentage) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.isSustainable, isSustainable) ||
                other.isSustainable == isSustainable) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brandId,
      name,
      description,
      category,
      sku,
      wholesalePrice,
      retailPrice,
      taxPercentage,
      stockQuantity,
      isSustainable,
      const DeepCollectionEquality().hash(_imageUrls),
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String brandId,
      required final String name,
      required final String description,
      required final String category,
      required final String sku,
      required final double wholesalePrice,
      required final double retailPrice,
      final double taxPercentage,
      final int stockQuantity,
      final bool isSustainable,
      final List<String> imageUrls,
      final String status,
      final DateTime? createdAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get brandId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get category;
  @override
  String get sku;
  @override
  double get wholesalePrice;
  @override
  double get retailPrice;
  @override
  double get taxPercentage;
  @override
  int get stockQuantity;
  @override
  bool get isSustainable;
  @override
  List<String> get imageUrls;
  @override
  String get status;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistStoreItem _$ArtistStoreItemFromJson(Map<String, dynamic> json) {
  return _ArtistStoreItem.fromJson(json);
}

/// @nodoc
mixin _$ArtistStoreItem {
  String get id => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  double get commissionPercentage => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistStoreItemCopyWith<ArtistStoreItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStoreItemCopyWith<$Res> {
  factory $ArtistStoreItemCopyWith(
          ArtistStoreItem value, $Res Function(ArtistStoreItem) then) =
      _$ArtistStoreItemCopyWithImpl<$Res, ArtistStoreItem>;
  @useResult
  $Res call(
      {String id,
      String artistId,
      String productId,
      Product? product,
      double commissionPercentage,
      bool isFeatured});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ArtistStoreItemCopyWithImpl<$Res, $Val extends ArtistStoreItem>
    implements $ArtistStoreItemCopyWith<$Res> {
  _$ArtistStoreItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? productId = null,
    Object? product = freezed,
    Object? commissionPercentage = null,
    Object? isFeatured = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      commissionPercentage: null == commissionPercentage
          ? _value.commissionPercentage
          : commissionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistStoreItemImplCopyWith<$Res>
    implements $ArtistStoreItemCopyWith<$Res> {
  factory _$$ArtistStoreItemImplCopyWith(_$ArtistStoreItemImpl value,
          $Res Function(_$ArtistStoreItemImpl) then) =
      __$$ArtistStoreItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String artistId,
      String productId,
      Product? product,
      double commissionPercentage,
      bool isFeatured});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ArtistStoreItemImplCopyWithImpl<$Res>
    extends _$ArtistStoreItemCopyWithImpl<$Res, _$ArtistStoreItemImpl>
    implements _$$ArtistStoreItemImplCopyWith<$Res> {
  __$$ArtistStoreItemImplCopyWithImpl(
      _$ArtistStoreItemImpl _value, $Res Function(_$ArtistStoreItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? productId = null,
    Object? product = freezed,
    Object? commissionPercentage = null,
    Object? isFeatured = null,
  }) {
    return _then(_$ArtistStoreItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      commissionPercentage: null == commissionPercentage
          ? _value.commissionPercentage
          : commissionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistStoreItemImpl implements _ArtistStoreItem {
  const _$ArtistStoreItemImpl(
      {required this.id,
      required this.artistId,
      required this.productId,
      this.product,
      this.commissionPercentage = 10.0,
      this.isFeatured = false});

  factory _$ArtistStoreItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistStoreItemImplFromJson(json);

  @override
  final String id;
  @override
  final String artistId;
  @override
  final String productId;
  @override
  final Product? product;
  @override
  @JsonKey()
  final double commissionPercentage;
  @override
  @JsonKey()
  final bool isFeatured;

  @override
  String toString() {
    return 'ArtistStoreItem(id: $id, artistId: $artistId, productId: $productId, product: $product, commissionPercentage: $commissionPercentage, isFeatured: $isFeatured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistStoreItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.commissionPercentage, commissionPercentage) ||
                other.commissionPercentage == commissionPercentage) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, artistId, productId, product,
      commissionPercentage, isFeatured);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistStoreItemImplCopyWith<_$ArtistStoreItemImpl> get copyWith =>
      __$$ArtistStoreItemImplCopyWithImpl<_$ArtistStoreItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistStoreItemImplToJson(
      this,
    );
  }
}

abstract class _ArtistStoreItem implements ArtistStoreItem {
  const factory _ArtistStoreItem(
      {required final String id,
      required final String artistId,
      required final String productId,
      final Product? product,
      final double commissionPercentage,
      final bool isFeatured}) = _$ArtistStoreItemImpl;

  factory _ArtistStoreItem.fromJson(Map<String, dynamic> json) =
      _$ArtistStoreItemImpl.fromJson;

  @override
  String get id;
  @override
  String get artistId;
  @override
  String get productId;
  @override
  Product? get product;
  @override
  double get commissionPercentage;
  @override
  bool get isFeatured;
  @override
  @JsonKey(ignore: true)
  _$$ArtistStoreItemImplCopyWith<_$ArtistStoreItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get buyerId => throw _privateConstructorUsedError;
  String get buyerType => throw _privateConstructorUsedError;
  String get orderType => throw _privateConstructorUsedError;
  String? get referringArtistId => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  double get taxAmount => throw _privateConstructorUsedError;
  String get shippingAddress => throw _privateConstructorUsedError;
  String? get gstin => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  bool get commissionSettled => throw _privateConstructorUsedError;
  List<OrderItem> get items => throw _privateConstructorUsedError;
  DateTime? get createdAt =>
      throw _privateConstructorUsedError; // Fulfillment tracking fields
  String? get trackingNumber => throw _privateConstructorUsedError;
  String? get trackingUrl => throw _privateConstructorUsedError;
  String? get shippingCarrier => throw _privateConstructorUsedError;
  DateTime? get shippedAt => throw _privateConstructorUsedError;
  DateTime? get deliveredAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      String buyerId,
      String buyerType,
      String orderType,
      String? referringArtistId,
      double totalAmount,
      double taxAmount,
      String shippingAddress,
      String? gstin,
      String paymentStatus,
      String orderStatus,
      bool commissionSettled,
      List<OrderItem> items,
      DateTime? createdAt,
      String? trackingNumber,
      String? trackingUrl,
      String? shippingCarrier,
      DateTime? shippedAt,
      DateTime? deliveredAt});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? buyerId = null,
    Object? buyerType = null,
    Object? orderType = null,
    Object? referringArtistId = freezed,
    Object? totalAmount = null,
    Object? taxAmount = null,
    Object? shippingAddress = null,
    Object? gstin = freezed,
    Object? paymentStatus = null,
    Object? orderStatus = null,
    Object? commissionSettled = null,
    Object? items = null,
    Object? createdAt = freezed,
    Object? trackingNumber = freezed,
    Object? trackingUrl = freezed,
    Object? shippingCarrier = freezed,
    Object? shippedAt = freezed,
    Object? deliveredAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      buyerType: null == buyerType
          ? _value.buyerType
          : buyerType // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      referringArtistId: freezed == referringArtistId
          ? _value.referringArtistId
          : referringArtistId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      commissionSettled: null == commissionSettled
          ? _value.commissionSettled
          : commissionSettled // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingUrl: freezed == trackingUrl
          ? _value.trackingUrl
          : trackingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCarrier: freezed == shippingCarrier
          ? _value.shippingCarrier
          : shippingCarrier // ignore: cast_nullable_to_non_nullable
              as String?,
      shippedAt: freezed == shippedAt
          ? _value.shippedAt
          : shippedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String buyerId,
      String buyerType,
      String orderType,
      String? referringArtistId,
      double totalAmount,
      double taxAmount,
      String shippingAddress,
      String? gstin,
      String paymentStatus,
      String orderStatus,
      bool commissionSettled,
      List<OrderItem> items,
      DateTime? createdAt,
      String? trackingNumber,
      String? trackingUrl,
      String? shippingCarrier,
      DateTime? shippedAt,
      DateTime? deliveredAt});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? buyerId = null,
    Object? buyerType = null,
    Object? orderType = null,
    Object? referringArtistId = freezed,
    Object? totalAmount = null,
    Object? taxAmount = null,
    Object? shippingAddress = null,
    Object? gstin = freezed,
    Object? paymentStatus = null,
    Object? orderStatus = null,
    Object? commissionSettled = null,
    Object? items = null,
    Object? createdAt = freezed,
    Object? trackingNumber = freezed,
    Object? trackingUrl = freezed,
    Object? shippingCarrier = freezed,
    Object? shippedAt = freezed,
    Object? deliveredAt = freezed,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      buyerType: null == buyerType
          ? _value.buyerType
          : buyerType // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      referringArtistId: freezed == referringArtistId
          ? _value.referringArtistId
          : referringArtistId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      commissionSettled: null == commissionSettled
          ? _value.commissionSettled
          : commissionSettled // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingUrl: freezed == trackingUrl
          ? _value.trackingUrl
          : trackingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingCarrier: freezed == shippingCarrier
          ? _value.shippingCarrier
          : shippingCarrier // ignore: cast_nullable_to_non_nullable
              as String?,
      shippedAt: freezed == shippedAt
          ? _value.shippedAt
          : shippedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.id,
      required this.buyerId,
      required this.buyerType,
      required this.orderType,
      this.referringArtistId,
      required this.totalAmount,
      required this.taxAmount,
      required this.shippingAddress,
      this.gstin,
      this.paymentStatus = 'pending',
      this.orderStatus = 'placed',
      this.commissionSettled = false,
      final List<OrderItem> items = const [],
      this.createdAt,
      this.trackingNumber,
      this.trackingUrl,
      this.shippingCarrier,
      this.shippedAt,
      this.deliveredAt})
      : _items = items;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final String buyerId;
  @override
  final String buyerType;
  @override
  final String orderType;
  @override
  final String? referringArtistId;
  @override
  final double totalAmount;
  @override
  final double taxAmount;
  @override
  final String shippingAddress;
  @override
  final String? gstin;
  @override
  @JsonKey()
  final String paymentStatus;
  @override
  @JsonKey()
  final String orderStatus;
  @override
  @JsonKey()
  final bool commissionSettled;
  final List<OrderItem> _items;
  @override
  @JsonKey()
  List<OrderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime? createdAt;
// Fulfillment tracking fields
  @override
  final String? trackingNumber;
  @override
  final String? trackingUrl;
  @override
  final String? shippingCarrier;
  @override
  final DateTime? shippedAt;
  @override
  final DateTime? deliveredAt;

  @override
  String toString() {
    return 'Order(id: $id, buyerId: $buyerId, buyerType: $buyerType, orderType: $orderType, referringArtistId: $referringArtistId, totalAmount: $totalAmount, taxAmount: $taxAmount, shippingAddress: $shippingAddress, gstin: $gstin, paymentStatus: $paymentStatus, orderStatus: $orderStatus, commissionSettled: $commissionSettled, items: $items, createdAt: $createdAt, trackingNumber: $trackingNumber, trackingUrl: $trackingUrl, shippingCarrier: $shippingCarrier, shippedAt: $shippedAt, deliveredAt: $deliveredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.buyerId, buyerId) || other.buyerId == buyerId) &&
            (identical(other.buyerType, buyerType) ||
                other.buyerType == buyerType) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.referringArtistId, referringArtistId) ||
                other.referringArtistId == referringArtistId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.commissionSettled, commissionSettled) ||
                other.commissionSettled == commissionSettled) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber) &&
            (identical(other.trackingUrl, trackingUrl) ||
                other.trackingUrl == trackingUrl) &&
            (identical(other.shippingCarrier, shippingCarrier) ||
                other.shippingCarrier == shippingCarrier) &&
            (identical(other.shippedAt, shippedAt) ||
                other.shippedAt == shippedAt) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        buyerId,
        buyerType,
        orderType,
        referringArtistId,
        totalAmount,
        taxAmount,
        shippingAddress,
        gstin,
        paymentStatus,
        orderStatus,
        commissionSettled,
        const DeepCollectionEquality().hash(_items),
        createdAt,
        trackingNumber,
        trackingUrl,
        shippingCarrier,
        shippedAt,
        deliveredAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final String id,
      required final String buyerId,
      required final String buyerType,
      required final String orderType,
      final String? referringArtistId,
      required final double totalAmount,
      required final double taxAmount,
      required final String shippingAddress,
      final String? gstin,
      final String paymentStatus,
      final String orderStatus,
      final bool commissionSettled,
      final List<OrderItem> items,
      final DateTime? createdAt,
      final String? trackingNumber,
      final String? trackingUrl,
      final String? shippingCarrier,
      final DateTime? shippedAt,
      final DateTime? deliveredAt}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get buyerId;
  @override
  String get buyerType;
  @override
  String get orderType;
  @override
  String? get referringArtistId;
  @override
  double get totalAmount;
  @override
  double get taxAmount;
  @override
  String get shippingAddress;
  @override
  String? get gstin;
  @override
  String get paymentStatus;
  @override
  String get orderStatus;
  @override
  bool get commissionSettled;
  @override
  List<OrderItem> get items;
  @override
  DateTime? get createdAt;
  @override // Fulfillment tracking fields
  String? get trackingNumber;
  @override
  String? get trackingUrl;
  @override
  String? get shippingCarrier;
  @override
  DateTime? get shippedAt;
  @override
  DateTime? get deliveredAt;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {String id,
      String productId,
      Product? product,
      int quantity,
      double unitPrice,
      double totalPrice});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? product = freezed,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String productId,
      Product? product,
      int quantity,
      double unitPrice,
      double totalPrice});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? product = freezed,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.id,
      required this.productId,
      this.product,
      required this.quantity,
      required this.unitPrice,
      required this.totalPrice});

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final String id;
  @override
  final String productId;
  @override
  final Product? product;
  @override
  final int quantity;
  @override
  final double unitPrice;
  @override
  final double totalPrice;

  @override
  String toString() {
    return 'OrderItem(id: $id, productId: $productId, product: $product, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, productId, product, quantity, unitPrice, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final String id,
      required final String productId,
      final Product? product,
      required final int quantity,
      required final double unitPrice,
      required final double totalPrice}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  String get id;
  @override
  String get productId;
  @override
  Product? get product;
  @override
  int get quantity;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Campaign _$CampaignFromJson(Map<String, dynamic> json) {
  return _Campaign.fromJson(json);
}

/// @nodoc
mixin _$Campaign {
  String get id => throw _privateConstructorUsedError;
  String get brandId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get requirements => throw _privateConstructorUsedError;
  String get compensationType => throw _privateConstructorUsedError;
  double get compensationAmount => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignCopyWith<Campaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCopyWith<$Res> {
  factory $CampaignCopyWith(Campaign value, $Res Function(Campaign) then) =
      _$CampaignCopyWithImpl<$Res, Campaign>;
  @useResult
  $Res call(
      {String id,
      String brandId,
      String title,
      String description,
      String? requirements,
      String compensationType,
      double compensationAmount,
      DateTime? startDate,
      DateTime? endDate,
      String status,
      DateTime? createdAt});
}

/// @nodoc
class _$CampaignCopyWithImpl<$Res, $Val extends Campaign>
    implements $CampaignCopyWith<$Res> {
  _$CampaignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandId = null,
    Object? title = null,
    Object? description = null,
    Object? requirements = freezed,
    Object? compensationType = null,
    Object? compensationAmount = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String?,
      compensationType: null == compensationType
          ? _value.compensationType
          : compensationType // ignore: cast_nullable_to_non_nullable
              as String,
      compensationAmount: null == compensationAmount
          ? _value.compensationAmount
          : compensationAmount // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignImplCopyWith<$Res>
    implements $CampaignCopyWith<$Res> {
  factory _$$CampaignImplCopyWith(
          _$CampaignImpl value, $Res Function(_$CampaignImpl) then) =
      __$$CampaignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String brandId,
      String title,
      String description,
      String? requirements,
      String compensationType,
      double compensationAmount,
      DateTime? startDate,
      DateTime? endDate,
      String status,
      DateTime? createdAt});
}

/// @nodoc
class __$$CampaignImplCopyWithImpl<$Res>
    extends _$CampaignCopyWithImpl<$Res, _$CampaignImpl>
    implements _$$CampaignImplCopyWith<$Res> {
  __$$CampaignImplCopyWithImpl(
      _$CampaignImpl _value, $Res Function(_$CampaignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brandId = null,
    Object? title = null,
    Object? description = null,
    Object? requirements = freezed,
    Object? compensationType = null,
    Object? compensationAmount = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CampaignImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: freezed == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String?,
      compensationType: null == compensationType
          ? _value.compensationType
          : compensationType // ignore: cast_nullable_to_non_nullable
              as String,
      compensationAmount: null == compensationAmount
          ? _value.compensationAmount
          : compensationAmount // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignImpl implements _Campaign {
  const _$CampaignImpl(
      {required this.id,
      required this.brandId,
      required this.title,
      required this.description,
      this.requirements,
      required this.compensationType,
      this.compensationAmount = 0.0,
      this.startDate,
      this.endDate,
      this.status = 'ACTIVE',
      this.createdAt});

  factory _$CampaignImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignImplFromJson(json);

  @override
  final String id;
  @override
  final String brandId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? requirements;
  @override
  final String compensationType;
  @override
  @JsonKey()
  final double compensationAmount;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Campaign(id: $id, brandId: $brandId, title: $title, description: $description, requirements: $requirements, compensationType: $compensationType, compensationAmount: $compensationAmount, startDate: $startDate, endDate: $endDate, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements) &&
            (identical(other.compensationType, compensationType) ||
                other.compensationType == compensationType) &&
            (identical(other.compensationAmount, compensationAmount) ||
                other.compensationAmount == compensationAmount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brandId,
      title,
      description,
      requirements,
      compensationType,
      compensationAmount,
      startDate,
      endDate,
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignImplCopyWith<_$CampaignImpl> get copyWith =>
      __$$CampaignImplCopyWithImpl<_$CampaignImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignImplToJson(
      this,
    );
  }
}

abstract class _Campaign implements Campaign {
  const factory _Campaign(
      {required final String id,
      required final String brandId,
      required final String title,
      required final String description,
      final String? requirements,
      required final String compensationType,
      final double compensationAmount,
      final DateTime? startDate,
      final DateTime? endDate,
      final String status,
      final DateTime? createdAt}) = _$CampaignImpl;

  factory _Campaign.fromJson(Map<String, dynamic> json) =
      _$CampaignImpl.fromJson;

  @override
  String get id;
  @override
  String get brandId;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get requirements;
  @override
  String get compensationType;
  @override
  double get compensationAmount;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String get status;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CampaignImplCopyWith<_$CampaignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  String get id => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get badgeName => throw _privateConstructorUsedError;
  String get badgeType =>
      throw _privateConstructorUsedError; // skill, brand, sustainability
  String? get issuedBy => throw _privateConstructorUsedError;
  DateTime? get issuedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res, Badge>;
  @useResult
  $Res call(
      {String id,
      String artistId,
      String badgeName,
      String badgeType,
      String? issuedBy,
      DateTime? issuedAt});
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res, $Val extends Badge>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? badgeName = null,
    Object? badgeType = null,
    Object? issuedBy = freezed,
    Object? issuedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      badgeName: null == badgeName
          ? _value.badgeName
          : badgeName // ignore: cast_nullable_to_non_nullable
              as String,
      badgeType: null == badgeType
          ? _value.badgeType
          : badgeType // ignore: cast_nullable_to_non_nullable
              as String,
      issuedBy: freezed == issuedBy
          ? _value.issuedBy
          : issuedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedAt: freezed == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadgeImplCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$BadgeImplCopyWith(
          _$BadgeImpl value, $Res Function(_$BadgeImpl) then) =
      __$$BadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String artistId,
      String badgeName,
      String badgeType,
      String? issuedBy,
      DateTime? issuedAt});
}

/// @nodoc
class __$$BadgeImplCopyWithImpl<$Res>
    extends _$BadgeCopyWithImpl<$Res, _$BadgeImpl>
    implements _$$BadgeImplCopyWith<$Res> {
  __$$BadgeImplCopyWithImpl(
      _$BadgeImpl _value, $Res Function(_$BadgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? badgeName = null,
    Object? badgeType = null,
    Object? issuedBy = freezed,
    Object? issuedAt = freezed,
  }) {
    return _then(_$BadgeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      badgeName: null == badgeName
          ? _value.badgeName
          : badgeName // ignore: cast_nullable_to_non_nullable
              as String,
      badgeType: null == badgeType
          ? _value.badgeType
          : badgeType // ignore: cast_nullable_to_non_nullable
              as String,
      issuedBy: freezed == issuedBy
          ? _value.issuedBy
          : issuedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedAt: freezed == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeImpl implements _Badge {
  const _$BadgeImpl(
      {required this.id,
      required this.artistId,
      required this.badgeName,
      required this.badgeType,
      this.issuedBy,
      this.issuedAt});

  factory _$BadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeImplFromJson(json);

  @override
  final String id;
  @override
  final String artistId;
  @override
  final String badgeName;
  @override
  final String badgeType;
// skill, brand, sustainability
  @override
  final String? issuedBy;
  @override
  final DateTime? issuedAt;

  @override
  String toString() {
    return 'Badge(id: $id, artistId: $artistId, badgeName: $badgeName, badgeType: $badgeType, issuedBy: $issuedBy, issuedAt: $issuedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.badgeName, badgeName) ||
                other.badgeName == badgeName) &&
            (identical(other.badgeType, badgeType) ||
                other.badgeType == badgeType) &&
            (identical(other.issuedBy, issuedBy) ||
                other.issuedBy == issuedBy) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, artistId, badgeName, badgeType, issuedBy, issuedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeImplCopyWith<_$BadgeImpl> get copyWith =>
      __$$BadgeImplCopyWithImpl<_$BadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeImplToJson(
      this,
    );
  }
}

abstract class _Badge implements Badge {
  const factory _Badge(
      {required final String id,
      required final String artistId,
      required final String badgeName,
      required final String badgeType,
      final String? issuedBy,
      final DateTime? issuedAt}) = _$BadgeImpl;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$BadgeImpl.fromJson;

  @override
  String get id;
  @override
  String get artistId;
  @override
  String get badgeName;
  @override
  String get badgeType;
  @override // skill, brand, sustainability
  String? get issuedBy;
  @override
  DateTime? get issuedAt;
  @override
  @JsonKey(ignore: true)
  _$$BadgeImplCopyWith<_$BadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Commission _$CommissionFromJson(Map<String, dynamic> json) {
  return _Commission.fromJson(json);
}

/// @nodoc
mixin _$Commission {
  String get id => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommissionCopyWith<Commission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommissionCopyWith<$Res> {
  factory $CommissionCopyWith(
          Commission value, $Res Function(Commission) then) =
      _$CommissionCopyWithImpl<$Res, Commission>;
  @useResult
  $Res call(
      {String id,
      String artistId,
      String orderId,
      double amount,
      String status,
      DateTime? createdAt});
}

/// @nodoc
class _$CommissionCopyWithImpl<$Res, $Val extends Commission>
    implements $CommissionCopyWith<$Res> {
  _$CommissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? orderId = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommissionImplCopyWith<$Res>
    implements $CommissionCopyWith<$Res> {
  factory _$$CommissionImplCopyWith(
          _$CommissionImpl value, $Res Function(_$CommissionImpl) then) =
      __$$CommissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String artistId,
      String orderId,
      double amount,
      String status,
      DateTime? createdAt});
}

/// @nodoc
class __$$CommissionImplCopyWithImpl<$Res>
    extends _$CommissionCopyWithImpl<$Res, _$CommissionImpl>
    implements _$$CommissionImplCopyWith<$Res> {
  __$$CommissionImplCopyWithImpl(
      _$CommissionImpl _value, $Res Function(_$CommissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? orderId = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CommissionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommissionImpl implements _Commission {
  const _$CommissionImpl(
      {required this.id,
      required this.artistId,
      required this.orderId,
      required this.amount,
      required this.status,
      this.createdAt});

  factory _$CommissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommissionImplFromJson(json);

  @override
  final String id;
  @override
  final String artistId;
  @override
  final String orderId;
  @override
  final double amount;
  @override
  final String status;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Commission(id: $id, artistId: $artistId, orderId: $orderId, amount: $amount, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, artistId, orderId, amount, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommissionImplCopyWith<_$CommissionImpl> get copyWith =>
      __$$CommissionImplCopyWithImpl<_$CommissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommissionImplToJson(
      this,
    );
  }
}

abstract class _Commission implements Commission {
  const factory _Commission(
      {required final String id,
      required final String artistId,
      required final String orderId,
      required final double amount,
      required final String status,
      final DateTime? createdAt}) = _$CommissionImpl;

  factory _Commission.fromJson(Map<String, dynamic> json) =
      _$CommissionImpl.fromJson;

  @override
  String get id;
  @override
  String get artistId;
  @override
  String get orderId;
  @override
  double get amount;
  @override
  String get status;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CommissionImplCopyWith<_$CommissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
