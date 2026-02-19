import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/wallet_repository.dart';
import 'wallet_event.dart';
import 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  final WalletRepository _repository;

  WalletBloc({required WalletRepository repository})
      : _repository = repository,
        super(const WalletState.initial()) {
    on<WalletEvent>((event, emit) async {
      await event.when(
        fetchWalletDetails: () => _onFetchWalletDetails(emit),
        requestWithdrawal: (amount, bankAccount, ifsc, accountHolder) =>
            _onRequestWithdrawal(emit, amount, bankAccount, ifsc, accountHolder),
        linkBank: (email, phone, legalBusinessName, businessType, contactName, pan,
                bankAccountNumber, bankIfsc, bankAccountName) =>
            _onLinkBank(emit, email, phone, legalBusinessName, businessType,
                contactName, pan, bankAccountNumber, bankIfsc, bankAccountName),
        initiateTopUp: (amount) => _onInitiateTopUp(emit, amount),
        processTopUp: (orderId, paymentId, signature) =>
            _onProcessTopUp(emit, orderId, paymentId, signature),
      );
    });
  }

  Future<void> _onFetchWalletDetails(Emitter<WalletState> emit) async {
    emit(const WalletState.loading());
    try {
      final balanceData = await _repository.getBalance();
      final transactions = await _repository.getTransactions();
      
      // We assume the user search endpoint or profile endpoint would tell us if bank is linked
      // For now, we'll check it from the balance data if it contains that info, 
      // or we can fetch profile separately.
      // Assuming backend returns bank_account_linked in balance response for convenience.
      final isBankLinked = balanceData['bank_account_linked'] ?? false;

      emit(WalletState.loaded(
        balance: (balanceData['balance'] as num).toDouble(),
        currency: balanceData['currency'] ?? 'INR',
        transactions: transactions,
        isBankLinked: isBankLinked,
      ));
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onRequestWithdrawal(
    Emitter<WalletState> emit,
    double amount,
    String bankAccount,
    String ifsc,
    String accountHolder,
  ) async {
    emit(const WalletState.loading());
    try {
      await _repository.requestWithdrawal(
        amount: amount,
        bankAccount: bankAccount,
        ifsc: ifsc,
        accountHolder: accountHolder,
      );
      emit(const WalletState.withdrawalSuccess());
      add(const WalletEvent.fetchWalletDetails());
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onLinkBank(
    Emitter<WalletState> emit,
    String email,
    String phone,
    String legalBusinessName,
    String businessType,
    String contactName,
    String pan,
    String bankAccountNumber,
    String bankIfsc,
    String bankAccountName,
  ) async {
    emit(const WalletState.loading());
    try {
      await _repository.linkBankAccount(
        email: email,
        phone: phone,
        legalBusinessName: legalBusinessName,
        businessType: businessType,
        contactName: contactName,
        pan: pan,
        bankAccountNumber: bankAccountNumber,
        bankIfsc: bankIfsc,
        bankAccountName: bankAccountName,
      );
      emit(const WalletState.bankLinkSuccess());
      add(const WalletEvent.fetchWalletDetails());
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onInitiateTopUp(
    Emitter<WalletState> emit,
    double amount,
  ) async {
    // Keep showing current state or loading? Ideally Loading.
    // However, if we emit loading, we lose the 'loaded' state data in UI if not careful.
    // But since this is a blocking action (payment), full screen loading or overlay is fine.
    emit(const WalletState.loading());
    try {
      final data = await _repository.initiateTopUp(amount: amount);
      emit(WalletState.paymentRequired(
        orderId: data['order_id'],
        amount: amount,
        keyId: data['key_id'],
      ));
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }

  Future<void> _onProcessTopUp(
    Emitter<WalletState> emit,
    String orderId,
    String paymentId,
    String signature,
  ) async {
    emit(const WalletState.loading());
    try {
      // Verify payment on backend
      // We need a verify method in repository.
      // Assuming verifyPayment exists or we initiate a generic verify
      // Actually WalletRepository needs a verify method.
      await _repository.verifyTopUp(
        orderId: orderId,
        paymentId: paymentId,
        signature: signature,
      );
      emit(const WalletState.topUpSuccess());
      add(const WalletEvent.fetchWalletDetails());
    } catch (e) {
      emit(WalletState.error(e.toString()));
    }
  }
}
