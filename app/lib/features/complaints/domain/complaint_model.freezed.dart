// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComplaintModel _$ComplaintModelFromJson(Map<String, dynamic> json) {
  return _ComplaintModel.fromJson(json);
}

/// @nodoc
mixin _$ComplaintModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_id')
  String get bookingId => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // PENDING, RESOLVED, REJECTED
  @JsonKey(name: 'admin_comment')
  String? get adminComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplaintModelCopyWith<ComplaintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintModelCopyWith<$Res> {
  factory $ComplaintModelCopyWith(
          ComplaintModel value, $Res Function(ComplaintModel) then) =
      _$ComplaintModelCopyWithImpl<$Res, ComplaintModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'booking_id') String bookingId,
      String subject,
      String description,
      String status,
      @JsonKey(name: 'admin_comment') String? adminComment,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$ComplaintModelCopyWithImpl<$Res, $Val extends ComplaintModel>
    implements $ComplaintModelCopyWith<$Res> {
  _$ComplaintModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? subject = null,
    Object? description = null,
    Object? status = null,
    Object? adminComment = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      adminComment: freezed == adminComment
          ? _value.adminComment
          : adminComment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintModelImplCopyWith<$Res>
    implements $ComplaintModelCopyWith<$Res> {
  factory _$$ComplaintModelImplCopyWith(_$ComplaintModelImpl value,
          $Res Function(_$ComplaintModelImpl) then) =
      __$$ComplaintModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'booking_id') String bookingId,
      String subject,
      String description,
      String status,
      @JsonKey(name: 'admin_comment') String? adminComment,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$ComplaintModelImplCopyWithImpl<$Res>
    extends _$ComplaintModelCopyWithImpl<$Res, _$ComplaintModelImpl>
    implements _$$ComplaintModelImplCopyWith<$Res> {
  __$$ComplaintModelImplCopyWithImpl(
      _$ComplaintModelImpl _value, $Res Function(_$ComplaintModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookingId = null,
    Object? subject = null,
    Object? description = null,
    Object? status = null,
    Object? adminComment = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$ComplaintModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      adminComment: freezed == adminComment
          ? _value.adminComment
          : adminComment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplaintModelImpl implements _ComplaintModel {
  const _$ComplaintModelImpl(
      {required this.id,
      @JsonKey(name: 'booking_id') required this.bookingId,
      required this.subject,
      required this.description,
      this.status = 'PENDING',
      @JsonKey(name: 'admin_comment') this.adminComment,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$ComplaintModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'booking_id')
  final String bookingId;
  @override
  final String subject;
  @override
  final String description;
  @override
  @JsonKey()
  final String status;
// PENDING, RESOLVED, REJECTED
  @override
  @JsonKey(name: 'admin_comment')
  final String? adminComment;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'ComplaintModel(id: $id, bookingId: $bookingId, subject: $subject, description: $description, status: $status, adminComment: $adminComment, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.adminComment, adminComment) ||
                other.adminComment == adminComment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bookingId, subject,
      description, status, adminComment, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintModelImplCopyWith<_$ComplaintModelImpl> get copyWith =>
      __$$ComplaintModelImplCopyWithImpl<_$ComplaintModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintModelImplToJson(
      this,
    );
  }
}

abstract class _ComplaintModel implements ComplaintModel {
  const factory _ComplaintModel(
          {required final String id,
          @JsonKey(name: 'booking_id') required final String bookingId,
          required final String subject,
          required final String description,
          final String status,
          @JsonKey(name: 'admin_comment') final String? adminComment,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$ComplaintModelImpl;

  factory _ComplaintModel.fromJson(Map<String, dynamic> json) =
      _$ComplaintModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'booking_id')
  String get bookingId;
  @override
  String get subject;
  @override
  String get description;
  @override
  String get status;
  @override // PENDING, RESOLVED, REJECTED
  @JsonKey(name: 'admin_comment')
  String? get adminComment;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ComplaintModelImplCopyWith<_$ComplaintModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
