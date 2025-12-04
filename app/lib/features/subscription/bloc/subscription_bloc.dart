import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/subscription_repository.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final SubscriptionRepository _repository;
  late Razorpay _razorpay;

  SubscriptionBloc({SubscriptionRepository? repository})
      : _repository = repository ?? SubscriptionRepository(),
        super(const SubscriptionState.initial()) {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    on<SubscriptionEvent>((event, emit) async {
      await event.when(
        fetchPlans: () => _onFetchPlans(emit),
        fetchMySubscription: () => _onFetchMySubscription(emit),
        subscribe: (planCode) => _onSubscribe(planCode, emit),
        paymentSuccess: (paymentId, orderId, signature) => _onPaymentSuccess(paymentId, orderId, signature, emit),
        paymentFailure: (message) => _onPaymentFailure(message, emit),
      );
    });
  }

  // ... (close method)

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    add(SubscriptionEvent.paymentSuccess(
      paymentId: response.paymentId!,
      orderId: response.orderId!,
      signature: response.signature!,
    ));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    add(SubscriptionEvent.paymentFailure(message: response.message ?? 'Payment Failed'));
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet
  }

  // ... (fetchPlans and fetchMySubscription)

  Future<void> _onPaymentSuccess(String paymentId, String orderId, String signature, Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      await _repository.confirmPayment(
        orderId: orderId,
        paymentId: paymentId,
        signature: signature,
      );
      emit(const SubscriptionState.success(message: 'Subscription activated successfully!'));
      add(const SubscriptionEvent.fetchMySubscription());
    } catch (e) {
      emit(SubscriptionState.error(message: 'Confirmation failed: ${e.toString()}'));
    }
  }

  Future<void> _onPaymentFailure(String message, Emitter<SubscriptionState> emit) async {
    emit(SubscriptionState.error(message: 'Payment failed: $message'));
  }

  // ... (fetchPlans and fetchMySubscription remain same)

  Future<void> _onFetchPlans(Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      final plans = await _repository.getPlans();
      emit(SubscriptionState.plansLoaded(plans: plans));
    } catch (e) {
      emit(SubscriptionState.error(message: e.toString()));
    }
  }

  Future<void> _onFetchMySubscription(Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      final subscription = await _repository.getMySubscription();
      emit(SubscriptionState.subscriptionLoaded(subscription: subscription));
    } catch (e) {
      emit(SubscriptionState.error(message: e.toString()));
    }
  }

  Future<void> _onSubscribe(String planCode, Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionState.loading());
    try {
      // 1. Initiate
      final order = await _repository.initiateSubscription(planCode);
      final orderId = order['id'];
      final amount = order['amount']; // in paise
      final key = order['razorpay_key'] ?? 'rzp_test_RC1eeHCEBsa8fc'; // Use provided key

      // 2. Open Razorpay
      var options = {
        'key': key,
        'amount': amount,
        'name': 'MakeupWala',
        'description': 'Subscription Plan',
        'order_id': orderId,
        'prefill': {
          'contact': '9876543210', // Should come from user profile
          'email': 'test@example.com' // Should come from user profile
        }
      };

      // We need to handle the async nature of Razorpay callbacks.
      // Since we can't await _razorpay.open, we'll set a temporary state or just wait for the callback event.
      // But to keep this Bloc simple, we will just open it. The actual state update will happen
      // when we process the success/failure events.
      // To do this properly, we should add `PaymentSuccess` and `PaymentFailure` events to the Bloc.
      
      _razorpay.open(options);
      
      // We stay in loading state or go back to loaded? 
      // Ideally stay loading or show a "Processing" state.
    } catch (e) {
      emit(SubscriptionState.error(message: 'Initiation failed: ${e.toString()}'));
    }
  }
}
