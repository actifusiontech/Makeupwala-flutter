// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginWithEmailImplCopyWith<$Res> {
  factory _$$LoginWithEmailImplCopyWith(_$LoginWithEmailImpl value,
          $Res Function(_$LoginWithEmailImpl) then) =
      __$$LoginWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginWithEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithEmailImpl>
    implements _$$LoginWithEmailImplCopyWith<$Res> {
  __$$LoginWithEmailImplCopyWithImpl(
      _$LoginWithEmailImpl _value, $Res Function(_$LoginWithEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailImpl implements _LoginWithEmail {
  const _$LoginWithEmailImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailImplCopyWith<_$LoginWithEmailImpl> get copyWith =>
      __$$LoginWithEmailImplCopyWithImpl<_$LoginWithEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return loginWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return loginWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return loginWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmail implements AuthEvent {
  const factory _LoginWithEmail(
      {required final String email,
      required final String password}) = _$LoginWithEmailImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginWithEmailImplCopyWith<_$LoginWithEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestEmailOtpImplCopyWith<$Res> {
  factory _$$RequestEmailOtpImplCopyWith(_$RequestEmailOtpImpl value,
          $Res Function(_$RequestEmailOtpImpl) then) =
      __$$RequestEmailOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RequestEmailOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestEmailOtpImpl>
    implements _$$RequestEmailOtpImplCopyWith<$Res> {
  __$$RequestEmailOtpImplCopyWithImpl(
      _$RequestEmailOtpImpl _value, $Res Function(_$RequestEmailOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RequestEmailOtpImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestEmailOtpImpl implements _RequestEmailOtp {
  const _$RequestEmailOtpImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.requestEmailOtp(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestEmailOtpImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestEmailOtpImplCopyWith<_$RequestEmailOtpImpl> get copyWith =>
      __$$RequestEmailOtpImplCopyWithImpl<_$RequestEmailOtpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return requestEmailOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return requestEmailOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (requestEmailOtp != null) {
      return requestEmailOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return requestEmailOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return requestEmailOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (requestEmailOtp != null) {
      return requestEmailOtp(this);
    }
    return orElse();
  }
}

abstract class _RequestEmailOtp implements AuthEvent {
  const factory _RequestEmailOtp(final String email) = _$RequestEmailOtpImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$RequestEmailOtpImplCopyWith<_$RequestEmailOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestPhoneOtpImplCopyWith<$Res> {
  factory _$$RequestPhoneOtpImplCopyWith(_$RequestPhoneOtpImpl value,
          $Res Function(_$RequestPhoneOtpImpl) then) =
      __$$RequestPhoneOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$RequestPhoneOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestPhoneOtpImpl>
    implements _$$RequestPhoneOtpImplCopyWith<$Res> {
  __$$RequestPhoneOtpImplCopyWithImpl(
      _$RequestPhoneOtpImpl _value, $Res Function(_$RequestPhoneOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$RequestPhoneOtpImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestPhoneOtpImpl implements _RequestPhoneOtp {
  const _$RequestPhoneOtpImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.requestPhoneOtp(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPhoneOtpImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPhoneOtpImplCopyWith<_$RequestPhoneOtpImpl> get copyWith =>
      __$$RequestPhoneOtpImplCopyWithImpl<_$RequestPhoneOtpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return requestPhoneOtp(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return requestPhoneOtp?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (requestPhoneOtp != null) {
      return requestPhoneOtp(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return requestPhoneOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return requestPhoneOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (requestPhoneOtp != null) {
      return requestPhoneOtp(this);
    }
    return orElse();
  }
}

abstract class _RequestPhoneOtp implements AuthEvent {
  const factory _RequestPhoneOtp(final String phone) = _$RequestPhoneOtpImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$RequestPhoneOtpImplCopyWith<_$RequestPhoneOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyContactOtpImplCopyWith<$Res> {
  factory _$$VerifyContactOtpImplCopyWith(_$VerifyContactOtpImpl value,
          $Res Function(_$VerifyContactOtpImpl) then) =
      __$$VerifyContactOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? phone,
      String? email,
      String otp,
      bool isRegistration,
      bool isProfileUpdate});
}

/// @nodoc
class __$$VerifyContactOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyContactOtpImpl>
    implements _$$VerifyContactOtpImplCopyWith<$Res> {
  __$$VerifyContactOtpImplCopyWithImpl(_$VerifyContactOtpImpl _value,
      $Res Function(_$VerifyContactOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? otp = null,
    Object? isRegistration = null,
    Object? isProfileUpdate = null,
  }) {
    return _then(_$VerifyContactOtpImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistration: null == isRegistration
          ? _value.isRegistration
          : isRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      isProfileUpdate: null == isProfileUpdate
          ? _value.isProfileUpdate
          : isProfileUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerifyContactOtpImpl implements _VerifyContactOtp {
  const _$VerifyContactOtpImpl(
      {this.phone,
      this.email,
      required this.otp,
      this.isRegistration = false,
      this.isProfileUpdate = false});

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String otp;
  @override
  @JsonKey()
  final bool isRegistration;
  @override
  @JsonKey()
  final bool isProfileUpdate;

  @override
  String toString() {
    return 'AuthEvent.verifyContactOtp(phone: $phone, email: $email, otp: $otp, isRegistration: $isRegistration, isProfileUpdate: $isProfileUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyContactOtpImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.isRegistration, isRegistration) ||
                other.isRegistration == isRegistration) &&
            (identical(other.isProfileUpdate, isProfileUpdate) ||
                other.isProfileUpdate == isProfileUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phone, email, otp, isRegistration, isProfileUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyContactOtpImplCopyWith<_$VerifyContactOtpImpl> get copyWith =>
      __$$VerifyContactOtpImplCopyWithImpl<_$VerifyContactOtpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return verifyContactOtp(phone, email, otp, isRegistration, isProfileUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return verifyContactOtp?.call(
        phone, email, otp, isRegistration, isProfileUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (verifyContactOtp != null) {
      return verifyContactOtp(
          phone, email, otp, isRegistration, isProfileUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return verifyContactOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return verifyContactOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyContactOtp != null) {
      return verifyContactOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyContactOtp implements AuthEvent {
  const factory _VerifyContactOtp(
      {final String? phone,
      final String? email,
      required final String otp,
      final bool isRegistration,
      final bool isProfileUpdate}) = _$VerifyContactOtpImpl;

  String? get phone;
  String? get email;
  String get otp;
  bool get isRegistration;
  bool get isProfileUpdate;
  @JsonKey(ignore: true)
  _$$VerifyContactOtpImplCopyWith<_$VerifyContactOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$LoginImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.login(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return login(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return login?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final String phoneNumber) = _$LoginImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String otp});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
  }) {
    return _then(_$VerifyOtpImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl(this.phoneNumber, this.otp);

  @override
  final String phoneNumber;
  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(phoneNumber: $phoneNumber, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return verifyOtp(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return verifyOtp?.call(phoneNumber, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(phoneNumber, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp(final String phoneNumber, final String otp) =
      _$VerifyOtpImpl;

  String get phoneNumber;
  String get otp;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRoleImplCopyWith<$Res> {
  factory _$$SelectRoleImplCopyWith(
          _$SelectRoleImpl value, $Res Function(_$SelectRoleImpl) then) =
      __$$SelectRoleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String role});
}

/// @nodoc
class __$$SelectRoleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SelectRoleImpl>
    implements _$$SelectRoleImplCopyWith<$Res> {
  __$$SelectRoleImplCopyWithImpl(
      _$SelectRoleImpl _value, $Res Function(_$SelectRoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$SelectRoleImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectRoleImpl implements _SelectRole {
  const _$SelectRoleImpl(this.role);

  @override
  final String role;

  @override
  String toString() {
    return 'AuthEvent.selectRole(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRoleImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRoleImplCopyWith<_$SelectRoleImpl> get copyWith =>
      __$$SelectRoleImplCopyWithImpl<_$SelectRoleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return selectRole(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return selectRole?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (selectRole != null) {
      return selectRole(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return selectRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return selectRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (selectRole != null) {
      return selectRole(this);
    }
    return orElse();
  }
}

abstract class _SelectRole implements AuthEvent {
  const factory _SelectRole(final String role) = _$SelectRoleImpl;

  String get role;
  @JsonKey(ignore: true)
  _$$SelectRoleImplCopyWith<_$SelectRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthImpl implements _CheckAuth {
  const _$CheckAuthImpl();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
}

/// @nodoc
abstract class _$$SocialLoginImplCopyWith<$Res> {
  factory _$$SocialLoginImplCopyWith(
          _$SocialLoginImpl value, $Res Function(_$SocialLoginImpl) then) =
      __$$SocialLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String provider});
}

/// @nodoc
class __$$SocialLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SocialLoginImpl>
    implements _$$SocialLoginImplCopyWith<$Res> {
  __$$SocialLoginImplCopyWithImpl(
      _$SocialLoginImpl _value, $Res Function(_$SocialLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
  }) {
    return _then(_$SocialLoginImpl(
      null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SocialLoginImpl implements _SocialLogin {
  const _$SocialLoginImpl(this.provider);

  @override
  final String provider;

  @override
  String toString() {
    return 'AuthEvent.socialLogin(provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialLoginImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialLoginImplCopyWith<_$SocialLoginImpl> get copyWith =>
      __$$SocialLoginImplCopyWithImpl<_$SocialLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return socialLogin(provider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return socialLogin?.call(provider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(provider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return socialLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return socialLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (socialLogin != null) {
      return socialLogin(this);
    }
    return orElse();
  }
}

abstract class _SocialLogin implements AuthEvent {
  const factory _SocialLogin(final String provider) = _$SocialLoginImpl;

  String get provider;
  @JsonKey(ignore: true)
  _$$SocialLoginImplCopyWith<_$SocialLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fullName,
      String email,
      String phone,
      String password,
      String role});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_$RegisterImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      {required this.fullName,
      required this.email,
      required this.phone,
      required this.password,
      required this.role});

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String role;

  @override
  String toString() {
    return 'AuthEvent.register(fullName: $fullName, email: $email, phone: $phone, password: $password, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, email, phone, password, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return register(fullName, email, phone, password, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return register?.call(fullName, email, phone, password, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(fullName, email, phone, password, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String fullName,
      required final String email,
      required final String phone,
      required final String password,
      required final String role}) = _$RegisterImpl;

  String get fullName;
  String get email;
  String get phone;
  String get password;
  String get role;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyRegistrationOtpImplCopyWith<$Res> {
  factory _$$VerifyRegistrationOtpImplCopyWith(
          _$VerifyRegistrationOtpImpl value,
          $Res Function(_$VerifyRegistrationOtpImpl) then) =
      __$$VerifyRegistrationOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String otp});
}

/// @nodoc
class __$$VerifyRegistrationOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyRegistrationOtpImpl>
    implements _$$VerifyRegistrationOtpImplCopyWith<$Res> {
  __$$VerifyRegistrationOtpImplCopyWithImpl(_$VerifyRegistrationOtpImpl _value,
      $Res Function(_$VerifyRegistrationOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? otp = null,
  }) {
    return _then(_$VerifyRegistrationOtpImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyRegistrationOtpImpl implements _VerifyRegistrationOtp {
  const _$VerifyRegistrationOtpImpl({required this.phone, required this.otp});

  @override
  final String phone;
  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.verifyRegistrationOtp(phone: $phone, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyRegistrationOtpImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyRegistrationOtpImplCopyWith<_$VerifyRegistrationOtpImpl>
      get copyWith => __$$VerifyRegistrationOtpImplCopyWithImpl<
          _$VerifyRegistrationOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return verifyRegistrationOtp(phone, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return verifyRegistrationOtp?.call(phone, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (verifyRegistrationOtp != null) {
      return verifyRegistrationOtp(phone, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return verifyRegistrationOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return verifyRegistrationOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyRegistrationOtp != null) {
      return verifyRegistrationOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyRegistrationOtp implements AuthEvent {
  const factory _VerifyRegistrationOtp(
      {required final String phone,
      required final String otp}) = _$VerifyRegistrationOtpImpl;

  String get phone;
  String get otp;
  @JsonKey(ignore: true)
  _$$VerifyRegistrationOtpImplCopyWith<_$VerifyRegistrationOtpImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword(final String email) = _$ForgotPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String tempPassword, String newPassword});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? tempPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPasswordImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      tempPassword: null == tempPassword
          ? _value.tempPassword
          : tempPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl(
      {required this.token,
      required this.tempPassword,
      required this.newPassword});

  @override
  final String token;
  @override
  final String tempPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(token: $token, tempPassword: $tempPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tempPassword, tempPassword) ||
                other.tempPassword == tempPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, tempPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function(String email) requestEmailOtp,
    required TResult Function(String phone) requestPhoneOtp,
    required TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)
        verifyContactOtp,
    required TResult Function(String phoneNumber) login,
    required TResult Function(String phoneNumber, String otp) verifyOtp,
    required TResult Function(String role) selectRole,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function(String provider) socialLogin,
    required TResult Function(String fullName, String email, String phone,
            String password, String role)
        register,
    required TResult Function(String phone, String otp) verifyRegistrationOtp,
    required TResult Function(String email) forgotPassword,
    required TResult Function(
            String token, String tempPassword, String newPassword)
        resetPassword,
  }) {
    return resetPassword(token, tempPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function(String email)? requestEmailOtp,
    TResult? Function(String phone)? requestPhoneOtp,
    TResult? Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult? Function(String phoneNumber)? login,
    TResult? Function(String phoneNumber, String otp)? verifyOtp,
    TResult? Function(String role)? selectRole,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function(String provider)? socialLogin,
    TResult? Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult? Function(String phone, String otp)? verifyRegistrationOtp,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String token, String tempPassword, String newPassword)?
        resetPassword,
  }) {
    return resetPassword?.call(token, tempPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function(String email)? requestEmailOtp,
    TResult Function(String phone)? requestPhoneOtp,
    TResult Function(String? phone, String? email, String otp,
            bool isRegistration, bool isProfileUpdate)?
        verifyContactOtp,
    TResult Function(String phoneNumber)? login,
    TResult Function(String phoneNumber, String otp)? verifyOtp,
    TResult Function(String role)? selectRole,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function(String provider)? socialLogin,
    TResult Function(String fullName, String email, String phone,
            String password, String role)?
        register,
    TResult Function(String phone, String otp)? verifyRegistrationOtp,
    TResult Function(String email)? forgotPassword,
    TResult Function(String token, String tempPassword, String newPassword)?
        resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(token, tempPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_RequestEmailOtp value) requestEmailOtp,
    required TResult Function(_RequestPhoneOtp value) requestPhoneOtp,
    required TResult Function(_VerifyContactOtp value) verifyContactOtp,
    required TResult Function(_Login value) login,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_SelectRole value) selectRole,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_SocialLogin value) socialLogin,
    required TResult Function(_Register value) register,
    required TResult Function(_VerifyRegistrationOtp value)
        verifyRegistrationOtp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult? Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult? Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult? Function(_Login value)? login,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_SelectRole value)? selectRole,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_SocialLogin value)? socialLogin,
    TResult? Function(_Register value)? register,
    TResult? Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_RequestEmailOtp value)? requestEmailOtp,
    TResult Function(_RequestPhoneOtp value)? requestPhoneOtp,
    TResult Function(_VerifyContactOtp value)? verifyContactOtp,
    TResult Function(_Login value)? login,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_SelectRole value)? selectRole,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_SocialLogin value)? socialLogin,
    TResult Function(_Register value)? register,
    TResult Function(_VerifyRegistrationOtp value)? verifyRegistrationOtp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthEvent {
  const factory _ResetPassword(
      {required final String token,
      required final String tempPassword,
      required final String newPassword}) = _$ResetPasswordImpl;

  String get token;
  String get tempPassword;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$OtpSentImplCopyWith<$Res> {
  factory _$$OtpSentImplCopyWith(
          _$OtpSentImpl value, $Res Function(_$OtpSentImpl) then) =
      __$$OtpSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$OtpSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpSentImpl>
    implements _$$OtpSentImplCopyWith<$Res> {
  __$$OtpSentImplCopyWithImpl(
      _$OtpSentImpl _value, $Res Function(_$OtpSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$OtpSentImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpSentImpl implements _OtpSent {
  const _$OtpSentImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthState.otpSent(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSentImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSentImplCopyWith<_$OtpSentImpl> get copyWith =>
      __$$OtpSentImplCopyWithImpl<_$OtpSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return otpSent(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return otpSent?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class _OtpSent implements AuthState {
  const factory _OtpSent({required final String phoneNumber}) = _$OtpSentImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$OtpSentImplCopyWith<_$OtpSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneVerifiedImplCopyWith<$Res> {
  factory _$$PhoneVerifiedImplCopyWith(
          _$PhoneVerifiedImpl value, $Res Function(_$PhoneVerifiedImpl) then) =
      __$$PhoneVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneVerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PhoneVerifiedImpl>
    implements _$$PhoneVerifiedImplCopyWith<$Res> {
  __$$PhoneVerifiedImplCopyWithImpl(
      _$PhoneVerifiedImpl _value, $Res Function(_$PhoneVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$PhoneVerifiedImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneVerifiedImpl implements _PhoneVerified {
  const _$PhoneVerifiedImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthState.phoneVerified(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerifiedImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneVerifiedImplCopyWith<_$PhoneVerifiedImpl> get copyWith =>
      __$$PhoneVerifiedImplCopyWithImpl<_$PhoneVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return phoneVerified(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return phoneVerified?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (phoneVerified != null) {
      return phoneVerified(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return phoneVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return phoneVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (phoneVerified != null) {
      return phoneVerified(this);
    }
    return orElse();
  }
}

abstract class _PhoneVerified implements AuthState {
  const factory _PhoneVerified({required final String phone}) =
      _$PhoneVerifiedImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$PhoneVerifiedImplCopyWith<_$PhoneVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedsRoleSelectionImplCopyWith<$Res> {
  factory _$$NeedsRoleSelectionImplCopyWith(_$NeedsRoleSelectionImpl value,
          $Res Function(_$NeedsRoleSelectionImpl) then) =
      __$$NeedsRoleSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$NeedsRoleSelectionImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NeedsRoleSelectionImpl>
    implements _$$NeedsRoleSelectionImplCopyWith<$Res> {
  __$$NeedsRoleSelectionImplCopyWithImpl(_$NeedsRoleSelectionImpl _value,
      $Res Function(_$NeedsRoleSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$NeedsRoleSelectionImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$NeedsRoleSelectionImpl implements _NeedsRoleSelection {
  const _$NeedsRoleSelectionImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.needsRoleSelection(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsRoleSelectionImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsRoleSelectionImplCopyWith<_$NeedsRoleSelectionImpl> get copyWith =>
      __$$NeedsRoleSelectionImplCopyWithImpl<_$NeedsRoleSelectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return needsRoleSelection(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return needsRoleSelection?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (needsRoleSelection != null) {
      return needsRoleSelection(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return needsRoleSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return needsRoleSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (needsRoleSelection != null) {
      return needsRoleSelection(this);
    }
    return orElse();
  }
}

abstract class _NeedsRoleSelection implements AuthState {
  const factory _NeedsRoleSelection({required final User user}) =
      _$NeedsRoleSelectionImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$NeedsRoleSelectionImplCopyWith<_$NeedsRoleSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedsRegistrationImplCopyWith<$Res> {
  factory _$$NeedsRegistrationImplCopyWith(_$NeedsRegistrationImpl value,
          $Res Function(_$NeedsRegistrationImpl) then) =
      __$$NeedsRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$NeedsRegistrationImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NeedsRegistrationImpl>
    implements _$$NeedsRegistrationImplCopyWith<$Res> {
  __$$NeedsRegistrationImplCopyWithImpl(_$NeedsRegistrationImpl _value,
      $Res Function(_$NeedsRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$NeedsRegistrationImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NeedsRegistrationImpl implements _NeedsRegistration {
  const _$NeedsRegistrationImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthState.needsRegistration(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeedsRegistrationImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NeedsRegistrationImplCopyWith<_$NeedsRegistrationImpl> get copyWith =>
      __$$NeedsRegistrationImplCopyWithImpl<_$NeedsRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return needsRegistration(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return needsRegistration?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (needsRegistration != null) {
      return needsRegistration(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return needsRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return needsRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (needsRegistration != null) {
      return needsRegistration(this);
    }
    return orElse();
  }
}

abstract class _NeedsRegistration implements AuthState {
  const factory _NeedsRegistration({required final String phoneNumber}) =
      _$NeedsRegistrationImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$NeedsRegistrationImplCopyWith<_$NeedsRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated({required final User user}) =
      _$AuthenticatedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$PasswordResetSentImplCopyWith<$Res> {
  factory _$$PasswordResetSentImplCopyWith(_$PasswordResetSentImpl value,
          $Res Function(_$PasswordResetSentImpl) then) =
      __$$PasswordResetSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordResetSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordResetSentImpl>
    implements _$$PasswordResetSentImplCopyWith<$Res> {
  __$$PasswordResetSentImplCopyWithImpl(_$PasswordResetSentImpl _value,
      $Res Function(_$PasswordResetSentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordResetSentImpl implements _PasswordResetSent {
  const _$PasswordResetSentImpl();

  @override
  String toString() {
    return 'AuthState.passwordResetSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordResetSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return passwordResetSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return passwordResetSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (passwordResetSent != null) {
      return passwordResetSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return passwordResetSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return passwordResetSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (passwordResetSent != null) {
      return passwordResetSent(this);
    }
    return orElse();
  }
}

abstract class _PasswordResetSent implements AuthState {
  const factory _PasswordResetSent() = _$PasswordResetSentImpl;
}

/// @nodoc
abstract class _$$PasswordResetSuccessImplCopyWith<$Res> {
  factory _$$PasswordResetSuccessImplCopyWith(_$PasswordResetSuccessImpl value,
          $Res Function(_$PasswordResetSuccessImpl) then) =
      __$$PasswordResetSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordResetSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$PasswordResetSuccessImpl>
    implements _$$PasswordResetSuccessImplCopyWith<$Res> {
  __$$PasswordResetSuccessImplCopyWithImpl(_$PasswordResetSuccessImpl _value,
      $Res Function(_$PasswordResetSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordResetSuccessImpl implements _PasswordResetSuccess {
  const _$PasswordResetSuccessImpl();

  @override
  String toString() {
    return 'AuthState.passwordResetSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordResetSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return passwordResetSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return passwordResetSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (passwordResetSuccess != null) {
      return passwordResetSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return passwordResetSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return passwordResetSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (passwordResetSuccess != null) {
      return passwordResetSuccess(this);
    }
    return orElse();
  }
}

abstract class _PasswordResetSuccess implements AuthState {
  const factory _PasswordResetSuccess() = _$PasswordResetSuccessImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String phone) phoneVerified,
    required TResult Function(User user) needsRoleSelection,
    required TResult Function(String phoneNumber) needsRegistration,
    required TResult Function(User user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() passwordResetSent,
    required TResult Function() passwordResetSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String phone)? phoneVerified,
    TResult? Function(User user)? needsRoleSelection,
    TResult? Function(String phoneNumber)? needsRegistration,
    TResult? Function(User user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? passwordResetSent,
    TResult? Function()? passwordResetSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String phone)? phoneVerified,
    TResult Function(User user)? needsRoleSelection,
    TResult Function(String phoneNumber)? needsRegistration,
    TResult Function(User user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? passwordResetSent,
    TResult Function()? passwordResetSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_OtpSent value) otpSent,
    required TResult Function(_PhoneVerified value) phoneVerified,
    required TResult Function(_NeedsRoleSelection value) needsRoleSelection,
    required TResult Function(_NeedsRegistration value) needsRegistration,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PasswordResetSent value) passwordResetSent,
    required TResult Function(_PasswordResetSuccess value) passwordResetSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_OtpSent value)? otpSent,
    TResult? Function(_PhoneVerified value)? phoneVerified,
    TResult? Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult? Function(_NeedsRegistration value)? needsRegistration,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PasswordResetSent value)? passwordResetSent,
    TResult? Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_OtpSent value)? otpSent,
    TResult Function(_PhoneVerified value)? phoneVerified,
    TResult Function(_NeedsRoleSelection value)? needsRoleSelection,
    TResult Function(_NeedsRegistration value)? needsRegistration,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PasswordResetSent value)? passwordResetSent,
    TResult Function(_PasswordResetSuccess value)? passwordResetSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
