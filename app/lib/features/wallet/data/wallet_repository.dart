import 'package:app/core/network/api_client.dart';

class WalletRepository {
  final ApiClient _apiClient;

  WalletRepository(this._apiClient);

  Future<Map<String, dynamic>> getBalance() async {
    try {
      final response = await _apiClient.dio.get('/wallet/balance');
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  Future<List<dynamic>> getTransactions() async {
    try {
      final response = await _apiClient.dio.get('/wallet/transactions');
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  Future<void> requestWithdrawal({required double amount}) async {
    await _apiClient.dio.post('/wallet/withdraw', data: {'amount': amount});
  }

  Future<Map<String, dynamic>> initiateTopUp({required double amount}) async {
    final response = await _apiClient.dio.post(
      '/wallet/topup',
      data: {
        'amount': (amount * 100).toInt(), // Convert to paise
        'currency': 'INR',
      },
    );
    return response.data;
  }

  Future<void> verifyTopUp({
    required String orderId,
    required String paymentId,
    required String signature,
  }) async {
    await _apiClient.dio.post(
      '/wallet/topup/verify',
      data: {
        'order_id': orderId,
        'payment_id': paymentId,
        'signature': signature,
      },
    );
  }
}
