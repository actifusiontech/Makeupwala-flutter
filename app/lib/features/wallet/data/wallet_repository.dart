import 'package:dio/dio.dart';
import 'package:app/core/network/api_client.dart';

class WalletRepository {
  final ApiClient _apiClient;

  WalletRepository(this._apiClient);

  Future<Map<String, dynamic>> getBalance() async {
    try {
      final response = await _apiClient.dio.get('/wallet/balance');
      return response.data;
    } catch (e) {
      return {
        'balance': 0.0,
        'currency': 'INR',
        'is_bank_linked': false,
      };
    }
  }

  Future<List<dynamic>> getTransactions() async {
    try {
      final response = await _apiClient.dio.get('/wallet/transactions');
      return response.data;
    } catch (e) {
      return [];
    }
  }

  Future<void> requestWithdrawal({
    required double amount,
    required String bankAccount,
    required String ifsc,
    required String accountHolder,
  }) async {
    await _apiClient.dio.post('/wallet/withdraw', data: {
      'amount': amount,
      'bank_account': bankAccount,
      'ifsc': ifsc,
      'account_holder': accountHolder,
    });
  }

  Future<Map<String, dynamic>> initiateTopUp({
    required double amount,
  }) async {
    final response = await _apiClient.dio.post('/wallet/topup', data: {
      'amount': (amount * 100).toInt(), // Convert to paise
      'currency': 'INR',
    });
    return response.data;
  }

  Future<void> verifyTopUp({
    required String orderId,
    required String paymentId,
    required String signature,
  }) async {
    await _apiClient.dio.post('/wallet/topup/verify', data: {
      'order_id': orderId,
      'payment_id': paymentId,
      'signature': signature,
    });
  }

  Future<void> linkBankAccount({
    required String email,
    required String phone,
    required String legalBusinessName,
    required String businessType,
    required String contactName,
    required String pan,
    required String bankAccountNumber,
    required String bankIfsc,
    required String bankAccountName,
  }) async {
    await _apiClient.dio.post('/payments/link-bank', data: {
      'email': email,
      'phone': phone,
      'legal_business_name': legalBusinessName,
      'business_type': businessType,
      'contact_name': contactName,
      'pan': pan,
      'bank_account_number': bankAccountNumber,
      'bank_ifsc': bankIfsc,
      'bank_account_name': bankAccountName,
    });
  }
}
