import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class InventoryRepository {
  final ApiClient _apiClient;

  InventoryRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<Map<String, dynamic>>> getInventory() async {
    try {
      final response = await _apiClient.dio.get('/inventory/products');
      final List<dynamic> data = response.data['data'] ?? [];
      return data.cast<Map<String, dynamic>>();
    } catch (e) {
      developer.log('❌ Get inventory failed: $e', name: 'InventoryRepository');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> addProduct(Map<String, dynamic> product) async {
    try {
      final response = await _apiClient.dio.post('/inventory/products', data: product);
      return response.data;
    } catch (e) {
      developer.log('❌ Add product failed: $e', name: 'InventoryRepository');
      rethrow;
    }
  }

  Future<void> logUsage(String bookingId, String productId, double units) async {
    try {
      await _apiClient.dio.post('/inventory/usage', data: {
        'booking_id': bookingId,
        'product_id': productId,
        'units_used': units,
      });
    } catch (e) {
      developer.log('❌ Log usage failed: $e', name: 'InventoryRepository');
      rethrow;
    }
  }
}
