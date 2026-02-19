// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmergencyContact _$EmergencyContactFromJson(Map<String, dynamic> json) {
  return _EmergencyContact.fromJson(json);
}

/// @nodoc
mixin _$EmergencyContact {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get relation => throw _privateConstructorUsedError;
  bool get isNotificationEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmergencyContactCopyWith<EmergencyContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyContactCopyWith<$Res> {
  factory $EmergencyContactCopyWith(
          EmergencyContact value, $Res Function(EmergencyContact) then) =
      _$EmergencyContactCopyWithImpl<$Res, EmergencyContact>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String relation,
      bool isNotificationEnabled});
}

/// @nodoc
class _$EmergencyContactCopyWithImpl<$Res, $Val extends EmergencyContact>
    implements $EmergencyContactCopyWith<$Res> {
  _$EmergencyContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? relation = null,
    Object? isNotificationEnabled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
      isNotificationEnabled: null == isNotificationEnabled
          ? _value.isNotificationEnabled
          : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmergencyContactImplCopyWith<$Res>
    implements $EmergencyContactCopyWith<$Res> {
  factory _$$EmergencyContactImplCopyWith(_$EmergencyContactImpl value,
          $Res Function(_$EmergencyContactImpl) then) =
      __$$EmergencyContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      String relation,
      bool isNotificationEnabled});
}

/// @nodoc
class __$$EmergencyContactImplCopyWithImpl<$Res>
    extends _$EmergencyContactCopyWithImpl<$Res, _$EmergencyContactImpl>
    implements _$$EmergencyContactImplCopyWith<$Res> {
  __$$EmergencyContactImplCopyWithImpl(_$EmergencyContactImpl _value,
      $Res Function(_$EmergencyContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? relation = null,
    Object? isNotificationEnabled = null,
  }) {
    return _then(_$EmergencyContactImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relation: null == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
      isNotificationEnabled: null == isNotificationEnabled
          ? _value.isNotificationEnabled
          : isNotificationEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyContactImpl implements _EmergencyContact {
  const _$EmergencyContactImpl(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      required this.relation,
      this.isNotificationEnabled = true});

  factory _$EmergencyContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyContactImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String relation;
  @override
  @JsonKey()
  final bool isNotificationEnabled;

  @override
  String toString() {
    return 'EmergencyContact(id: $id, name: $name, phoneNumber: $phoneNumber, relation: $relation, isNotificationEnabled: $isNotificationEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.isNotificationEnabled, isNotificationEnabled) ||
                other.isNotificationEnabled == isNotificationEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phoneNumber, relation, isNotificationEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyContactImplCopyWith<_$EmergencyContactImpl> get copyWith =>
      __$$EmergencyContactImplCopyWithImpl<_$EmergencyContactImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyContactImplToJson(
      this,
    );
  }
}

abstract class _EmergencyContact implements EmergencyContact {
  const factory _EmergencyContact(
      {required final String id,
      required final String name,
      required final String phoneNumber,
      required final String relation,
      final bool isNotificationEnabled}) = _$EmergencyContactImpl;

  factory _EmergencyContact.fromJson(Map<String, dynamic> json) =
      _$EmergencyContactImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get relation;
  @override
  bool get isNotificationEnabled;
  @override
  @JsonKey(ignore: true)
  _$$EmergencyContactImplCopyWith<_$EmergencyContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SOSAlert _$SOSAlertFromJson(Map<String, dynamic> json) {
  return _SOSAlert.fromJson(json);
}

/// @nodoc
mixin _$SOSAlert {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int get batteryLevel => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SOSAlertCopyWith<SOSAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SOSAlertCopyWith<$Res> {
  factory $SOSAlertCopyWith(SOSAlert value, $Res Function(SOSAlert) then) =
      _$SOSAlertCopyWithImpl<$Res, SOSAlert>;
  @useResult
  $Res call(
      {String id,
      String userId,
      double lat,
      double lng,
      String? address,
      int batteryLevel,
      DateTime createdAt,
      String status});
}

/// @nodoc
class _$SOSAlertCopyWithImpl<$Res, $Val extends SOSAlert>
    implements $SOSAlertCopyWith<$Res> {
  _$SOSAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? lat = null,
    Object? lng = null,
    Object? address = freezed,
    Object? batteryLevel = null,
    Object? createdAt = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SOSAlertImplCopyWith<$Res>
    implements $SOSAlertCopyWith<$Res> {
  factory _$$SOSAlertImplCopyWith(
          _$SOSAlertImpl value, $Res Function(_$SOSAlertImpl) then) =
      __$$SOSAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      double lat,
      double lng,
      String? address,
      int batteryLevel,
      DateTime createdAt,
      String status});
}

/// @nodoc
class __$$SOSAlertImplCopyWithImpl<$Res>
    extends _$SOSAlertCopyWithImpl<$Res, _$SOSAlertImpl>
    implements _$$SOSAlertImplCopyWith<$Res> {
  __$$SOSAlertImplCopyWithImpl(
      _$SOSAlertImpl _value, $Res Function(_$SOSAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? lat = null,
    Object? lng = null,
    Object? address = freezed,
    Object? batteryLevel = null,
    Object? createdAt = null,
    Object? status = null,
  }) {
    return _then(_$SOSAlertImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      batteryLevel: null == batteryLevel
          ? _value.batteryLevel
          : batteryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SOSAlertImpl implements _SOSAlert {
  const _$SOSAlertImpl(
      {required this.id,
      required this.userId,
      required this.lat,
      required this.lng,
      this.address,
      required this.batteryLevel,
      required this.createdAt,
      this.status = 'active'});

  factory _$SOSAlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$SOSAlertImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String? address;
  @override
  final int batteryLevel;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'SOSAlert(id: $id, userId: $userId, lat: $lat, lng: $lng, address: $address, batteryLevel: $batteryLevel, createdAt: $createdAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SOSAlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.batteryLevel, batteryLevel) ||
                other.batteryLevel == batteryLevel) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, lat, lng, address,
      batteryLevel, createdAt, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SOSAlertImplCopyWith<_$SOSAlertImpl> get copyWith =>
      __$$SOSAlertImplCopyWithImpl<_$SOSAlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SOSAlertImplToJson(
      this,
    );
  }
}

abstract class _SOSAlert implements SOSAlert {
  const factory _SOSAlert(
      {required final String id,
      required final String userId,
      required final double lat,
      required final double lng,
      final String? address,
      required final int batteryLevel,
      required final DateTime createdAt,
      final String status}) = _$SOSAlertImpl;

  factory _SOSAlert.fromJson(Map<String, dynamic> json) =
      _$SOSAlertImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  double get lat;
  @override
  double get lng;
  @override
  String? get address;
  @override
  int get batteryLevel;
  @override
  DateTime get createdAt;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$SOSAlertImplCopyWith<_$SOSAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
