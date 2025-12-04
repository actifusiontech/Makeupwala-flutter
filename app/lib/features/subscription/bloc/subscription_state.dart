part of 'subscription_bloc.dart';

@freezed
abstract class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial() = _Initial;
  const factory SubscriptionState.loading() = _Loading;
  const factory SubscriptionState.plansLoaded({required List<dynamic> plans}) = _PlansLoaded;
  const factory SubscriptionState.subscriptionLoaded({required Map<String, dynamic>? subscription}) = _SubscriptionLoaded;
  const factory SubscriptionState.success({required String message}) = _Success;
  const factory SubscriptionState.error({required String message}) = _Error;
}
