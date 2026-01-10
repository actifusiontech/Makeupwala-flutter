// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commerce_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 String get id; String get brandId; String get name; String get description; String get category; String get sku; double get wholesalePrice; double get retailPrice; double get taxPercentage; int get stockQuantity; bool get isSustainable; List<String> get imageUrls; String get status; DateTime? get createdAt;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.wholesalePrice, wholesalePrice) || other.wholesalePrice == wholesalePrice)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&(identical(other.isSustainable, isSustainable) || other.isSustainable == isSustainable)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,brandId,name,description,category,sku,wholesalePrice,retailPrice,taxPercentage,stockQuantity,isSustainable,const DeepCollectionEquality().hash(imageUrls),status,createdAt);

@override
String toString() {
  return 'Product(id: $id, brandId: $brandId, name: $name, description: $description, category: $category, sku: $sku, wholesalePrice: $wholesalePrice, retailPrice: $retailPrice, taxPercentage: $taxPercentage, stockQuantity: $stockQuantity, isSustainable: $isSustainable, imageUrls: $imageUrls, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, String brandId, String name, String description, String category, String sku, double wholesalePrice, double retailPrice, double taxPercentage, int stockQuantity, bool isSustainable, List<String> imageUrls, String status, DateTime? createdAt
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? brandId = null,Object? name = null,Object? description = null,Object? category = null,Object? sku = null,Object? wholesalePrice = null,Object? retailPrice = null,Object? taxPercentage = null,Object? stockQuantity = null,Object? isSustainable = null,Object? imageUrls = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,wholesalePrice: null == wholesalePrice ? _self.wholesalePrice : wholesalePrice // ignore: cast_nullable_to_non_nullable
as double,retailPrice: null == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as double,taxPercentage: null == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,isSustainable: null == isSustainable ? _self.isSustainable : isSustainable // ignore: cast_nullable_to_non_nullable
as bool,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String brandId,  String name,  String description,  String category,  String sku,  double wholesalePrice,  double retailPrice,  double taxPercentage,  int stockQuantity,  bool isSustainable,  List<String> imageUrls,  String status,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.brandId,_that.name,_that.description,_that.category,_that.sku,_that.wholesalePrice,_that.retailPrice,_that.taxPercentage,_that.stockQuantity,_that.isSustainable,_that.imageUrls,_that.status,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String brandId,  String name,  String description,  String category,  String sku,  double wholesalePrice,  double retailPrice,  double taxPercentage,  int stockQuantity,  bool isSustainable,  List<String> imageUrls,  String status,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.brandId,_that.name,_that.description,_that.category,_that.sku,_that.wholesalePrice,_that.retailPrice,_that.taxPercentage,_that.stockQuantity,_that.isSustainable,_that.imageUrls,_that.status,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String brandId,  String name,  String description,  String category,  String sku,  double wholesalePrice,  double retailPrice,  double taxPercentage,  int stockQuantity,  bool isSustainable,  List<String> imageUrls,  String status,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.brandId,_that.name,_that.description,_that.category,_that.sku,_that.wholesalePrice,_that.retailPrice,_that.taxPercentage,_that.stockQuantity,_that.isSustainable,_that.imageUrls,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, required this.brandId, required this.name, required this.description, required this.category, required this.sku, required this.wholesalePrice, required this.retailPrice, this.taxPercentage = 18.0, this.stockQuantity = 0, this.isSustainable = false, final  List<String> imageUrls = const [], this.status = 'active', this.createdAt}): _imageUrls = imageUrls;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  String id;
@override final  String brandId;
@override final  String name;
@override final  String description;
@override final  String category;
@override final  String sku;
@override final  double wholesalePrice;
@override final  double retailPrice;
@override@JsonKey() final  double taxPercentage;
@override@JsonKey() final  int stockQuantity;
@override@JsonKey() final  bool isSustainable;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override@JsonKey() final  String status;
@override final  DateTime? createdAt;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.wholesalePrice, wholesalePrice) || other.wholesalePrice == wholesalePrice)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice)&&(identical(other.taxPercentage, taxPercentage) || other.taxPercentage == taxPercentage)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&(identical(other.isSustainable, isSustainable) || other.isSustainable == isSustainable)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,brandId,name,description,category,sku,wholesalePrice,retailPrice,taxPercentage,stockQuantity,isSustainable,const DeepCollectionEquality().hash(_imageUrls),status,createdAt);

