part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginWithEmail({
    required String email,
    required String password,
  }) = _LoginWithEmail;
  const factory AuthEvent.requestEmailOtp(String email) = _RequestEmailOtp;
  const factory AuthEvent.requestPhoneOtp(String phone) = _RequestPhoneOtp;
  const factory AuthEvent.verifyContactOtp({
    String? phone,
    String? email,
    required String otp,
    @Default(false) bool isRegistration,
    @Default(false) bool isProfileUpdate,
  }) = _VerifyContactOtp;
  const factory AuthEvent.login(String phoneNumber) = _Login;
  const factory AuthEvent.verifyOtp(String phoneNumber, String otp) = _VerifyOtp;
  const factory AuthEvent.selectRole(String role) = _SelectRole;
  const factory AuthEvent.switchPersona(String role) = _SwitchPersona;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.socialLogin(String provider) = _SocialLogin;
  const factory AuthEvent.register({
    required String fullName,
    required String email,
    required String phone,
    required String password,
    required String role,
  }) = _Register;
  const factory AuthEvent.verifyRegistrationOtp({
    required String phone,
    required String otp,
  }) = _VerifyRegistrationOtp;
  const factory AuthEvent.forgotPassword(String email) = _ForgotPassword;
  const factory AuthEvent.resetPassword({
    required String token,
    required String tempPassword,
    required String newPassword,
  }) = _ResetPassword;
}
