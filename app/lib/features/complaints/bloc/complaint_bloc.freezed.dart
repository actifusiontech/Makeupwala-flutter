// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ComplaintEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String bookingId, String subject, String description)
        raiseComplaint,
    required TResult Function() fetchMyComplaints,
    required TResult Function() fetchAllComplaints,
    required TResult Function(String complaintId, String adminComment)
        resolveComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult? Function()? fetchMyComplaints,
    TResult? Function()? fetchAllComplaints,
    TResult? Function(String complaintId, String adminComment)?
        resolveComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult Function()? fetchMyComplaints,
    TResult Function()? fetchAllComplaints,
    TResult Function(String complaintId, String adminComment)? resolveComplaint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RaiseComplaint value) raiseComplaint,
    required TResult Function(_FetchMyComplaints value) fetchMyComplaints,
    required TResult Function(_FetchAllComplaints value) fetchAllComplaints,
    required TResult Function(_ResolveComplaint value) resolveComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RaiseComplaint value)? raiseComplaint,
    TResult? Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult? Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult? Function(_ResolveComplaint value)? resolveComplaint,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RaiseComplaint value)? raiseComplaint,
    TResult Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult Function(_ResolveComplaint value)? resolveComplaint,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintEventCopyWith<$Res> {
  factory $ComplaintEventCopyWith(
          ComplaintEvent value, $Res Function(ComplaintEvent) then) =
      _$ComplaintEventCopyWithImpl<$Res, ComplaintEvent>;
}

/// @nodoc
class _$ComplaintEventCopyWithImpl<$Res, $Val extends ComplaintEvent>
    implements $ComplaintEventCopyWith<$Res> {
  _$ComplaintEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RaiseComplaintImplCopyWith<$Res> {
  factory _$$RaiseComplaintImplCopyWith(_$RaiseComplaintImpl value,
          $Res Function(_$RaiseComplaintImpl) then) =
      __$$RaiseComplaintImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String subject, String description});
}

/// @nodoc
class __$$RaiseComplaintImplCopyWithImpl<$Res>
    extends _$ComplaintEventCopyWithImpl<$Res, _$RaiseComplaintImpl>
    implements _$$RaiseComplaintImplCopyWith<$Res> {
  __$$RaiseComplaintImplCopyWithImpl(
      _$RaiseComplaintImpl _value, $Res Function(_$RaiseComplaintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? subject = null,
    Object? description = null,
  }) {
    return _then(_$RaiseComplaintImpl(
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RaiseComplaintImpl implements _RaiseComplaint {
  const _$RaiseComplaintImpl(
      {required this.bookingId,
      required this.subject,
      required this.description});

  @override
  final String bookingId;
  @override
  final String subject;
  @override
  final String description;

  @override
  String toString() {
    return 'ComplaintEvent.raiseComplaint(bookingId: $bookingId, subject: $subject, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaiseComplaintImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, subject, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RaiseComplaintImplCopyWith<_$RaiseComplaintImpl> get copyWith =>
      __$$RaiseComplaintImplCopyWithImpl<_$RaiseComplaintImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String bookingId, String subject, String description)
        raiseComplaint,
    required TResult Function() fetchMyComplaints,
    required TResult Function() fetchAllComplaints,
    required TResult Function(String complaintId, String adminComment)
        resolveComplaint,
  }) {
    return raiseComplaint(bookingId, subject, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult? Function()? fetchMyComplaints,
    TResult? Function()? fetchAllComplaints,
    TResult? Function(String complaintId, String adminComment)?
        resolveComplaint,
  }) {
    return raiseComplaint?.call(bookingId, subject, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult Function()? fetchMyComplaints,
    TResult Function()? fetchAllComplaints,
    TResult Function(String complaintId, String adminComment)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (raiseComplaint != null) {
      return raiseComplaint(bookingId, subject, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RaiseComplaint value) raiseComplaint,
    required TResult Function(_FetchMyComplaints value) fetchMyComplaints,
    required TResult Function(_FetchAllComplaints value) fetchAllComplaints,
    required TResult Function(_ResolveComplaint value) resolveComplaint,
  }) {
    return raiseComplaint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RaiseComplaint value)? raiseComplaint,
    TResult? Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult? Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult? Function(_ResolveComplaint value)? resolveComplaint,
  }) {
    return raiseComplaint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RaiseComplaint value)? raiseComplaint,
    TResult Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult Function(_ResolveComplaint value)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (raiseComplaint != null) {
      return raiseComplaint(this);
    }
    return orElse();
  }
}

