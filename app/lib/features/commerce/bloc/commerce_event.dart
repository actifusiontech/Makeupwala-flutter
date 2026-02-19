import 'package:freezed_annotation/freezed_annotation.dart';

part 'commerce_event.freezed.dart';

@freezed
class CommerceEvent with _$CommerceEvent {
  const factory CommerceEvent.fetchProducts({String? category, bool? sustainable, String? brandId}) = _FetchProducts;
  const factory CommerceEvent.fetchArtistShop(String artistId) = _FetchArtistShop;
  const factory CommerceEvent.addToShop(String productId) = _AddToShop;
  const factory CommerceEvent.removeFromShop(String artistId, String productId) = _RemoveFromShop;
  const factory CommerceEvent.fetchOrders() = _FetchOrders;
  const factory CommerceEvent.fetchSales() = _FetchSales;
  const factory CommerceEvent.placeOrder({
    required String orderType,
    required String shippingAddress,
    String? gstin,
    String? referringArtistId,
    required List<Map<String, dynamic>> items,
  }) = _PlaceOrder;
  const factory CommerceEvent.updateOrderStatus({
    required String orderId,
    required String status,
    String? trackingNumber,
    String? trackingUrl,
    String? carrier,
  }) = _UpdateOrderStatus;
  const factory CommerceEvent.fetchCommissions() = _FetchCommissions;
}
