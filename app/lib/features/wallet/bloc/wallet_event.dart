import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.freezed.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.fetchWalletDetails() = _FetchWalletDetails;
  
  const factory WalletEvent.requestWithdrawal({
    required double amount,
    required String bankAccount,
    required String ifsc,
    required String accountHolder,
  }) = _RequestWithdrawal;

  const factory WalletEvent.linkBank({
    required String email,
    required String phone,
    required String legalBusinessName,
    required String businessType,
    required String contactName,
    required String pan,
    required String bankAccountNumber,
    required String bankIfsc,
    required String bankAccountName,
  }) = _LinkBank;

  const factory WalletEvent.initiateTopUp({
    required double amount,
  }) = _InitiateTopUp;

  const factory WalletEvent.processTopUp({
    required String orderId,
    required String paymentId,
    required String signature,
  }) = _ProcessTopUp;
}