abstract class _RaiseComplaint implements ComplaintEvent {
  const factory _RaiseComplaint(
      {required final String bookingId,
      required final String subject,
      required final String description}) = _$RaiseComplaintImpl;

  String get bookingId;
  String get subject;
  String get description;
  @JsonKey(ignore: true)
  _$$RaiseComplaintImplCopyWith<_$RaiseComplaintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMyComplaintsImplCopyWith<$Res> {
  factory _$$FetchMyComplaintsImplCopyWith(_$FetchMyComplaintsImpl value,
          $Res Function(_$FetchMyComplaintsImpl) then) =
      __$$FetchMyComplaintsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMyComplaintsImplCopyWithImpl<$Res>
    extends _$ComplaintEventCopyWithImpl<$Res, _$FetchMyComplaintsImpl>
    implements _$$FetchMyComplaintsImplCopyWith<$Res> {
  __$$FetchMyComplaintsImplCopyWithImpl(_$FetchMyComplaintsImpl _value,
      $Res Function(_$FetchMyComplaintsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMyComplaintsImpl implements _FetchMyComplaints {
  const _$FetchMyComplaintsImpl();

  @override
  String toString() {
    return 'ComplaintEvent.fetchMyComplaints()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMyComplaintsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String bookingId, String subject, String description)
        raiseComplaint,
    required TResult Function() fetchMyComplaints,
    required TResult Function() fetchAllComplaints,
    required TResult Function(String complaintId, String adminComment)
        resolveComplaint,
  }) {
    return fetchMyComplaints();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult? Function()? fetchMyComplaints,
    TResult? Function()? fetchAllComplaints,
    TResult? Function(String complaintId, String adminComment)?
        resolveComplaint,
  }) {
    return fetchMyComplaints?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult Function()? fetchMyComplaints,
    TResult Function()? fetchAllComplaints,
    TResult Function(String complaintId, String adminComment)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (fetchMyComplaints != null) {
      return fetchMyComplaints();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RaiseComplaint value) raiseComplaint,
    required TResult Function(_FetchMyComplaints value) fetchMyComplaints,
    required TResult Function(_FetchAllComplaints value) fetchAllComplaints,
    required TResult Function(_ResolveComplaint value) resolveComplaint,
  }) {
    return fetchMyComplaints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RaiseComplaint value)? raiseComplaint,
    TResult? Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult? Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult? Function(_ResolveComplaint value)? resolveComplaint,
  }) {
    return fetchMyComplaints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RaiseComplaint value)? raiseComplaint,
    TResult Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult Function(_ResolveComplaint value)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (fetchMyComplaints != null) {
      return fetchMyComplaints(this);
    }
    return orElse();
  }
}

abstract class _FetchMyComplaints implements ComplaintEvent {
  const factory _FetchMyComplaints() = _$FetchMyComplaintsImpl;
}

