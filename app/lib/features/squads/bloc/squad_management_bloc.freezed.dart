// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'squad_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SquadManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMySquad,
    required TResult Function(String email) inviteMember,
    required TResult Function(String memberId) removeMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMySquad,
    TResult? Function(String email)? inviteMember,
    TResult? Function(String memberId)? removeMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMySquad,
    TResult Function(String email)? inviteMember,
    TResult Function(String memberId)? removeMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMySquad value) loadMySquad,
    required TResult Function(_InviteMember value) inviteMember,
    required TResult Function(_RemoveMember value) removeMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMySquad value)? loadMySquad,
    TResult? Function(_InviteMember value)? inviteMember,
    TResult? Function(_RemoveMember value)? removeMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMySquad value)? loadMySquad,
    TResult Function(_InviteMember value)? inviteMember,
    TResult Function(_RemoveMember value)? removeMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SquadManagementEventCopyWith<$Res> {
  factory $SquadManagementEventCopyWith(SquadManagementEvent value,
          $Res Function(SquadManagementEvent) then) =
      _$SquadManagementEventCopyWithImpl<$Res, SquadManagementEvent>;
}

/// @nodoc
class _$SquadManagementEventCopyWithImpl<$Res,
        $Val extends SquadManagementEvent>
    implements $SquadManagementEventCopyWith<$Res> {
  _$SquadManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadMySquadImplCopyWith<$Res> {
  factory _$$LoadMySquadImplCopyWith(
          _$LoadMySquadImpl value, $Res Function(_$LoadMySquadImpl) then) =
      __$$LoadMySquadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMySquadImplCopyWithImpl<$Res>
    extends _$SquadManagementEventCopyWithImpl<$Res, _$LoadMySquadImpl>
    implements _$$LoadMySquadImplCopyWith<$Res> {
  __$$LoadMySquadImplCopyWithImpl(
      _$LoadMySquadImpl _value, $Res Function(_$LoadMySquadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMySquadImpl implements _LoadMySquad {
  const _$LoadMySquadImpl();

  @override
  String toString() {
    return 'SquadManagementEvent.loadMySquad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMySquadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMySquad,
    required TResult Function(String email) inviteMember,
    required TResult Function(String memberId) removeMember,
  }) {
    return loadMySquad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMySquad,
    TResult? Function(String email)? inviteMember,
    TResult? Function(String memberId)? removeMember,
  }) {
    return loadMySquad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMySquad,
    TResult Function(String email)? inviteMember,
    TResult Function(String memberId)? removeMember,
    required TResult orElse(),
  }) {
    if (loadMySquad != null) {
      return loadMySquad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMySquad value) loadMySquad,
    required TResult Function(_InviteMember value) inviteMember,
    required TResult Function(_RemoveMember value) removeMember,
  }) {
    return loadMySquad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMySquad value)? loadMySquad,
    TResult? Function(_InviteMember value)? inviteMember,
    TResult? Function(_RemoveMember value)? removeMember,
  }) {
    return loadMySquad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMySquad value)? loadMySquad,
    TResult Function(_InviteMember value)? inviteMember,
    TResult Function(_RemoveMember value)? removeMember,
    required TResult orElse(),
  }) {
    if (loadMySquad != null) {
      return loadMySquad(this);
    }
    return orElse();
  }
}

abstract class _LoadMySquad implements SquadManagementEvent {
  const factory _LoadMySquad() = _$LoadMySquadImpl;
}

/// @nodoc
abstract class _$$InviteMemberImplCopyWith<$Res> {
  factory _$$InviteMemberImplCopyWith(
          _$InviteMemberImpl value, $Res Function(_$InviteMemberImpl) then) =
      __$$InviteMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$InviteMemberImplCopyWithImpl<$Res>
    extends _$SquadManagementEventCopyWithImpl<$Res, _$InviteMemberImpl>
    implements _$$InviteMemberImplCopyWith<$Res> {
  __$$InviteMemberImplCopyWithImpl(
      _$InviteMemberImpl _value, $Res Function(_$InviteMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$InviteMemberImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InviteMemberImpl implements _InviteMember {
  const _$InviteMemberImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SquadManagementEvent.inviteMember(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteMemberImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteMemberImplCopyWith<_$InviteMemberImpl> get copyWith =>
      __$$InviteMemberImplCopyWithImpl<_$InviteMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMySquad,
    required TResult Function(String email) inviteMember,
    required TResult Function(String memberId) removeMember,
  }) {
    return inviteMember(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMySquad,
    TResult? Function(String email)? inviteMember,
    TResult? Function(String memberId)? removeMember,
  }) {
    return inviteMember?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMySquad,
    TResult Function(String email)? inviteMember,
    TResult Function(String memberId)? removeMember,
    required TResult orElse(),
  }) {
    if (inviteMember != null) {
      return inviteMember(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMySquad value) loadMySquad,
    required TResult Function(_InviteMember value) inviteMember,
    required TResult Function(_RemoveMember value) removeMember,
  }) {
    return inviteMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMySquad value)? loadMySquad,
    TResult? Function(_InviteMember value)? inviteMember,
    TResult? Function(_RemoveMember value)? removeMember,
  }) {
    return inviteMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMySquad value)? loadMySquad,
    TResult Function(_InviteMember value)? inviteMember,
    TResult Function(_RemoveMember value)? removeMember,
    required TResult orElse(),
  }) {
    if (inviteMember != null) {
      return inviteMember(this);
    }
    return orElse();
  }
}

