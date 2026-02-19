import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import '../../lib/features/auth/bloc/auth_bloc.dart';
import '../../lib/features/auth/bloc/auth_event.dart';
import '../../lib/features/auth/bloc/auth_state.dart';
import '../mocks/mock_repositories.dart';

void main() {
  group('AuthBloc', () {
    late MockAuthRepository mockAuthRepository;
    late AuthBloc authBloc;

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      authBloc = AuthBloc(repository: mockAuthRepository);
    });

    tearDown(() {
      authBloc.close();
    });

    test('initial state is AuthInitial', () {
      expect(authBloc.state, equals(const AuthState.initial()));
    });

    group('LoginRequested', () {
      const phone = '+919876543210';
      const password = 'password123';

      blocTest<AuthBloc, AuthState>(
        'emits [loading, authenticated] when login succeeds',
        build: () {
          when(mockAuthRepository.login(phone: phone, password: password))
              .thenAnswer((_) async => {'token': 'mock-token'});
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.loginRequested(
          phone: phone,
          password: password,
        )),
        expect: () => [
          const AuthState.loading(),
          const AuthState.authenticated(),
        ],
        verify: (_) {
          verify(mockAuthRepository.login(phone: phone, password: password)).called(1);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'emits [loading, unauthenticated] when login fails',
        build: () {
          when(mockAuthRepository.login(phone: phone, password: password))
              .thenThrow(Exception('Invalid credentials'));
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.loginRequested(
          phone: phone,
          password: password,
        )),
        expect: () => [
          const AuthState.loading(),
          const AuthState.unauthenticated(message: 'Login failed'),
        ],
      );
    });

    group('OtpVerificationRequested', () {
      const phone = '+919876543210';
      const otp = '123456';

      blocTest<AuthBloc, AuthState>(
        'emits [verifyingOtp, authenticated] when OTP is valid',
        build: () {
          when(mockAuthRepository.verifyOtp(phone: phone, otp: otp))
              .thenAnswer((_) async => {'token': 'mock-token'});
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.otpVerificationRequested(
          phone: phone,
          otp: otp,
        )),
        expect: () => [
          const AuthState.verifyingOtp(),
          const AuthState.authenticated(),
        ],
        verify: (_) {
          verify(mockAuthRepository.verifyOtp(phone: phone, otp: otp)).called(1);
        },
      );

      blocTest<AuthBloc, AuthState>(
        'emits [verifyingOtp, unauthenticated] when OTP is invalid',
        build: () {
          when(mockAuthRepository.verifyOtp(phone: phone, otp: otp))
              .thenThrow(Exception('Invalid OTP'));
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.otpVerificationRequested(
          phone: phone,
          otp: otp,
        )),
        expect: () => [
          const AuthState.verifyingOtp(),
          const AuthState.unauthenticated(message: 'OTP verification failed'),
        ],
      );
    });

    group('LogoutRequested', () {
      blocTest<AuthBloc, AuthState>(
        'emits [unauthenticated] when logout succeeds',
        build: () {
          when(mockAuthRepository.logout())
              .thenAnswer((_) async => {});
          return authBloc;
        },
        act: (bloc) => bloc.add(const AuthEvent.logoutRequested()),
        expect: () => [
          const AuthState.unauthenticated(message: 'Logged out successfully'),
        ],
        verify: (_) {
          verify(mockAuthRepository.logout()).called(1);
        },
      );
    });
  });
}
