part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.otpSent({required String phoneNumber}) = _OtpSent;
  const factory AuthState.needsRoleSelection({required User user}) = _NeedsRoleSelection;
  const factory AuthState.needsRegistration({required String phoneNumber}) = _NeedsRegistration;
  const factory AuthState.authenticated({required User user}) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.passwordResetSent() = _PasswordResetSent;
  const factory AuthState.passwordResetSuccess() = _PasswordResetSuccess;
  const factory AuthState.error({required String message}) = _Error;
}
