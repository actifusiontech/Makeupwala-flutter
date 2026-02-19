import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_state.freezed.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loading() = _Loading;
  const factory WalletState.loaded({
    required double balance,
    required String currency,
    required List<dynamic> transactions,
    required bool isBankLinked,
  }) = _Loaded;
  const factory WalletState.error(String message) = _Error;
  const factory WalletState.withdrawalSuccess() = _WithdrawalSuccess;
  const factory WalletState.withdrawalSuccess() = _WithdrawalSuccess;
  const factory WalletState.bankLinkSuccess() = _BankLinkSuccess;
  const factory WalletState.paymentRequired({
    required String orderId,
    required double amount,
    required String keyId,
  }) = _PaymentRequired;
  const factory WalletState.topUpSuccess() = _TopUpSuccess;
}