/// @nodoc
abstract class _$$FetchAllComplaintsImplCopyWith<$Res> {
  factory _$$FetchAllComplaintsImplCopyWith(_$FetchAllComplaintsImpl value,
          $Res Function(_$FetchAllComplaintsImpl) then) =
      __$$FetchAllComplaintsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllComplaintsImplCopyWithImpl<$Res>
    extends _$ComplaintEventCopyWithImpl<$Res, _$FetchAllComplaintsImpl>
    implements _$$FetchAllComplaintsImplCopyWith<$Res> {
  __$$FetchAllComplaintsImplCopyWithImpl(_$FetchAllComplaintsImpl _value,
      $Res Function(_$FetchAllComplaintsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllComplaintsImpl implements _FetchAllComplaints {
  const _$FetchAllComplaintsImpl();

  @override
  String toString() {
    return 'ComplaintEvent.fetchAllComplaints()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllComplaintsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String bookingId, String subject, String description)
        raiseComplaint,
    required TResult Function() fetchMyComplaints,
    required TResult Function() fetchAllComplaints,
    required TResult Function(String complaintId, String adminComment)
        resolveComplaint,
  }) {
    return fetchAllComplaints();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult? Function()? fetchMyComplaints,
    TResult? Function()? fetchAllComplaints,
    TResult? Function(String complaintId, String adminComment)?
        resolveComplaint,
  }) {
    return fetchAllComplaints?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult Function()? fetchMyComplaints,
    TResult Function()? fetchAllComplaints,
    TResult Function(String complaintId, String adminComment)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (fetchAllComplaints != null) {
      return fetchAllComplaints();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RaiseComplaint value) raiseComplaint,
    required TResult Function(_FetchMyComplaints value) fetchMyComplaints,
    required TResult Function(_FetchAllComplaints value) fetchAllComplaints,
    required TResult Function(_ResolveComplaint value) resolveComplaint,
  }) {
    return fetchAllComplaints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RaiseComplaint value)? raiseComplaint,
    TResult? Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult? Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult? Function(_ResolveComplaint value)? resolveComplaint,
  }) {
    return fetchAllComplaints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RaiseComplaint value)? raiseComplaint,
    TResult Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult Function(_ResolveComplaint value)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (fetchAllComplaints != null) {
      return fetchAllComplaints(this);
    }
    return orElse();
  }
}

abstract class _FetchAllComplaints implements ComplaintEvent {
  const factory _FetchAllComplaints() = _$FetchAllComplaintsImpl;
}

/// @nodoc
abstract class _$$ResolveComplaintImplCopyWith<$Res> {
  factory _$$ResolveComplaintImplCopyWith(_$ResolveComplaintImpl value,
          $Res Function(_$ResolveComplaintImpl) then) =
      __$$ResolveComplaintImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String complaintId, String adminComment});
}

/// @nodoc
class __$$ResolveComplaintImplCopyWithImpl<$Res>
    extends _$ComplaintEventCopyWithImpl<$Res, _$ResolveComplaintImpl>
    implements _$$ResolveComplaintImplCopyWith<$Res> {
  __$$ResolveComplaintImplCopyWithImpl(_$ResolveComplaintImpl _value,
      $Res Function(_$ResolveComplaintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaintId = null,
    Object? adminComment = null,
  }) {
    return _then(_$ResolveComplaintImpl(
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
      adminComment: null == adminComment
          ? _value.adminComment
          : adminComment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResolveComplaintImpl implements _ResolveComplaint {
  const _$ResolveComplaintImpl(
      {required this.complaintId, required this.adminComment});

  @override
  final String complaintId;
  @override
  final String adminComment;

  @override
  String toString() {
    return 'ComplaintEvent.resolveComplaint(complaintId: $complaintId, adminComment: $adminComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolveComplaintImpl &&
            (identical(other.complaintId, complaintId) ||
                other.complaintId == complaintId) &&
            (identical(other.adminComment, adminComment) ||
                other.adminComment == adminComment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, complaintId, adminComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolveComplaintImplCopyWith<_$ResolveComplaintImpl> get copyWith =>
      __$$ResolveComplaintImplCopyWithImpl<_$ResolveComplaintImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String bookingId, String subject, String description)
        raiseComplaint,
    required TResult Function() fetchMyComplaints,
    required TResult Function() fetchAllComplaints,
    required TResult Function(String complaintId, String adminComment)
        resolveComplaint,
  }) {
    return resolveComplaint(complaintId, adminComment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult? Function()? fetchMyComplaints,
    TResult? Function()? fetchAllComplaints,
    TResult? Function(String complaintId, String adminComment)?
        resolveComplaint,
  }) {
    return resolveComplaint?.call(complaintId, adminComment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, String subject, String description)?
        raiseComplaint,
    TResult Function()? fetchMyComplaints,
    TResult Function()? fetchAllComplaints,
    TResult Function(String complaintId, String adminComment)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (resolveComplaint != null) {
      return resolveComplaint(complaintId, adminComment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RaiseComplaint value) raiseComplaint,
    required TResult Function(_FetchMyComplaints value) fetchMyComplaints,
    required TResult Function(_FetchAllComplaints value) fetchAllComplaints,
    required TResult Function(_ResolveComplaint value) resolveComplaint,
  }) {
    return resolveComplaint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RaiseComplaint value)? raiseComplaint,
    TResult? Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult? Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult? Function(_ResolveComplaint value)? resolveComplaint,
  }) {
    return resolveComplaint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RaiseComplaint value)? raiseComplaint,
    TResult Function(_FetchMyComplaints value)? fetchMyComplaints,
    TResult Function(_FetchAllComplaints value)? fetchAllComplaints,
    TResult Function(_ResolveComplaint value)? resolveComplaint,
    required TResult orElse(),
  }) {
    if (resolveComplaint != null) {
      return resolveComplaint(this);
    }
    return orElse();
  }
}