@override
String toString() {
  return 'Product(id: $id, brandId: $brandId, name: $name, description: $description, category: $category, sku: $sku, wholesalePrice: $wholesalePrice, retailPrice: $retailPrice, taxPercentage: $taxPercentage, stockQuantity: $stockQuantity, isSustainable: $isSustainable, imageUrls: $imageUrls, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String brandId, String name, String description, String category, String sku, double wholesalePrice, double retailPrice, double taxPercentage, int stockQuantity, bool isSustainable, List<String> imageUrls, String status, DateTime? createdAt
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? brandId = null,Object? name = null,Object? description = null,Object? category = null,Object? sku = null,Object? wholesalePrice = null,Object? retailPrice = null,Object? taxPercentage = null,Object? stockQuantity = null,Object? isSustainable = null,Object? imageUrls = null,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,wholesalePrice: null == wholesalePrice ? _self.wholesalePrice : wholesalePrice // ignore: cast_nullable_to_non_nullable
as double,retailPrice: null == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as double,taxPercentage: null == taxPercentage ? _self.taxPercentage : taxPercentage // ignore: cast_nullable_to_non_nullable
as double,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,isSustainable: null == isSustainable ? _self.isSustainable : isSustainable // ignore: cast_nullable_to_non_nullable
as bool,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ArtistStoreItem {

 String get id; String get artistId; String get productId; Product? get product; double get commissionPercentage; bool get isFeatured;
/// Create a copy of ArtistStoreItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistStoreItemCopyWith<ArtistStoreItem> get copyWith => _$ArtistStoreItemCopyWithImpl<ArtistStoreItem>(this as ArtistStoreItem, _$identity);

  /// Serializes this ArtistStoreItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistStoreItem&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.commissionPercentage, commissionPercentage) || other.commissionPercentage == commissionPercentage)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,artistId,productId,product,commissionPercentage,isFeatured);

@override
String toString() {
  return 'ArtistStoreItem(id: $id, artistId: $artistId, productId: $productId, product: $product, commissionPercentage: $commissionPercentage, isFeatured: $isFeatured)';
}


}

/// @nodoc
abstract mixin class $ArtistStoreItemCopyWith<$Res>  {
  factory $ArtistStoreItemCopyWith(ArtistStoreItem value, $Res Function(ArtistStoreItem) _then) = _$ArtistStoreItemCopyWithImpl;
@useResult
$Res call({
 String id, String artistId, String productId, Product? product, double commissionPercentage, bool isFeatured
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$ArtistStoreItemCopyWithImpl<$Res>
    implements $ArtistStoreItemCopyWith<$Res> {
  _$ArtistStoreItemCopyWithImpl(this._self, this._then);

  final ArtistStoreItem _self;
  final $Res Function(ArtistStoreItem) _then;

/// Create a copy of ArtistStoreItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? artistId = null,Object? productId = null,Object? product = freezed,Object? commissionPercentage = null,Object? isFeatured = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,commissionPercentage: null == commissionPercentage ? _self.commissionPercentage : commissionPercentage // ignore: cast_nullable_to_non_nullable
as double,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ArtistStoreItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArtistStoreItem].
extension ArtistStoreItemPatterns on ArtistStoreItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistStoreItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistStoreItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistStoreItem value)  $default,){
final _that = this;
switch (_that) {
case _ArtistStoreItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistStoreItem value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistStoreItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String artistId,  String productId,  Product? product,  double commissionPercentage,  bool isFeatured)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistStoreItem() when $default != null:
return $default(_that.id,_that.artistId,_that.productId,_that.product,_that.commissionPercentage,_that.isFeatured);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String artistId,  String productId,  Product? product,  double commissionPercentage,  bool isFeatured)  $default,) {final _that = this;
switch (_that) {
case _ArtistStoreItem():
return $default(_that.id,_that.artistId,_that.productId,_that.product,_that.commissionPercentage,_that.isFeatured);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String artistId,  String productId,  Product? product,  double commissionPercentage,  bool isFeatured)?  $default,) {final _that = this;
switch (_that) {
case _ArtistStoreItem() when $default != null:
return $default(_that.id,_that.artistId,_that.productId,_that.product,_that.commissionPercentage,_that.isFeatured);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArtistStoreItem implements ArtistStoreItem {
  const _ArtistStoreItem({required this.id, required this.artistId, required this.productId, this.product, this.commissionPercentage = 10.0, this.isFeatured = false});
  factory _ArtistStoreItem.fromJson(Map<String, dynamic> json) => _$ArtistStoreItemFromJson(json);

@override final  String id;
@override final  String artistId;
@override final  String productId;
@override final  Product? product;
@override@JsonKey() final  double commissionPercentage;
@override@JsonKey() final  bool isFeatured;

/// Create a copy of ArtistStoreItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistStoreItemCopyWith<_ArtistStoreItem> get copyWith => __$ArtistStoreItemCopyWithImpl<_ArtistStoreItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistStoreItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistStoreItem&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.commissionPercentage, commissionPercentage) || other.commissionPercentage == commissionPercentage)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,artistId,productId,product,commissionPercentage,isFeatured);

@override
String toString() {
  return 'ArtistStoreItem(id: $id, artistId: $artistId, productId: $productId, product: $product, commissionPercentage: $commissionPercentage, isFeatured: $isFeatured)';
}


}

/// @nodoc
abstract mixin class _$ArtistStoreItemCopyWith<$Res> implements $ArtistStoreItemCopyWith<$Res> {
  factory _$ArtistStoreItemCopyWith(_ArtistStoreItem value, $Res Function(_ArtistStoreItem) _then) = __$ArtistStoreItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String artistId, String productId, Product? product, double commissionPercentage, bool isFeatured
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$ArtistStoreItemCopyWithImpl<$Res>
    implements _$ArtistStoreItemCopyWith<$Res> {
  __$ArtistStoreItemCopyWithImpl(this._self, this._then);

  final _ArtistStoreItem _self;
  final $Res Function(_ArtistStoreItem) _then;

/// Create a copy of ArtistStoreItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? artistId = null,Object? productId = null,Object? product = freezed,Object? commissionPercentage = null,Object? isFeatured = null,}) {
  return _then(_ArtistStoreItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,commissionPercentage: null == commissionPercentage ? _self.commissionPercentage : commissionPercentage // ignore: cast_nullable_to_non_nullable
as double,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ArtistStoreItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$Order {

 String get id; String get buyerId; String get buyerType; String get orderType; String? get referringArtistId; double get totalAmount; double get taxAmount; String get shippingAddress; String? get gstin; String get paymentStatus; String get orderStatus; List<OrderItem> get items; DateTime? get createdAt;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.buyerType, buyerType) || other.buyerType == buyerType)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.referringArtistId, referringArtistId) || other.referringArtistId == referringArtistId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.gstin, gstin) || other.gstin == gstin)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,buyerId,buyerType,orderType,referringArtistId,totalAmount,taxAmount,shippingAddress,gstin,paymentStatus,orderStatus,const DeepCollectionEquality().hash(items),createdAt);

@override
String toString() {
  return 'Order(id: $id, buyerId: $buyerId, buyerType: $buyerType, orderType: $orderType, referringArtistId: $referringArtistId, totalAmount: $totalAmount, taxAmount: $taxAmount, shippingAddress: $shippingAddress, gstin: $gstin, paymentStatus: $paymentStatus, orderStatus: $orderStatus, items: $items, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
 String id, String buyerId, String buyerType, String orderType, String? referringArtistId, double totalAmount, double taxAmount, String shippingAddress, String? gstin, String paymentStatus, String orderStatus, List<OrderItem> items, DateTime? createdAt
});




}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? buyerId = null,Object? buyerType = null,Object? orderType = null,Object? referringArtistId = freezed,Object? totalAmount = null,Object? taxAmount = null,Object? shippingAddress = null,Object? gstin = freezed,Object? paymentStatus = null,Object? orderStatus = null,Object? items = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,buyerType: null == buyerType ? _self.buyerType : buyerType // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,referringArtistId: freezed == referringArtistId ? _self.referringArtistId : referringArtistId // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,shippingAddress: null == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String,gstin: freezed == gstin ? _self.gstin : gstin // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String buyerId,  String buyerType,  String orderType,  String? referringArtistId,  double totalAmount,  double taxAmount,  String shippingAddress,  String? gstin,  String paymentStatus,  String orderStatus,  List<OrderItem> items,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.buyerId,_that.buyerType,_that.orderType,_that.referringArtistId,_that.totalAmount,_that.taxAmount,_that.shippingAddress,_that.gstin,_that.paymentStatus,_that.orderStatus,_that.items,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String buyerId,  String buyerType,  String orderType,  String? referringArtistId,  double totalAmount,  double taxAmount,  String shippingAddress,  String? gstin,  String paymentStatus,  String orderStatus,  List<OrderItem> items,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.buyerId,_that.buyerType,_that.orderType,_that.referringArtistId,_that.totalAmount,_that.taxAmount,_that.shippingAddress,_that.gstin,_that.paymentStatus,_that.orderStatus,_that.items,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String buyerId,  String buyerType,  String orderType,  String? referringArtistId,  double totalAmount,  double taxAmount,  String shippingAddress,  String? gstin,  String paymentStatus,  String orderStatus,  List<OrderItem> items,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.buyerId,_that.buyerType,_that.orderType,_that.referringArtistId,_that.totalAmount,_that.taxAmount,_that.shippingAddress,_that.gstin,_that.paymentStatus,_that.orderStatus,_that.items,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order implements Order {
  const _Order({required this.id, required this.buyerId, required this.buyerType, required this.orderType, this.referringArtistId, required this.totalAmount, required this.taxAmount, required this.shippingAddress, this.gstin, this.paymentStatus = 'pending', this.orderStatus = 'placed', final  List<OrderItem> items = const [], this.createdAt}): _items = items;
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override final  String id;
@override final  String buyerId;
@override final  String buyerType;
@override final  String orderType;
@override final  String? referringArtistId;
@override final  double totalAmount;
@override final  double taxAmount;
@override final  String shippingAddress;
@override final  String? gstin;
@override@JsonKey() final  String paymentStatus;
@override@JsonKey() final  String orderStatus;
 final  List<OrderItem> _items;
