import 'dart:developer' as developer;
import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../../../core/network/api_client.dart';

class PaymentService {
  final ApiClient _apiClient;
  late Razorpay _razorpay;

  PaymentService({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient() {
    _razorpay = Razorpay();
  }

  Future<Map<String, dynamic>> initiateSubscriptionPayment(String planCode) async {
    try {
      developer.log('💳 Initiating subscription payment for plan: $planCode', name: 'PaymentService');
      
      final response = await _apiClient.dio.post(
        '/customers/me/subscription/initiate',
        data: {'plan_code': planCode},
      );

      return response.data['data'] as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Payment initiation failed: $e', name: 'PaymentService');
      rethrow;
    }
  }

  void openRazorpayCheckout({
    required String orderId,
    required double amount,
    required String name,
    required String email,
    required String phone,
    required Function(PaymentSuccessResponse) onSuccess,
    required Function(PaymentFailureResponse) onFailure,
  }) {
    final options = {
      'key': 'YOUR_RAZORPAY_KEY', // TODO: Move to env config
      'amount': (amount * 100).toInt(), // Amount in paise
      'name': 'MakeupWala',
      'order_id': orderId,
      'description': 'Subscription Payment',
      'prefill': {
        'contact': phone,
        'email': email,
      },
      'theme': {
        'color': '#FF6B9D',
      }
    };

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (PaymentSuccessResponse response) {
      developer.log('✅ Payment successful: ${response.paymentId}', name: 'PaymentService');
      onSuccess(response);
    });

    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (PaymentFailureResponse response) {
      developer.log('❌ Payment failed: ${response.message}', name: 'PaymentService');
      onFailure(response);
    });

    _razorpay.open(options);
  }

  Future<void> verifyPayment({
    required String paymentId,
    required String orderId,
    required String signature,
  }) async {
    try {
      await _apiClient.dio.post('/payments/verify', data: {
        'payment_id': paymentId,
        'order_id': orderId,
        'signature': signature,
      });
    } catch (e) {
      developer.log('❌ Payment verification failed: $e', name: 'PaymentService');
      rethrow;
    }
  }

  void dispose() {
    _razorpay.clear();
  }
}