abstract class _ResolveComplaint implements ComplaintEvent {
  const factory _ResolveComplaint(
      {required final String complaintId,
      required final String adminComment}) = _$ResolveComplaintImpl;

  String get complaintId;
  String get adminComment;
  @JsonKey(ignore: true)
  _$$ResolveComplaintImplCopyWith<_$ResolveComplaintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComplaintState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintStateCopyWith<$Res> {
  factory $ComplaintStateCopyWith(
          ComplaintState value, $Res Function(ComplaintState) then) =
      _$ComplaintStateCopyWithImpl<$Res, ComplaintState>;
}

/// @nodoc
class _$ComplaintStateCopyWithImpl<$Res, $Val extends ComplaintState>
    implements $ComplaintStateCopyWith<$Res> {
  _$ComplaintStateCopyWithImpl(this._value, this._then);

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
    extends _$ComplaintStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ComplaintState.initial()';
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
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
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
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ComplaintState {
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
    extends _$ComplaintStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ComplaintState.loading()';
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
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
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
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ComplaintState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
          _$SubmittingImpl value, $Res Function(_$SubmittingImpl) then) =
      __$$SubmittingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$ComplaintStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
      _$SubmittingImpl _value, $Res Function(_$SubmittingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl();

  @override
  String toString() {
    return 'ComplaintState.submitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements ComplaintState {
  const factory _Submitting() = _$SubmittingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ComplaintModel> complaints});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ComplaintStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complaints = null,
  }) {
    return _then(_$LoadedImpl(
      complaints: null == complaints
          ? _value._complaints
          : complaints // ignore: cast_nullable_to_non_nullable
              as List<ComplaintModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<ComplaintModel> complaints})
      : _complaints = complaints;

  final List<ComplaintModel> _complaints;
  @override
  List<ComplaintModel> get complaints {
    if (_complaints is EqualUnmodifiableListView) return _complaints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_complaints);
  }

  @override
  String toString() {
    return 'ComplaintState.loaded(complaints: $complaints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._complaints, _complaints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_complaints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loaded(complaints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(complaints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(complaints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ComplaintState {
  const factory _Loaded({required final List<ComplaintModel> complaints}) =
      _$LoadedImpl;

  List<ComplaintModel> get complaints;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ComplaintStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ComplaintState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ComplaintState {
  const factory _Success({required final String message}) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ComplaintStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ComplaintState.error(message: $message)';
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
    required TResult Function() submitting,
    required TResult Function(List<ComplaintModel> complaints) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<ComplaintModel> complaints)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<ComplaintModel> complaints)? loaded,
    TResult Function(String message)? success,
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
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ComplaintState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
