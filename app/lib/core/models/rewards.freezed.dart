// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoyaltyBalance _$LoyaltyBalanceFromJson(Map<String, dynamic> json) {
  return _LoyaltyBalance.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyBalance {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  int get tier => throw _privateConstructorUsedError;
  int get totalBookings => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoyaltyBalanceCopyWith<LoyaltyBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyBalanceCopyWith<$Res> {
  factory $LoyaltyBalanceCopyWith(
          LoyaltyBalance value, $Res Function(LoyaltyBalance) then) =
      _$LoyaltyBalanceCopyWithImpl<$Res, LoyaltyBalance>;
  @useResult
  $Res call(
      {String id,
      String userId,
      int balance,
      int tier,
      int totalBookings,
      DateTime? updatedAt});
}

/// @nodoc
class _$LoyaltyBalanceCopyWithImpl<$Res, $Val extends LoyaltyBalance>
    implements $LoyaltyBalanceCopyWith<$Res> {
  _$LoyaltyBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? balance = null,
    Object? tier = null,
    Object? totalBookings = null,
    Object? updatedAt = freezed,
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
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as int,
      totalBookings: null == totalBookings
          ? _value.totalBookings
          : totalBookings // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoyaltyBalanceImplCopyWith<$Res>
    implements $LoyaltyBalanceCopyWith<$Res> {
  factory _$$LoyaltyBalanceImplCopyWith(_$LoyaltyBalanceImpl value,
          $Res Function(_$LoyaltyBalanceImpl) then) =
      __$$LoyaltyBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      int balance,
      int tier,
      int totalBookings,
      DateTime? updatedAt});
}

/// @nodoc
class __$$LoyaltyBalanceImplCopyWithImpl<$Res>
    extends _$LoyaltyBalanceCopyWithImpl<$Res, _$LoyaltyBalanceImpl>
    implements _$$LoyaltyBalanceImplCopyWith<$Res> {
  __$$LoyaltyBalanceImplCopyWithImpl(
      _$LoyaltyBalanceImpl _value, $Res Function(_$LoyaltyBalanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? balance = null,
    Object? tier = null,
    Object? totalBookings = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LoyaltyBalanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      tier: null == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as int,
      totalBookings: null == totalBookings
          ? _value.totalBookings
          : totalBookings // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoyaltyBalanceImpl implements _LoyaltyBalance {
  const _$LoyaltyBalanceImpl(
      {required this.id,
      required this.userId,
      required this.balance,
      this.tier = 1,
      this.totalBookings = 0,
      this.updatedAt});

  factory _$LoyaltyBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoyaltyBalanceImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final int balance;
  @override
  @JsonKey()
  final int tier;
  @override
  @JsonKey()
  final int totalBookings;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LoyaltyBalance(id: $id, userId: $userId, balance: $balance, tier: $tier, totalBookings: $totalBookings, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyBalanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.totalBookings, totalBookings) ||
                other.totalBookings == totalBookings) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, balance, tier, totalBookings, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyBalanceImplCopyWith<_$LoyaltyBalanceImpl> get copyWith =>
      __$$LoyaltyBalanceImplCopyWithImpl<_$LoyaltyBalanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyBalanceImplToJson(
      this,
    );
  }
}

abstract class _LoyaltyBalance implements LoyaltyBalance {
  const factory _LoyaltyBalance(
      {required final String id,
      required final String userId,
      required final int balance,
      final int tier,
      final int totalBookings,
      final DateTime? updatedAt}) = _$LoyaltyBalanceImpl;

