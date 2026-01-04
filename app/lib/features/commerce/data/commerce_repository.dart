import 'package:dio/dio.dart';
import '../domain/commerce_models.dart';

class CommerceRepository {
  final Dio _dio;

  CommerceRepository(this._dio);

  // Products & Pro-Store
  Future<List<Product>> getProducts({String? category, bool? sustainable}) async {
    final response = await _dio.get('/commerce/products', queryParameters: {
      if (category != null) 'category': category,
      if (sustainable == true) 'sustainable': 'true',
    });
    return (response.data as List).map((e) => Product.fromJson(e)).toList();
  }

  // MyStore (Artist Curation)
  Future<void> addToShop(String productId) async {
    await _dio.post('/commerce/store/items', data: {'product_id': productId});
  }

  Future<List<ArtistStoreItem>> getArtistShop(String artistId) async {
    final response = await _dio.get('/commerce/store/items/$artistId');
    return (response.data as List).map((e) => ArtistStoreItem.fromJson(e)).toList();
  }

  // Orders
  Future<Order> placeOrder({
    required String orderType,
    required String shippingAddress,
    String? gstin,
    String? referringArtistId,
    required List<Map<String, dynamic>> items,
  }) async {
    final response = await _dio.post('/commerce/orders', data: {
      'order_type': orderType,
      'shipping_address': shippingAddress,
      'gstin': gstin,
      'referring_artist_id': referringArtistId,
      'items': items,
    });
    return Order.fromJson(response.data);
  }

  Future<List<Order>> getOrders() async {
    final response = await _dio.get('/commerce/orders');
    return (response.data as List).map((e) => Order.fromJson(e)).toList();
  }

  // Brand Challenges & Endorsements
  Future<List<Campaign>> getCampaigns() async {
    final response = await _dio.get('/campaigns');
    return (response.data as List).map((e) => Campaign.fromJson(e)).toList();
  }

  Future<void> applyForCampaign(String campaignId, String coverLetter) async {
    await _dio.post('/campaigns/$campaignId/apply', data: {
      'cover_letter': coverLetter,
    });
  }

  Future<void> submitDeliverable(String applicationId, String contentUrl) async {
    await _dio.post('/applications/$applicationId/deliverables', data: {
      'content_url': contentUrl,
    });
  }

  Future<List<Badge>> getArtistBadges(String artistId) async {
    final response = await _dio.get('/artists/$artistId/badges'); // We'll need this endpoint or similar
    return (response.data as List).map((e) => Badge.fromJson(e)).toList();
  }
}