abstract class _InviteMember implements SquadManagementEvent {
  const factory _InviteMember({required final String email}) =
      _$InviteMemberImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$InviteMemberImplCopyWith<_$InviteMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMemberImplCopyWith<$Res> {
  factory _$$RemoveMemberImplCopyWith(
          _$RemoveMemberImpl value, $Res Function(_$RemoveMemberImpl) then) =
      __$$RemoveMemberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class __$$RemoveMemberImplCopyWithImpl<$Res>
    extends _$SquadManagementEventCopyWithImpl<$Res, _$RemoveMemberImpl>
    implements _$$RemoveMemberImplCopyWith<$Res> {
  __$$RemoveMemberImplCopyWithImpl(
      _$RemoveMemberImpl _value, $Res Function(_$RemoveMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$RemoveMemberImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveMemberImpl implements _RemoveMember {
  const _$RemoveMemberImpl({required this.memberId});

  @override
  final String memberId;

  @override
  String toString() {
    return 'SquadManagementEvent.removeMember(memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMemberImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMemberImplCopyWith<_$RemoveMemberImpl> get copyWith =>
      __$$RemoveMemberImplCopyWithImpl<_$RemoveMemberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadMySquad,
    required TResult Function(String email) inviteMember,
    required TResult Function(String memberId) removeMember,
  }) {
    return removeMember(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadMySquad,
    TResult? Function(String email)? inviteMember,
    TResult? Function(String memberId)? removeMember,
  }) {
    return removeMember?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadMySquad,
    TResult Function(String email)? inviteMember,
    TResult Function(String memberId)? removeMember,
    required TResult orElse(),
  }) {
    if (removeMember != null) {
      return removeMember(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMySquad value) loadMySquad,
    required TResult Function(_InviteMember value) inviteMember,
    required TResult Function(_RemoveMember value) removeMember,
  }) {
    return removeMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMySquad value)? loadMySquad,
    TResult? Function(_InviteMember value)? inviteMember,
    TResult? Function(_RemoveMember value)? removeMember,
  }) {
    return removeMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMySquad value)? loadMySquad,
    TResult Function(_InviteMember value)? inviteMember,
    TResult Function(_RemoveMember value)? removeMember,
    required TResult orElse(),
  }) {
    if (removeMember != null) {
      return removeMember(this);
    }
    return orElse();
  }
}

abstract class _RemoveMember implements SquadManagementEvent {
  const factory _RemoveMember({required final String memberId}) =
      _$RemoveMemberImpl;

  String get memberId;
  @JsonKey(ignore: true)
  _$$RemoveMemberImplCopyWith<_$RemoveMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SquadManagementState {
  List<dynamic> get members => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SquadManagementStateCopyWith<SquadManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SquadManagementStateCopyWith<$Res> {
  factory $SquadManagementStateCopyWith(SquadManagementState value,
          $Res Function(SquadManagementState) then) =
      _$SquadManagementStateCopyWithImpl<$Res, SquadManagementState>;
  @useResult
  $Res call(
      {List<dynamic> members,
      bool isLoading,
      String? error,
      String? successMessage});
}

/// @nodoc
class _$SquadManagementStateCopyWithImpl<$Res,
        $Val extends SquadManagementState>
    implements $SquadManagementStateCopyWith<$Res> {
  _$SquadManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_value.copyWith(
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SquadManagementStateImplCopyWith<$Res>
    implements $SquadManagementStateCopyWith<$Res> {
  factory _$$SquadManagementStateImplCopyWith(_$SquadManagementStateImpl value,
          $Res Function(_$SquadManagementStateImpl) then) =
      __$$SquadManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> members,
      bool isLoading,
      String? error,
      String? successMessage});
}

/// @nodoc
class __$$SquadManagementStateImplCopyWithImpl<$Res>
    extends _$SquadManagementStateCopyWithImpl<$Res, _$SquadManagementStateImpl>
    implements _$$SquadManagementStateImplCopyWith<$Res> {
  __$$SquadManagementStateImplCopyWithImpl(_$SquadManagementStateImpl _value,
      $Res Function(_$SquadManagementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? successMessage = freezed,
  }) {
    return _then(_$SquadManagementStateImpl(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SquadManagementStateImpl implements _SquadManagementState {
  const _$SquadManagementStateImpl(
      {final List<dynamic> members = const [],
      this.isLoading = false,
      this.error,
      this.successMessage})
      : _members = members;

  final List<dynamic> _members;
  @override
  @JsonKey()
  List<dynamic> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final String? successMessage;

  @override
  String toString() {
    return 'SquadManagementState(members: $members, isLoading: $isLoading, error: $error, successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SquadManagementStateImpl &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_members),
      isLoading,
      error,
      successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SquadManagementStateImplCopyWith<_$SquadManagementStateImpl>
      get copyWith =>
          __$$SquadManagementStateImplCopyWithImpl<_$SquadManagementStateImpl>(
              this, _$identity);
}

abstract class _SquadManagementState implements SquadManagementState {
  const factory _SquadManagementState(
      {final List<dynamic> members,
      final bool isLoading,
      final String? error,
      final String? successMessage}) = _$SquadManagementStateImpl;

  @override
  List<dynamic> get members;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  String? get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$SquadManagementStateImplCopyWith<_$SquadManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
