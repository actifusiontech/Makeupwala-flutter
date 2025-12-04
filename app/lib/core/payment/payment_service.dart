import 'dart:async';
import 'dart:math';

class PaymentService {
  Future<bool> processPayment({
    required String amount,
    required String currency,
  }) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // Simulate random success/failure (90% success)
    final random = Random();
    final isSuccess = random.nextInt(10) != 0;

    if (!isSuccess) {
      throw Exception('Payment declined by bank');
    }

    return true;
  }
}