  factory _LoyaltyBalance.fromJson(Map<String, dynamic> json) =
      _$LoyaltyBalanceImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get balance;
  @override
  int get tier;
  @override
  int get totalBookings;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LoyaltyBalanceImplCopyWith<_$LoyaltyBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoyaltyTransaction _$LoyaltyTransactionFromJson(Map<String, dynamic> json) {
  return _LoyaltyTransaction.fromJson(json);
}

/// @nodoc
mixin _$LoyaltyTransaction {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String get transactionType =>
      throw _privateConstructorUsedError; // 'EARN', 'REDEEM'
  String get entityType =>
      throw _privateConstructorUsedError; // 'BOOKING', 'REFERRAL'
  String? get entityId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoyaltyTransactionCopyWith<LoyaltyTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoyaltyTransactionCopyWith<$Res> {
  factory $LoyaltyTransactionCopyWith(
          LoyaltyTransaction value, $Res Function(LoyaltyTransaction) then) =
      _$LoyaltyTransactionCopyWithImpl<$Res, LoyaltyTransaction>;
  @useResult
  $Res call(
      {String id,
      String userId,
      int points,
      String transactionType,
      String entityType,
      String? entityId,
      String description,
      DateTime createdAt});
}

/// @nodoc
class _$LoyaltyTransactionCopyWithImpl<$Res, $Val extends LoyaltyTransaction>
    implements $LoyaltyTransactionCopyWith<$Res> {
  _$LoyaltyTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? points = null,
    Object? transactionType = null,
    Object? entityType = null,
    Object? entityId = freezed,
    Object? description = null,
    Object? createdAt = null,
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
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoyaltyTransactionImplCopyWith<$Res>
    implements $LoyaltyTransactionCopyWith<$Res> {
  factory _$$LoyaltyTransactionImplCopyWith(_$LoyaltyTransactionImpl value,
          $Res Function(_$LoyaltyTransactionImpl) then) =
      __$$LoyaltyTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      int points,
      String transactionType,
      String entityType,
      String? entityId,
      String description,
      DateTime createdAt});
}

/// @nodoc
class __$$LoyaltyTransactionImplCopyWithImpl<$Res>
    extends _$LoyaltyTransactionCopyWithImpl<$Res, _$LoyaltyTransactionImpl>
    implements _$$LoyaltyTransactionImplCopyWith<$Res> {
  __$$LoyaltyTransactionImplCopyWithImpl(_$LoyaltyTransactionImpl _value,
      $Res Function(_$LoyaltyTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? points = null,
    Object? transactionType = null,
    Object? entityType = null,
    Object? entityId = freezed,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_$LoyaltyTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoyaltyTransactionImpl implements _LoyaltyTransaction {
  const _$LoyaltyTransactionImpl(
      {required this.id,
      required this.userId,
      required this.points,
      required this.transactionType,
      required this.entityType,
      this.entityId,
      required this.description,
      required this.createdAt});

  factory _$LoyaltyTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoyaltyTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final int points;
  @override
  final String transactionType;
// 'EARN', 'REDEEM'
  @override
  final String entityType;
// 'BOOKING', 'REFERRAL'
  @override
  final String? entityId;
  @override
  final String description;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'LoyaltyTransaction(id: $id, userId: $userId, points: $points, transactionType: $transactionType, entityType: $entityType, entityId: $entityId, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoyaltyTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, points,
      transactionType, entityType, entityId, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoyaltyTransactionImplCopyWith<_$LoyaltyTransactionImpl> get copyWith =>
      __$$LoyaltyTransactionImplCopyWithImpl<_$LoyaltyTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoyaltyTransactionImplToJson(
      this,
    );
  }
}

abstract class _LoyaltyTransaction implements LoyaltyTransaction {
  const factory _LoyaltyTransaction(
      {required final String id,
      required final String userId,
      required final int points,
      required final String transactionType,
      required final String entityType,
      final String? entityId,
      required final String description,
      required final DateTime createdAt}) = _$LoyaltyTransactionImpl;

  factory _LoyaltyTransaction.fromJson(Map<String, dynamic> json) =
      _$LoyaltyTransactionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  int get points;
  @override
  String get transactionType;
  @override // 'EARN', 'REDEEM'
  String get entityType;
  @override // 'BOOKING', 'REFERRAL'
  String? get entityId;
  @override
  String get description;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$LoyaltyTransactionImplCopyWith<_$LoyaltyTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralRecord _$ReferralRecordFromJson(Map<String, dynamic> json) {
  return _ReferralRecord.fromJson(json);
}

/// @nodoc
mixin _$ReferralRecord {
  String get id => throw _privateConstructorUsedError;
  String get referrerId => throw _privateConstructorUsedError;
  String get referredUserId => throw _privateConstructorUsedError;
  String? get referredUserName =>
      throw _privateConstructorUsedError; // Added for UI display
  String get status =>
      throw _privateConstructorUsedError; // 'PENDING', 'COMPLETED'
  int get rewardPoints => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralRecordCopyWith<ReferralRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralRecordCopyWith<$Res> {
  factory $ReferralRecordCopyWith(
          ReferralRecord value, $Res Function(ReferralRecord) then) =
      _$ReferralRecordCopyWithImpl<$Res, ReferralRecord>;
  @useResult
  $Res call(
      {String id,
      String referrerId,
      String referredUserId,
      String? referredUserName,
      String status,
      int rewardPoints,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ReferralRecordCopyWithImpl<$Res, $Val extends ReferralRecord>
    implements $ReferralRecordCopyWith<$Res> {
  _$ReferralRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referrerId = null,
    Object? referredUserId = null,
    Object? referredUserName = freezed,
    Object? status = null,
    Object? rewardPoints = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referrerId: null == referrerId
          ? _value.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: null == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserName: freezed == referredUserName
          ? _value.referredUserName
          : referredUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPoints: null == rewardPoints
          ? _value.rewardPoints
          : rewardPoints // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralRecordImplCopyWith<$Res>
    implements $ReferralRecordCopyWith<$Res> {
  factory _$$ReferralRecordImplCopyWith(_$ReferralRecordImpl value,
          $Res Function(_$ReferralRecordImpl) then) =
      __$$ReferralRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String referrerId,
      String referredUserId,
      String? referredUserName,
      String status,
      int rewardPoints,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$ReferralRecordImplCopyWithImpl<$Res>
    extends _$ReferralRecordCopyWithImpl<$Res, _$ReferralRecordImpl>
    implements _$$ReferralRecordImplCopyWith<$Res> {
  __$$ReferralRecordImplCopyWithImpl(
      _$ReferralRecordImpl _value, $Res Function(_$ReferralRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referrerId = null,
    Object? referredUserId = null,
    Object? referredUserName = freezed,
    Object? status = null,
    Object? rewardPoints = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReferralRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      referrerId: null == referrerId
          ? _value.referrerId
          : referrerId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserId: null == referredUserId
          ? _value.referredUserId
          : referredUserId // ignore: cast_nullable_to_non_nullable
              as String,
      referredUserName: freezed == referredUserName
          ? _value.referredUserName
          : referredUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rewardPoints: null == rewardPoints
          ? _value.rewardPoints
          : rewardPoints // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralRecordImpl implements _ReferralRecord {
  const _$ReferralRecordImpl(
      {required this.id,
      required this.referrerId,
      required this.referredUserId,
      this.referredUserName,
      required this.status,
      required this.rewardPoints,
      required this.createdAt,
      this.updatedAt});

  factory _$ReferralRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralRecordImplFromJson(json);

  @override
  final String id;
  @override
  final String referrerId;
  @override
  final String referredUserId;
  @override
  final String? referredUserName;
// Added for UI display
  @override
  final String status;
// 'PENDING', 'COMPLETED'
  @override
  final int rewardPoints;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ReferralRecord(id: $id, referrerId: $referrerId, referredUserId: $referredUserId, referredUserName: $referredUserName, status: $status, rewardPoints: $rewardPoints, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referrerId, referrerId) ||
                other.referrerId == referrerId) &&
            (identical(other.referredUserId, referredUserId) ||
                other.referredUserId == referredUserId) &&
            (identical(other.referredUserName, referredUserName) ||
                other.referredUserName == referredUserName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rewardPoints, rewardPoints) ||
                other.rewardPoints == rewardPoints) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, referrerId, referredUserId,
      referredUserName, status, rewardPoints, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralRecordImplCopyWith<_$ReferralRecordImpl> get copyWith =>
      __$$ReferralRecordImplCopyWithImpl<_$ReferralRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralRecordImplToJson(
      this,
    );
  }
}

abstract class _ReferralRecord implements ReferralRecord {
  const factory _ReferralRecord(
      {required final String id,
      required final String referrerId,
      required final String referredUserId,
      final String? referredUserName,
      required final String status,
      required final int rewardPoints,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$ReferralRecordImpl;

  factory _ReferralRecord.fromJson(Map<String, dynamic> json) =
      _$ReferralRecordImpl.fromJson;

  @override
  String get id;
  @override
  String get referrerId;
  @override
  String get referredUserId;
  @override
  String? get referredUserName;
  @override // Added for UI display
  String get status;
  @override // 'PENDING', 'COMPLETED'
  int get rewardPoints;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReferralRecordImplCopyWith<_$ReferralRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardEntry _$LeaderboardEntryFromJson(Map<String, dynamic> json) {
  return _LeaderboardEntry.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardEntry {
  int get rank => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get referralCount => throw _privateConstructorUsedError;
  int get pointsEarned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardEntryCopyWith<LeaderboardEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntryCopyWith<$Res> {
  factory $LeaderboardEntryCopyWith(
          LeaderboardEntry value, $Res Function(LeaderboardEntry) then) =
      _$LeaderboardEntryCopyWithImpl<$Res, LeaderboardEntry>;
  @useResult
  $Res call(
      {int rank,
      String userId,
      String userName,
      int referralCount,
      int pointsEarned});
}

/// @nodoc
class _$LeaderboardEntryCopyWithImpl<$Res, $Val extends LeaderboardEntry>
    implements $LeaderboardEntryCopyWith<$Res> {
  _$LeaderboardEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? userId = null,
    Object? userName = null,
    Object? referralCount = null,
    Object? pointsEarned = null,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      referralCount: null == referralCount
          ? _value.referralCount
          : referralCount // ignore: cast_nullable_to_non_nullable
              as int,
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardEntryImplCopyWith<$Res>
    implements $LeaderboardEntryCopyWith<$Res> {
  factory _$$LeaderboardEntryImplCopyWith(_$LeaderboardEntryImpl value,
          $Res Function(_$LeaderboardEntryImpl) then) =
      __$$LeaderboardEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int rank,
      String userId,
      String userName,
      int referralCount,
      int pointsEarned});
}

/// @nodoc
class __$$LeaderboardEntryImplCopyWithImpl<$Res>
    extends _$LeaderboardEntryCopyWithImpl<$Res, _$LeaderboardEntryImpl>
    implements _$$LeaderboardEntryImplCopyWith<$Res> {
  __$$LeaderboardEntryImplCopyWithImpl(_$LeaderboardEntryImpl _value,
      $Res Function(_$LeaderboardEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? userId = null,
    Object? userName = null,
    Object? referralCount = null,
    Object? pointsEarned = null,
  }) {
    return _then(_$LeaderboardEntryImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      referralCount: null == referralCount
          ? _value.referralCount
          : referralCount // ignore: cast_nullable_to_non_nullable
              as int,
      pointsEarned: null == pointsEarned
          ? _value.pointsEarned
          : pointsEarned // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardEntryImpl implements _LeaderboardEntry {
  const _$LeaderboardEntryImpl(
      {required this.rank,
      required this.userId,
      required this.userName,
      required this.referralCount,
      required this.pointsEarned});

  factory _$LeaderboardEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardEntryImplFromJson(json);

  @override
  final int rank;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final int referralCount;
  @override
  final int pointsEarned;

  @override
  String toString() {
    return 'LeaderboardEntry(rank: $rank, userId: $userId, userName: $userName, referralCount: $referralCount, pointsEarned: $pointsEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntryImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.referralCount, referralCount) ||
                other.referralCount == referralCount) &&
            (identical(other.pointsEarned, pointsEarned) ||
                other.pointsEarned == pointsEarned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rank, userId, userName, referralCount, pointsEarned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntryImplCopyWith<_$LeaderboardEntryImpl> get copyWith =>
      __$$LeaderboardEntryImplCopyWithImpl<_$LeaderboardEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardEntryImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardEntry implements LeaderboardEntry {
  const factory _LeaderboardEntry(
      {required final int rank,
      required final String userId,
      required final String userName,
      required final int referralCount,
      required final int pointsEarned}) = _$LeaderboardEntryImpl;

  factory _LeaderboardEntry.fromJson(Map<String, dynamic> json) =
      _$LeaderboardEntryImpl.fromJson;

  @override
  int get rank;
  @override
  String get userId;
  @override
  String get userName;
  @override
  int get referralCount;
  @override
  int get pointsEarned;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardEntryImplCopyWith<_$LeaderboardEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
