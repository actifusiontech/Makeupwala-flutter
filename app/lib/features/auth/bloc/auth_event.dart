part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String phoneNumber) = _Login;
  const factory AuthEvent.verifyOtp(String phoneNumber, String otp) = _VerifyOtp;
  const factory AuthEvent.selectRole(String role) = _SelectRole;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.socialLogin(String provider) = _SocialLogin;
}