@override@JsonKey() List<OrderItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  DateTime? createdAt;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.buyerType, buyerType) || other.buyerType == buyerType)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.referringArtistId, referringArtistId) || other.referringArtistId == referringArtistId)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.shippingAddress, shippingAddress) || other.shippingAddress == shippingAddress)&&(identical(other.gstin, gstin) || other.gstin == gstin)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,buyerId,buyerType,orderType,referringArtistId,totalAmount,taxAmount,shippingAddress,gstin,paymentStatus,orderStatus,const DeepCollectionEquality().hash(_items),createdAt);

@override
String toString() {
  return 'Order(id: $id, buyerId: $buyerId, buyerType: $buyerType, orderType: $orderType, referringArtistId: $referringArtistId, totalAmount: $totalAmount, taxAmount: $taxAmount, shippingAddress: $shippingAddress, gstin: $gstin, paymentStatus: $paymentStatus, orderStatus: $orderStatus, items: $items, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
 String id, String buyerId, String buyerType, String orderType, String? referringArtistId, double totalAmount, double taxAmount, String shippingAddress, String? gstin, String paymentStatus, String orderStatus, List<OrderItem> items, DateTime? createdAt
});




}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? buyerId = null,Object? buyerType = null,Object? orderType = null,Object? referringArtistId = freezed,Object? totalAmount = null,Object? taxAmount = null,Object? shippingAddress = null,Object? gstin = freezed,Object? paymentStatus = null,Object? orderStatus = null,Object? items = null,Object? createdAt = freezed,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as String,buyerType: null == buyerType ? _self.buyerType : buyerType // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,referringArtistId: freezed == referringArtistId ? _self.referringArtistId : referringArtistId // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,shippingAddress: null == shippingAddress ? _self.shippingAddress : shippingAddress // ignore: cast_nullable_to_non_nullable
as String,gstin: freezed == gstin ? _self.gstin : gstin // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$OrderItem {

 String get id; String get productId; Product? get product; int get quantity; double get unitPrice; double get totalPrice;
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCopyWith<OrderItem> get copyWith => _$OrderItemCopyWithImpl<OrderItem>(this as OrderItem, _$identity);

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,product,quantity,unitPrice,totalPrice);

