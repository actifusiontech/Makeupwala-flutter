import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:app/features/wallet/bloc/wallet_bloc.dart';
import 'package:app/features/wallet/bloc/wallet_event.dart';
import 'package:app/features/wallet/bloc/wallet_state.dart';
import 'package:app/features/wallet/data/wallet_repository.dart';

class MockWalletRepository extends Mock implements WalletRepository {}

void main() {
  group('WalletBloc', () {
    late WalletRepository walletRepository;
    late WalletBloc walletBloc;

    setUp(() {
      walletRepository = MockWalletRepository();
      walletBloc = WalletBloc(repository: walletRepository);
    });

    tearDown(() {
      walletBloc.close();
    });

    test('initial state is WalletState.initial', () {
      expect(walletBloc.state, const WalletState.initial());
    });

    group('FetchWalletDetails', () {
      final mockBalance = {'balance': 1000.0, 'currency': 'INR', 'bank_account_linked': true};
      final mockTransactions = [
        {'id': '1', 'amount': 100, 'type': 'credit'}
      ];

      blocTest<WalletBloc, WalletState>(
        'emits [loading, loaded] when fetch succeeds',
        build: () {
          when(() => walletRepository.getBalance()).thenAnswer((_) async => mockBalance);
          when(() => walletRepository.getTransactions()).thenAnswer((_) async => mockTransactions);
          return walletBloc;
        },
        act: (bloc) => bloc.add(const WalletEvent.fetchWalletDetails()),
        expect: () => [
          const WalletState.loading(),
          WalletState.loaded(
            balance: 1000.0,
            currency: 'INR',
            transactions: mockTransactions,
            isBankLinked: true,
          ),
        ],
      );

      blocTest<WalletBloc, WalletState>(
        'emits [loading, error] when fetch fails',
        build: () {
          when(() => walletRepository.getBalance()).thenThrow(Exception('API Error'));
          return walletBloc;
        },
        act: (bloc) => bloc.add(const WalletEvent.fetchWalletDetails()),
        expect: () => [
          const WalletState.loading(),
          const WalletState.error('Exception: API Error'),
        ],
      );
    });

    group('RequestWithdrawal', () {
      blocTest<WalletBloc, WalletState>(
        'emits [loading, withdrawalSuccess] when successful',
        build: () {
          when(() => walletRepository.requestWithdrawal(
            amount: any(named: 'amount'),
            bankAccount: any(named: 'bankAccount'),
            ifsc: any(named: 'ifsc'),
            accountHolder: any(named: 'accountHolder'),
          )).thenAnswer((_) async {});
          
          // It will also fetch details after success, so we need to stub that too
           when(() => walletRepository.getBalance()).thenAnswer((_) async => {'balance': 900.0, 'currency': 'INR'});
           when(() => walletRepository.getTransactions()).thenAnswer((_) async => []);

          return walletBloc;
        },
        act: (bloc) => bloc.add(const WalletEvent.requestWithdrawal(
          amount: 100,
          bankAccount: '123',
          ifsc: 'IFSC',
          accountHolder: 'Holder',
        )),
        expect: () => [
          const WalletState.loading(),
          const WalletState.withdrawalSuccess(),
          const WalletState.loading(), // The subsequent fetch triggers another loading
          const WalletState.loaded(balance: 900.0, currency: 'INR', transactions: [], isBankLinked: false),
        ],
      );
    });
  });
}
