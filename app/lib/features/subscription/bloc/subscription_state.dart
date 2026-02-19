part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default([]) List<dynamic> plans,
    Map<String, dynamic>? subscription,
    @Default([]) List<dynamic> history,
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,
  }) = _SubscriptionState;
}