@override
String toString() {
  return 'OrderItem(id: $id, productId: $productId, product: $product, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $OrderItemCopyWith<$Res>  {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) _then) = _$OrderItemCopyWithImpl;
@useResult
$Res call({
 String id, String productId, Product? product, int quantity, double unitPrice, double totalPrice
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$OrderItemCopyWithImpl<$Res>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._self, this._then);

  final OrderItem _self;
  final $Res Function(OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? product = freezed,Object? quantity = null,Object? unitPrice = null,Object? totalPrice = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItem].
extension OrderItemPatterns on OrderItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItem value)  $default,){
final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItem value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productId,  Product? product,  int quantity,  double unitPrice,  double totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.productId,_that.product,_that.quantity,_that.unitPrice,_that.totalPrice);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productId,  Product? product,  int quantity,  double unitPrice,  double totalPrice)  $default,) {final _that = this;
switch (_that) {
case _OrderItem():
return $default(_that.id,_that.productId,_that.product,_that.quantity,_that.unitPrice,_that.totalPrice);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productId,  Product? product,  int quantity,  double unitPrice,  double totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _OrderItem() when $default != null:
return $default(_that.id,_that.productId,_that.product,_that.quantity,_that.unitPrice,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItem implements OrderItem {
  const _OrderItem({required this.id, required this.productId, this.product, required this.quantity, required this.unitPrice, required this.totalPrice});
  factory _OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);

@override final  String id;
@override final  String productId;
@override final  Product? product;
@override final  int quantity;
@override final  double unitPrice;
@override final  double totalPrice;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCopyWith<_OrderItem> get copyWith => __$OrderItemCopyWithImpl<_OrderItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItem&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,product,quantity,unitPrice,totalPrice);

@override
String toString() {
  return 'OrderItem(id: $id, productId: $productId, product: $product, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCopyWith<$Res> implements $OrderItemCopyWith<$Res> {
  factory _$OrderItemCopyWith(_OrderItem value, $Res Function(_OrderItem) _then) = __$OrderItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String productId, Product? product, int quantity, double unitPrice, double totalPrice
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$OrderItemCopyWithImpl<$Res>
    implements _$OrderItemCopyWith<$Res> {
  __$OrderItemCopyWithImpl(this._self, this._then);

  final _OrderItem _self;
  final $Res Function(_OrderItem) _then;

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? product = freezed,Object? quantity = null,Object? unitPrice = null,Object? totalPrice = null,}) {
  return _then(_OrderItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of OrderItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$Campaign {

 String get id; String get brandId; String get title; String get description; String? get requirements; String? get rewardBadgeName; DateTime? get startDate; DateTime? get endDate; bool get isActive; DateTime? get createdAt;
/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignCopyWith<Campaign> get copyWith => _$CampaignCopyWithImpl<Campaign>(this as Campaign, _$identity);

  /// Serializes this Campaign to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.requirements, requirements) || other.requirements == requirements)&&(identical(other.rewardBadgeName, rewardBadgeName) || other.rewardBadgeName == rewardBadgeName)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,brandId,title,description,requirements,rewardBadgeName,startDate,endDate,isActive,createdAt);

@override
String toString() {
  return 'Campaign(id: $id, brandId: $brandId, title: $title, description: $description, requirements: $requirements, rewardBadgeName: $rewardBadgeName, startDate: $startDate, endDate: $endDate, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CampaignCopyWith<$Res>  {
  factory $CampaignCopyWith(Campaign value, $Res Function(Campaign) _then) = _$CampaignCopyWithImpl;
@useResult
$Res call({
 String id, String brandId, String title, String description, String? requirements, String? rewardBadgeName, DateTime? startDate, DateTime? endDate, bool isActive, DateTime? createdAt
});




}
/// @nodoc
class _$CampaignCopyWithImpl<$Res>
    implements $CampaignCopyWith<$Res> {
  _$CampaignCopyWithImpl(this._self, this._then);

  final Campaign _self;
  final $Res Function(Campaign) _then;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? brandId = null,Object? title = null,Object? description = null,Object? requirements = freezed,Object? rewardBadgeName = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,requirements: freezed == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as String?,rewardBadgeName: freezed == rewardBadgeName ? _self.rewardBadgeName : rewardBadgeName // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Campaign].
extension CampaignPatterns on Campaign {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Campaign value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Campaign value)  $default,){
final _that = this;
switch (_that) {
case _Campaign():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Campaign value)?  $default,){
final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String brandId,  String title,  String description,  String? requirements,  String? rewardBadgeName,  DateTime? startDate,  DateTime? endDate,  bool isActive,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.brandId,_that.title,_that.description,_that.requirements,_that.rewardBadgeName,_that.startDate,_that.endDate,_that.isActive,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String brandId,  String title,  String description,  String? requirements,  String? rewardBadgeName,  DateTime? startDate,  DateTime? endDate,  bool isActive,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Campaign():
return $default(_that.id,_that.brandId,_that.title,_that.description,_that.requirements,_that.rewardBadgeName,_that.startDate,_that.endDate,_that.isActive,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String brandId,  String title,  String description,  String? requirements,  String? rewardBadgeName,  DateTime? startDate,  DateTime? endDate,  bool isActive,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.brandId,_that.title,_that.description,_that.requirements,_that.rewardBadgeName,_that.startDate,_that.endDate,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Campaign implements Campaign {
  const _Campaign({required this.id, required this.brandId, required this.title, required this.description, this.requirements, this.rewardBadgeName, this.startDate, this.endDate, this.isActive = true, this.createdAt});
  factory _Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);

@override final  String id;
@override final  String brandId;
@override final  String title;
@override final  String description;
@override final  String? requirements;
@override final  String? rewardBadgeName;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override@JsonKey() final  bool isActive;
@override final  DateTime? createdAt;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignCopyWith<_Campaign> get copyWith => __$CampaignCopyWithImpl<_Campaign>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.requirements, requirements) || other.requirements == requirements)&&(identical(other.rewardBadgeName, rewardBadgeName) || other.rewardBadgeName == rewardBadgeName)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,brandId,title,description,requirements,rewardBadgeName,startDate,endDate,isActive,createdAt);

@override
String toString() {
  return 'Campaign(id: $id, brandId: $brandId, title: $title, description: $description, requirements: $requirements, rewardBadgeName: $rewardBadgeName, startDate: $startDate, endDate: $endDate, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignCopyWith<$Res> implements $CampaignCopyWith<$Res> {
  factory _$CampaignCopyWith(_Campaign value, $Res Function(_Campaign) _then) = __$CampaignCopyWithImpl;
@override @useResult
$Res call({
 String id, String brandId, String title, String description, String? requirements, String? rewardBadgeName, DateTime? startDate, DateTime? endDate, bool isActive, DateTime? createdAt
});




}
/// @nodoc
class __$CampaignCopyWithImpl<$Res>
    implements _$CampaignCopyWith<$Res> {
  __$CampaignCopyWithImpl(this._self, this._then);

  final _Campaign _self;
  final $Res Function(_Campaign) _then;

/// Create a copy of Campaign
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? brandId = null,Object? title = null,Object? description = null,Object? requirements = freezed,Object? rewardBadgeName = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_Campaign(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,requirements: freezed == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as String?,rewardBadgeName: freezed == rewardBadgeName ? _self.rewardBadgeName : rewardBadgeName // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Badge {

 String get id; String get artistId; String get badgeName; String get badgeType;// skill, brand, sustainability
 String? get issuedBy; DateTime? get issuedAt;
/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BadgeCopyWith<Badge> get copyWith => _$BadgeCopyWithImpl<Badge>(this as Badge, _$identity);

  /// Serializes this Badge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Badge&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.badgeName, badgeName) || other.badgeName == badgeName)&&(identical(other.badgeType, badgeType) || other.badgeType == badgeType)&&(identical(other.issuedBy, issuedBy) || other.issuedBy == issuedBy)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,artistId,badgeName,badgeType,issuedBy,issuedAt);

@override
String toString() {
  return 'Badge(id: $id, artistId: $artistId, badgeName: $badgeName, badgeType: $badgeType, issuedBy: $issuedBy, issuedAt: $issuedAt)';
}


}

/// @nodoc
abstract mixin class $BadgeCopyWith<$Res>  {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) _then) = _$BadgeCopyWithImpl;
@useResult
$Res call({
 String id, String artistId, String badgeName, String badgeType, String? issuedBy, DateTime? issuedAt
});




}
/// @nodoc
class _$BadgeCopyWithImpl<$Res>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._self, this._then);

  final Badge _self;
  final $Res Function(Badge) _then;

/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? artistId = null,Object? badgeName = null,Object? badgeType = null,Object? issuedBy = freezed,Object? issuedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,badgeName: null == badgeName ? _self.badgeName : badgeName // ignore: cast_nullable_to_non_nullable
as String,badgeType: null == badgeType ? _self.badgeType : badgeType // ignore: cast_nullable_to_non_nullable
as String,issuedBy: freezed == issuedBy ? _self.issuedBy : issuedBy // ignore: cast_nullable_to_non_nullable
as String?,issuedAt: freezed == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Badge].
extension BadgePatterns on Badge {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Badge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Badge() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Badge value)  $default,){
final _that = this;
switch (_that) {
case _Badge():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Badge value)?  $default,){
final _that = this;
switch (_that) {
case _Badge() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String artistId,  String badgeName,  String badgeType,  String? issuedBy,  DateTime? issuedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Badge() when $default != null:
return $default(_that.id,_that.artistId,_that.badgeName,_that.badgeType,_that.issuedBy,_that.issuedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String artistId,  String badgeName,  String badgeType,  String? issuedBy,  DateTime? issuedAt)  $default,) {final _that = this;
switch (_that) {
case _Badge():
return $default(_that.id,_that.artistId,_that.badgeName,_that.badgeType,_that.issuedBy,_that.issuedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String artistId,  String badgeName,  String badgeType,  String? issuedBy,  DateTime? issuedAt)?  $default,) {final _that = this;
switch (_that) {
case _Badge() when $default != null:
return $default(_that.id,_that.artistId,_that.badgeName,_that.badgeType,_that.issuedBy,_that.issuedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Badge implements Badge {
  const _Badge({required this.id, required this.artistId, required this.badgeName, required this.badgeType, this.issuedBy, this.issuedAt});
  factory _Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);

@override final  String id;
@override final  String artistId;
@override final  String badgeName;
@override final  String badgeType;
// skill, brand, sustainability
@override final  String? issuedBy;
@override final  DateTime? issuedAt;

/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BadgeCopyWith<_Badge> get copyWith => __$BadgeCopyWithImpl<_Badge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BadgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Badge&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.badgeName, badgeName) || other.badgeName == badgeName)&&(identical(other.badgeType, badgeType) || other.badgeType == badgeType)&&(identical(other.issuedBy, issuedBy) || other.issuedBy == issuedBy)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,artistId,badgeName,badgeType,issuedBy,issuedAt);

@override
String toString() {
  return 'Badge(id: $id, artistId: $artistId, badgeName: $badgeName, badgeType: $badgeType, issuedBy: $issuedBy, issuedAt: $issuedAt)';
}


}

/// @nodoc
abstract mixin class _$BadgeCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$BadgeCopyWith(_Badge value, $Res Function(_Badge) _then) = __$BadgeCopyWithImpl;
@override @useResult
$Res call({
 String id, String artistId, String badgeName, String badgeType, String? issuedBy, DateTime? issuedAt
});




}
/// @nodoc
class __$BadgeCopyWithImpl<$Res>
    implements _$BadgeCopyWith<$Res> {
  __$BadgeCopyWithImpl(this._self, this._then);

  final _Badge _self;
  final $Res Function(_Badge) _then;

/// Create a copy of Badge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? artistId = null,Object? badgeName = null,Object? badgeType = null,Object? issuedBy = freezed,Object? issuedAt = freezed,}) {
  return _then(_Badge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,badgeName: null == badgeName ? _self.badgeName : badgeName // ignore: cast_nullable_to_non_nullable
as String,badgeType: null == badgeType ? _self.badgeType : badgeType // ignore: cast_nullable_to_non_nullable
as String,issuedBy: freezed == issuedBy ? _self.issuedBy : issuedBy // ignore: cast_nullable_to_non_nullable
as String?,issuedAt: freezed == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
