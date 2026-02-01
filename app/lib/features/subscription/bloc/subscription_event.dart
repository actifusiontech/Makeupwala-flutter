part of 'subscription_bloc.dart';

@freezed
abstract class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.fetchPlans() = _FetchPlans;
  const factory SubscriptionEvent.fetchMySubscription() = _FetchMySubscription;
  const factory SubscriptionEvent.subscribe({required String planCode}) = _Subscribe;
  const factory SubscriptionEvent.paymentSuccess({required String paymentId, required String orderId, required String signature}) = _PaymentSuccess;
  const factory SubscriptionEvent.paymentFailure({required String message}) = _PaymentFailure;
  const factory SubscriptionEvent.upgradeSubscription({required String planCode}) = _UpgradeSubscription;
  const factory SubscriptionEvent.pauseSubscription({required String reason}) = _PauseSubscription;
  const factory SubscriptionEvent.resumeSubscription() = _ResumeSubscription;
  const factory SubscriptionEvent.fetchHistory() = _FetchHistory;
}
