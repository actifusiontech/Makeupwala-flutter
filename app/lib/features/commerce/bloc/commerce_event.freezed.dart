// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commerce_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommerceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommerceEventCopyWith<$Res> {
  factory $CommerceEventCopyWith(
          CommerceEvent value, $Res Function(CommerceEvent) then) =
      _$CommerceEventCopyWithImpl<$Res, CommerceEvent>;
}

/// @nodoc
class _$CommerceEventCopyWithImpl<$Res, $Val extends CommerceEvent>
    implements $CommerceEventCopyWith<$Res> {
  _$CommerceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProductsImplCopyWith<$Res> {
  factory _$$FetchProductsImplCopyWith(
          _$FetchProductsImpl value, $Res Function(_$FetchProductsImpl) then) =
      __$$FetchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? category, bool? sustainable, String? brandId});
}

/// @nodoc
class __$$FetchProductsImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$FetchProductsImpl>
    implements _$$FetchProductsImplCopyWith<$Res> {
  __$$FetchProductsImplCopyWithImpl(
      _$FetchProductsImpl _value, $Res Function(_$FetchProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? sustainable = freezed,
    Object? brandId = freezed,
  }) {
    return _then(_$FetchProductsImpl(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sustainable: freezed == sustainable
          ? _value.sustainable
          : sustainable // ignore: cast_nullable_to_non_nullable
              as bool?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchProductsImpl implements _FetchProducts {
  const _$FetchProductsImpl({this.category, this.sustainable, this.brandId});

  @override
  final String? category;
  @override
  final bool? sustainable;
  @override
  final String? brandId;

  @override
  String toString() {
    return 'CommerceEvent.fetchProducts(category: $category, sustainable: $sustainable, brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductsImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sustainable, sustainable) ||
                other.sustainable == sustainable) &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, sustainable, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductsImplCopyWith<_$FetchProductsImpl> get copyWith =>
      __$$FetchProductsImplCopyWithImpl<_$FetchProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return fetchProducts(category, sustainable, brandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return fetchProducts?.call(category, sustainable, brandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(category, sustainable, brandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return fetchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchProducts implements CommerceEvent {
  const factory _FetchProducts(
      {final String? category,
      final bool? sustainable,
      final String? brandId}) = _$FetchProductsImpl;

  String? get category;
  bool? get sustainable;
  String? get brandId;
  @JsonKey(ignore: true)
  _$$FetchProductsImplCopyWith<_$FetchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchArtistShopImplCopyWith<$Res> {
  factory _$$FetchArtistShopImplCopyWith(_$FetchArtistShopImpl value,
          $Res Function(_$FetchArtistShopImpl) then) =
      __$$FetchArtistShopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$FetchArtistShopImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$FetchArtistShopImpl>
    implements _$$FetchArtistShopImplCopyWith<$Res> {
  __$$FetchArtistShopImplCopyWithImpl(
      _$FetchArtistShopImpl _value, $Res Function(_$FetchArtistShopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$FetchArtistShopImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchArtistShopImpl implements _FetchArtistShop {
  const _$FetchArtistShopImpl(this.artistId);

  @override
  final String artistId;

  @override
  String toString() {
    return 'CommerceEvent.fetchArtistShop(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchArtistShopImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchArtistShopImplCopyWith<_$FetchArtistShopImpl> get copyWith =>
      __$$FetchArtistShopImplCopyWithImpl<_$FetchArtistShopImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return fetchArtistShop(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return fetchArtistShop?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchArtistShop != null) {
      return fetchArtistShop(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return fetchArtistShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return fetchArtistShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchArtistShop != null) {
      return fetchArtistShop(this);
    }
    return orElse();
  }
}

abstract class _FetchArtistShop implements CommerceEvent {
  const factory _FetchArtistShop(final String artistId) = _$FetchArtistShopImpl;

  String get artistId;
  @JsonKey(ignore: true)
  _$$FetchArtistShopImplCopyWith<_$FetchArtistShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToShopImplCopyWith<$Res> {
  factory _$$AddToShopImplCopyWith(
          _$AddToShopImpl value, $Res Function(_$AddToShopImpl) then) =
      __$$AddToShopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddToShopImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$AddToShopImpl>
    implements _$$AddToShopImplCopyWith<$Res> {
  __$$AddToShopImplCopyWithImpl(
      _$AddToShopImpl _value, $Res Function(_$AddToShopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddToShopImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToShopImpl implements _AddToShop {
  const _$AddToShopImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CommerceEvent.addToShop(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToShopImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToShopImplCopyWith<_$AddToShopImpl> get copyWith =>
      __$$AddToShopImplCopyWithImpl<_$AddToShopImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return addToShop(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return addToShop?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (addToShop != null) {
      return addToShop(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return addToShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return addToShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (addToShop != null) {
      return addToShop(this);
    }
    return orElse();
  }
}

abstract class _AddToShop implements CommerceEvent {
  const factory _AddToShop(final String productId) = _$AddToShopImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$AddToShopImplCopyWith<_$AddToShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromShopImplCopyWith<$Res> {
  factory _$$RemoveFromShopImplCopyWith(_$RemoveFromShopImpl value,
          $Res Function(_$RemoveFromShopImpl) then) =
      __$$RemoveFromShopImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId, String productId});
}

/// @nodoc
class __$$RemoveFromShopImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$RemoveFromShopImpl>
    implements _$$RemoveFromShopImplCopyWith<$Res> {
  __$$RemoveFromShopImplCopyWithImpl(
      _$RemoveFromShopImpl _value, $Res Function(_$RemoveFromShopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? productId = null,
  }) {
    return _then(_$RemoveFromShopImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromShopImpl implements _RemoveFromShop {
  const _$RemoveFromShopImpl(this.artistId, this.productId);

  @override
  final String artistId;
  @override
  final String productId;

  @override
  String toString() {
    return 'CommerceEvent.removeFromShop(artistId: $artistId, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromShopImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromShopImplCopyWith<_$RemoveFromShopImpl> get copyWith =>
      __$$RemoveFromShopImplCopyWithImpl<_$RemoveFromShopImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return removeFromShop(artistId, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return removeFromShop?.call(artistId, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (removeFromShop != null) {
      return removeFromShop(artistId, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return removeFromShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return removeFromShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (removeFromShop != null) {
      return removeFromShop(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromShop implements CommerceEvent {
  const factory _RemoveFromShop(final String artistId, final String productId) =
      _$RemoveFromShopImpl;

  String get artistId;
  String get productId;
  @JsonKey(ignore: true)
  _$$RemoveFromShopImplCopyWith<_$RemoveFromShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOrdersImplCopyWith<$Res> {
  factory _$$FetchOrdersImplCopyWith(
          _$FetchOrdersImpl value, $Res Function(_$FetchOrdersImpl) then) =
      __$$FetchOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOrdersImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$FetchOrdersImpl>
    implements _$$FetchOrdersImplCopyWith<$Res> {
  __$$FetchOrdersImplCopyWithImpl(
      _$FetchOrdersImpl _value, $Res Function(_$FetchOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOrdersImpl implements _FetchOrders {
  const _$FetchOrdersImpl();

  @override
  String toString() {
    return 'CommerceEvent.fetchOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return fetchOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return fetchOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return fetchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return fetchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders(this);
    }
    return orElse();
  }
}

abstract class _FetchOrders implements CommerceEvent {
  const factory _FetchOrders() = _$FetchOrdersImpl;
}

/// @nodoc
abstract class _$$FetchSalesImplCopyWith<$Res> {
  factory _$$FetchSalesImplCopyWith(
          _$FetchSalesImpl value, $Res Function(_$FetchSalesImpl) then) =
      __$$FetchSalesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSalesImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$FetchSalesImpl>
    implements _$$FetchSalesImplCopyWith<$Res> {
  __$$FetchSalesImplCopyWithImpl(
      _$FetchSalesImpl _value, $Res Function(_$FetchSalesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSalesImpl implements _FetchSales {
  const _$FetchSalesImpl();

  @override
  String toString() {
    return 'CommerceEvent.fetchSales()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSalesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return fetchSales();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return fetchSales?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchSales != null) {
      return fetchSales();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return fetchSales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return fetchSales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchSales != null) {
      return fetchSales(this);
    }
    return orElse();
  }
}

abstract class _FetchSales implements CommerceEvent {
  const factory _FetchSales() = _$FetchSalesImpl;
}

/// @nodoc
abstract class _$$PlaceOrderImplCopyWith<$Res> {
  factory _$$PlaceOrderImplCopyWith(
          _$PlaceOrderImpl value, $Res Function(_$PlaceOrderImpl) then) =
      __$$PlaceOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String orderType,
      String shippingAddress,
      String? gstin,
      String? referringArtistId,
      List<Map<String, dynamic>> items});
}

/// @nodoc
class __$$PlaceOrderImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$PlaceOrderImpl>
    implements _$$PlaceOrderImplCopyWith<$Res> {
  __$$PlaceOrderImplCopyWithImpl(
      _$PlaceOrderImpl _value, $Res Function(_$PlaceOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderType = null,
    Object? shippingAddress = null,
    Object? gstin = freezed,
    Object? referringArtistId = freezed,
    Object? items = null,
  }) {
    return _then(_$PlaceOrderImpl(
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      gstin: freezed == gstin
          ? _value.gstin
          : gstin // ignore: cast_nullable_to_non_nullable
              as String?,
      referringArtistId: freezed == referringArtistId
          ? _value.referringArtistId
          : referringArtistId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$PlaceOrderImpl implements _PlaceOrder {
  const _$PlaceOrderImpl(
      {required this.orderType,
      required this.shippingAddress,
      this.gstin,
      this.referringArtistId,
      required final List<Map<String, dynamic>> items})
      : _items = items;

  @override
  final String orderType;
  @override
  final String shippingAddress;
  @override
  final String? gstin;
  @override
  final String? referringArtistId;
  final List<Map<String, dynamic>> _items;
  @override
  List<Map<String, dynamic>> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CommerceEvent.placeOrder(orderType: $orderType, shippingAddress: $shippingAddress, gstin: $gstin, referringArtistId: $referringArtistId, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderImpl &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.gstin, gstin) || other.gstin == gstin) &&
            (identical(other.referringArtistId, referringArtistId) ||
                other.referringArtistId == referringArtistId) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType, shippingAddress,
      gstin, referringArtistId, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      __$$PlaceOrderImplCopyWithImpl<_$PlaceOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return placeOrder(
        orderType, shippingAddress, gstin, referringArtistId, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return placeOrder?.call(
        orderType, shippingAddress, gstin, referringArtistId, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(
          orderType, shippingAddress, gstin, referringArtistId, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements CommerceEvent {
  const factory _PlaceOrder(
      {required final String orderType,
      required final String shippingAddress,
      final String? gstin,
      final String? referringArtistId,
      required final List<Map<String, dynamic>> items}) = _$PlaceOrderImpl;

  String get orderType;
  String get shippingAddress;
  String? get gstin;
  String? get referringArtistId;
  List<Map<String, dynamic>> get items;
  @JsonKey(ignore: true)
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateOrderStatusImplCopyWith<$Res> {
  factory _$$UpdateOrderStatusImplCopyWith(_$UpdateOrderStatusImpl value,
          $Res Function(_$UpdateOrderStatusImpl) then) =
      __$$UpdateOrderStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String orderId,
      String status,
      String? trackingNumber,
      String? trackingUrl,
      String? carrier});
}

/// @nodoc
class __$$UpdateOrderStatusImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$UpdateOrderStatusImpl>
    implements _$$UpdateOrderStatusImplCopyWith<$Res> {
  __$$UpdateOrderStatusImplCopyWithImpl(_$UpdateOrderStatusImpl _value,
      $Res Function(_$UpdateOrderStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
    Object? trackingNumber = freezed,
    Object? trackingUrl = freezed,
    Object? carrier = freezed,
  }) {
    return _then(_$UpdateOrderStatusImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingUrl: freezed == trackingUrl
          ? _value.trackingUrl
          : trackingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      carrier: freezed == carrier
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UpdateOrderStatusImpl implements _UpdateOrderStatus {
  const _$UpdateOrderStatusImpl(
      {required this.orderId,
      required this.status,
      this.trackingNumber,
      this.trackingUrl,
      this.carrier});

  @override
  final String orderId;
  @override
  final String status;
  @override
  final String? trackingNumber;
  @override
  final String? trackingUrl;
  @override
  final String? carrier;

  @override
  String toString() {
    return 'CommerceEvent.updateOrderStatus(orderId: $orderId, status: $status, trackingNumber: $trackingNumber, trackingUrl: $trackingUrl, carrier: $carrier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrderStatusImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber) &&
            (identical(other.trackingUrl, trackingUrl) ||
                other.trackingUrl == trackingUrl) &&
            (identical(other.carrier, carrier) || other.carrier == carrier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, status, trackingNumber, trackingUrl, carrier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrderStatusImplCopyWith<_$UpdateOrderStatusImpl> get copyWith =>
      __$$UpdateOrderStatusImplCopyWithImpl<_$UpdateOrderStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return updateOrderStatus(
        orderId, status, trackingNumber, trackingUrl, carrier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return updateOrderStatus?.call(
        orderId, status, trackingNumber, trackingUrl, carrier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(
          orderId, status, trackingNumber, trackingUrl, carrier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderStatus implements CommerceEvent {
  const factory _UpdateOrderStatus(
      {required final String orderId,
      required final String status,
      final String? trackingNumber,
      final String? trackingUrl,
      final String? carrier}) = _$UpdateOrderStatusImpl;

  String get orderId;
  String get status;
  String? get trackingNumber;
  String? get trackingUrl;
  String? get carrier;
  @JsonKey(ignore: true)
  _$$UpdateOrderStatusImplCopyWith<_$UpdateOrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCommissionsImplCopyWith<$Res> {
  factory _$$FetchCommissionsImplCopyWith(_$FetchCommissionsImpl value,
          $Res Function(_$FetchCommissionsImpl) then) =
      __$$FetchCommissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCommissionsImplCopyWithImpl<$Res>
    extends _$CommerceEventCopyWithImpl<$Res, _$FetchCommissionsImpl>
    implements _$$FetchCommissionsImplCopyWith<$Res> {
  __$$FetchCommissionsImplCopyWithImpl(_$FetchCommissionsImpl _value,
      $Res Function(_$FetchCommissionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchCommissionsImpl implements _FetchCommissions {
  const _$FetchCommissionsImpl();

  @override
  String toString() {
    return 'CommerceEvent.fetchCommissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCommissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? category, bool? sustainable, String? brandId)
        fetchProducts,
    required TResult Function(String artistId) fetchArtistShop,
    required TResult Function(String productId) addToShop,
    required TResult Function(String artistId, String productId) removeFromShop,
    required TResult Function() fetchOrders,
    required TResult Function() fetchSales,
    required TResult Function(
            String orderType,
            String shippingAddress,
            String? gstin,
            String? referringArtistId,
            List<Map<String, dynamic>> items)
        placeOrder,
    required TResult Function(String orderId, String status,
            String? trackingNumber, String? trackingUrl, String? carrier)
        updateOrderStatus,
    required TResult Function() fetchCommissions,
  }) {
    return fetchCommissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult? Function(String artistId)? fetchArtistShop,
    TResult? Function(String productId)? addToShop,
    TResult? Function(String artistId, String productId)? removeFromShop,
    TResult? Function()? fetchOrders,
    TResult? Function()? fetchSales,
    TResult? Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult? Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult? Function()? fetchCommissions,
  }) {
    return fetchCommissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? category, bool? sustainable, String? brandId)?
        fetchProducts,
    TResult Function(String artistId)? fetchArtistShop,
    TResult Function(String productId)? addToShop,
    TResult Function(String artistId, String productId)? removeFromShop,
    TResult Function()? fetchOrders,
    TResult Function()? fetchSales,
    TResult Function(String orderType, String shippingAddress, String? gstin,
            String? referringArtistId, List<Map<String, dynamic>> items)?
        placeOrder,
    TResult Function(String orderId, String status, String? trackingNumber,
            String? trackingUrl, String? carrier)?
        updateOrderStatus,
    TResult Function()? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchCommissions != null) {
      return fetchCommissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
    required TResult Function(_FetchArtistShop value) fetchArtistShop,
    required TResult Function(_AddToShop value) addToShop,
    required TResult Function(_RemoveFromShop value) removeFromShop,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchSales value) fetchSales,
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_FetchCommissions value) fetchCommissions,
  }) {
    return fetchCommissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
    TResult? Function(_FetchArtistShop value)? fetchArtistShop,
    TResult? Function(_AddToShop value)? addToShop,
    TResult? Function(_RemoveFromShop value)? removeFromShop,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchSales value)? fetchSales,
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_FetchCommissions value)? fetchCommissions,
  }) {
    return fetchCommissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    TResult Function(_FetchArtistShop value)? fetchArtistShop,
    TResult Function(_AddToShop value)? addToShop,
    TResult Function(_RemoveFromShop value)? removeFromShop,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchSales value)? fetchSales,
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_FetchCommissions value)? fetchCommissions,
    required TResult orElse(),
  }) {
    if (fetchCommissions != null) {
      return fetchCommissions(this);
    }
    return orElse();
  }
}

abstract class _FetchCommissions implements CommerceEvent {
  const factory _FetchCommissions() = _$FetchCommissionsImpl;
}
