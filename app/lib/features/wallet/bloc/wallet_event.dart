import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.freezed.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.fetchWalletDetails() = _FetchWalletDetails;

  const factory WalletEvent.requestWithdrawal({required double amount}) =
      _RequestWithdrawal;

  const factory WalletEvent.initiateTopUp({required double amount}) =
      _InitiateTopUp;

  const factory WalletEvent.processTopUp({
    required String orderId,
    required String paymentId,
    required String signature,
  }) = _ProcessTopUp;
}
