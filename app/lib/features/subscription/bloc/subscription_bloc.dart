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
        super(const SubscriptionState()) {
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
        upgradeSubscription: (planCode) => _onUpgradeSubscription(planCode, emit),
        pauseSubscription: (reason) => _onPauseSubscription(reason, emit),
        resumeSubscription: () => _onResumeSubscription(emit),
        fetchHistory: () => _onFetchHistory(emit),
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
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await _repository.confirmPayment(
        orderId: orderId,
        paymentId: paymentId,
        signature: signature,
      );
      emit(state.copyWith(isLoading: false, successMessage: 'Subscription activated successfully!'));
      add(const SubscriptionEvent.fetchMySubscription());
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Confirmation failed: ${e.toString()}'));
    }
  }

  Future<void> _onPaymentFailure(String message, Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(error: 'Payment failed: $message'));
  }

  // ... (fetchPlans and fetchMySubscription remain same)

  Future<void> _onFetchPlans(Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final plans = await _repository.getPlans();
      emit(state.copyWith(isLoading: false, plans: plans));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onFetchMySubscription(Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final subscription = await _repository.getMySubscription();
      emit(state.copyWith(isLoading: false, subscription: subscription));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onSubscribe(String planCode, Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
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
      emit(state.copyWith(isLoading: false, error: 'Initiation failed: ${e.toString()}'));
    }
  }

  Future<void> _onUpgradeSubscription(String planCode, Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final order = await _repository.upgradeSubscription(planCode);
      final orderId = order['id'];
      final amount = order['amount'];
      final key = order['razorpay_key'] ?? 'rzp_test_RC1eeHCEBsa8fc';

      var options = {
        'key': key,
        'amount': amount,
        'name': 'MakeupWala',
        'description': 'Upgrade Plan',
        'order_id': orderId,
        'prefill': {
          'contact': '9876543210',
          'email': 'test@example.com'
        }
      };
      
      _razorpay.open(options);
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Upgrade failed: ${e.toString()}'));
    }
  }

  Future<void> _onPauseSubscription(String reason, Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await _repository.pauseSubscription(reason);
      emit(state.copyWith(isLoading: false, successMessage: 'Subscription paused successfully'));
      add(const SubscriptionEvent.fetchMySubscription());
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Pause failed: ${e.toString()}'));
    }
  }

  Future<void> _onResumeSubscription(Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await _repository.resumeSubscription();
      emit(state.copyWith(isLoading: false, successMessage: 'Subscription resumed successfully'));
      add(const SubscriptionEvent.fetchMySubscription());
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: 'Resume failed: ${e.toString()}'));
    }
  }

  Future<void> _onFetchHistory(Emitter<SubscriptionState> emit) async {
    try {
      final history = await _repository.fetchHistory();
      emit(state.copyWith(history: history));
    } catch (e) {
      // Don't emit error state for history load failure to avoid blocking UI
      // Just log it
      print('Failed to fetch history: $e');
    }
  }
}
