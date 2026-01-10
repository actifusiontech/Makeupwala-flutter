import 'dart:developer' as developer;
import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../../../core/network/api_client.dart';

class PaymentService {
  final ApiClient _apiClient;
  late Razorpay _razorpay;

  PaymentService({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient() {
    _razorpay = Razorpay();
  }

  // ========== SUBSCRIPTION PAYMENTS ==========

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

  // ========== BOOKING PAYMENTS ==========

  /// Initiate online payment for a booking
  Future<Map<String, dynamic>> initiateBookingPayment(String bookingId, int amount) async {
    try {
      developer.log('💳 Initiating booking payment for: $bookingId', name: 'PaymentService');
      
      final response = await _apiClient.dio.post(
        '/artists/me/bookings/$bookingId/payment/online',
        data: {'amount': amount},
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Booking payment initiation failed: $e', name: 'PaymentService');
      rethrow;
    }
  }

  /// Mark booking payment as received offline
  Future<void> markBookingPaidOffline({
    required String bookingId,
    required String paymentMethod,
    required num amount,
    String? notes,
  }) async {
    try {
      developer.log('💵 Marking booking $bookingId as paid offline via $paymentMethod', name: 'PaymentService');
      
      await _apiClient.dio.post(
        '/artists/me/bookings/$bookingId/payment/offline',
        data: {
          'payment_method': paymentMethod,
          'amount': amount,
          'notes': notes ?? 'Payment received via $paymentMethod',
        },
      );
    } catch (e) {
      developer.log('❌ Failed to mark booking as paid: $e', name: 'PaymentService');
      rethrow;
    }
  }

  // ========== RAZORPAY CHECKOUT ==========

  void openRazorpayCheckout({
    required String orderId,
    required double amount,
    required String name,
    required String email,
    required String phone,
    String? keyId, // Added optional keyId
    required Function(PaymentSuccessResponse) onSuccess,
    required Function(PaymentFailureResponse) onFailure,
  }) {
    final options = {
      'key': keyId ?? 'rzp_test_placeholder', // Should be passed from initiate response
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

  /// Open Razorpay checkout for booking payment
  void openBookingPaymentCheckout({
    required String orderId,
    required int amount,
    required String keyId,
    required Function(PaymentSuccessResponse) onSuccess,
    required Function(PaymentFailureResponse) onFailure,
  }) {
    final options = {
      'key': keyId,
      'amount': amount, // Already in paise
      'name': 'MakeupWala',
      'order_id': orderId,
      'description': 'Booking Payment',
      'theme': {
        'color': '#FF6B9D',
      }
    };

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (PaymentSuccessResponse response) {
      developer.log('✅ Booking payment successful: ${response.paymentId}', name: 'PaymentService');
      onSuccess(response);
    });

    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (PaymentFailureResponse response) {
      developer.log('❌ Booking payment failed: ${response.message}', name: 'PaymentService');
      onFailure(response);
    });

    _razorpay.open(options);
  }

  // ========== PAYMENT VERIFICATION ==========

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
