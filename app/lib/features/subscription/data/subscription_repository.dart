import 'dart:developer' as developer;
import '../../../core/network/api_client.dart';

class SubscriptionRepository {
  final ApiClient _apiClient;

  SubscriptionRepository({ApiClient? apiClient}) : _apiClient = apiClient ?? ApiClient();

  Future<List<dynamic>> getPlans() async {
    try {
      developer.log('💳 Fetching subscription plans', name: 'SubscriptionRepository');
      final response = await _apiClient.dio.get('/subscriptions/plans');
      return response.data['plans'] as List<dynamic>;
    } catch (e) {
      developer.log('❌ Fetch plans failed: $e. Using Mock Data.', name: 'SubscriptionRepository');
      // Mock Data
      await Future.delayed(const Duration(seconds: 1));
      return [
        {
          'code': 'basic_monthly',
          'name': 'Starter',
          'price': 499,
          'description': 'Perfect for new artists. Includes 10 leads/month.',
        },
        {
          'code': 'pro_monthly',
          'name': 'Pro',
          'price': 1499,
          'description': 'For established artists. Unlimited leads & Portfolio.',
        },
        {
          'code': 'elite_yearly',
          'name': 'Elite',
          'price': 9999,
          'description': 'Yearly plan with verified badge & priority support.',
        },
      ];
    }
  }

  Future<Map<String, dynamic>?> getMySubscription() async {
    try {
      developer.log('💳 Fetching my subscription', name: 'SubscriptionRepository');
      final response = await _apiClient.dio.get('/customers/me/subscription');
      return response.data['subscription'] as Map<String, dynamic>?;
    } catch (e) {
      developer.log('❌ Fetch subscription failed: $e. Using Mock Data.', name: 'SubscriptionRepository');
      await Future.delayed(const Duration(seconds: 1));
      return {
        'status': 'active',
        'plan_name': 'Starter Plan',
        'end_date': '2024-12-31',
        'max_contacts': 50,
        'remaining_contacts': 12,
      };
    }
  }

  Future<Map<String, dynamic>> initiateSubscription(String planCode) async {
    try {
      developer.log('💳 Initiating subscription for plan: $planCode', name: 'SubscriptionRepository');
      final response = await _apiClient.dio.post(
        '/customers/me/subscription/initiate',
        data: {'plan_code': planCode},
      );
      return response.data['order'] as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Initiate subscription failed: $e', name: 'SubscriptionRepository');
      rethrow;
    }
  }

  Future<void> confirmPayment({
    required String orderId,
    required String paymentId,
    required String signature,
  }) async {
    try {
      developer.log('💳 Confirming payment: $orderId', name: 'SubscriptionRepository');
      await _apiClient.dio.post(
        '/customers/me/subscription/confirm-payment',
        data: {
          'order_id': orderId,
          'payment_id': paymentId,
          'signature': signature,
        },
      );
    } catch (e) {
      developer.log('❌ Confirm payment failed: $e', name: 'SubscriptionRepository');
      rethrow;
    }
  }

  Future<Map<String, dynamic>> upgradeSubscription(String planCode) async {
    try {
      developer.log('💳 Upgrading subscription to: $planCode', name: 'SubscriptionRepository');
      final response = await _apiClient.dio.post(
        '/customers/me/subscription/upgrade',
        data: {'plan_code': planCode},
      );
      return response.data['order'] as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Upgrade subscription failed: $e', name: 'SubscriptionRepository');
      rethrow;
    }
  }

  Future<void> pauseSubscription(String reason) async {
    try {
      developer.log('⏸️ Pausing subscription', name: 'SubscriptionRepository');
      await _apiClient.dio.post(
        '/customers/me/subscription/pause',
        data: {'reason': reason},
      );
    } catch (e) {
      developer.log('❌ Pause subscription failed: $e', name: 'SubscriptionRepository');
      rethrow;
    }
  }

  Future<void> resumeSubscription() async {
    try {
      developer.log('▶️ Resuming subscription', name: 'SubscriptionRepository');
      await _apiClient.dio.post('/customers/me/subscription/resume');
    } catch (e) {
      developer.log('❌ Resume subscription failed: $e', name: 'SubscriptionRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> fetchHistory() async {
    try {
      developer.log('📜 Fetching subscription history', name: 'SubscriptionRepository');
      final response = await _apiClient.dio.get('/customers/me/subscription/history');
      return response.data['history'] as List<dynamic>;
    } catch (e) {
      developer.log('❌ Fetch history failed: $e', name: 'SubscriptionRepository');
      rethrow;
    }
  }
}
