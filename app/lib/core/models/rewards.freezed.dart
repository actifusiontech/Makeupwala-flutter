// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoyaltyBalance {

 String get id; String get userId; int get balance; int get tier; int get totalBookings; DateTime? get updatedAt;
/// Create a copy of LoyaltyBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoyaltyBalanceCopyWith<LoyaltyBalance> get copyWith => _$LoyaltyBalanceCopyWithImpl<LoyaltyBalance>(this as LoyaltyBalance, _$identity);

  /// Serializes this LoyaltyBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoyaltyBalance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,balance,tier,totalBookings,updatedAt);

@override
String toString() {
  return 'LoyaltyBalance(id: $id, userId: $userId, balance: $balance, tier: $tier, totalBookings: $totalBookings, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $LoyaltyBalanceCopyWith<$Res>  {
  factory $LoyaltyBalanceCopyWith(LoyaltyBalance value, $Res Function(LoyaltyBalance) _then) = _$LoyaltyBalanceCopyWithImpl;
@useResult
$Res call({
 String id, String userId, int balance, int tier, int totalBookings, DateTime? updatedAt
});




}
/// @nodoc
class _$LoyaltyBalanceCopyWithImpl<$Res>
    implements $LoyaltyBalanceCopyWith<$Res> {
  _$LoyaltyBalanceCopyWithImpl(this._self, this._then);

  final LoyaltyBalance _self;
  final $Res Function(LoyaltyBalance) _then;

/// Create a copy of LoyaltyBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? balance = null,Object? tier = null,Object? totalBookings = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as int,totalBookings: null == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoyaltyBalance].
extension LoyaltyBalancePatterns on LoyaltyBalance {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoyaltyBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoyaltyBalance() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoyaltyBalance value)  $default,){
final _that = this;
switch (_that) {
case _LoyaltyBalance():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoyaltyBalance value)?  $default,){
final _that = this;
switch (_that) {
case _LoyaltyBalance() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  int balance,  int tier,  int totalBookings,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoyaltyBalance() when $default != null:
return $default(_that.id,_that.userId,_that.balance,_that.tier,_that.totalBookings,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  int balance,  int tier,  int totalBookings,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _LoyaltyBalance():
return $default(_that.id,_that.userId,_that.balance,_that.tier,_that.totalBookings,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  int balance,  int tier,  int totalBookings,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _LoyaltyBalance() when $default != null:
return $default(_that.id,_that.userId,_that.balance,_that.tier,_that.totalBookings,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoyaltyBalance implements LoyaltyBalance {
  const _LoyaltyBalance({required this.id, required this.userId, required this.balance, this.tier = 1, this.totalBookings = 0, this.updatedAt});
  factory _LoyaltyBalance.fromJson(Map<String, dynamic> json) => _$LoyaltyBalanceFromJson(json);

@override final  String id;
@override final  String userId;
@override final  int balance;
@override@JsonKey() final  int tier;
@override@JsonKey() final  int totalBookings;
@override final  DateTime? updatedAt;

/// Create a copy of LoyaltyBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoyaltyBalanceCopyWith<_LoyaltyBalance> get copyWith => __$LoyaltyBalanceCopyWithImpl<_LoyaltyBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoyaltyBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoyaltyBalance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.tier, tier) || other.tier == tier)&&(identical(other.totalBookings, totalBookings) || other.totalBookings == totalBookings)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,balance,tier,totalBookings,updatedAt);

@override
String toString() {
  return 'LoyaltyBalance(id: $id, userId: $userId, balance: $balance, tier: $tier, totalBookings: $totalBookings, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$LoyaltyBalanceCopyWith<$Res> implements $LoyaltyBalanceCopyWith<$Res> {
  factory _$LoyaltyBalanceCopyWith(_LoyaltyBalance value, $Res Function(_LoyaltyBalance) _then) = __$LoyaltyBalanceCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, int balance, int tier, int totalBookings, DateTime? updatedAt
});




}
/// @nodoc
class __$LoyaltyBalanceCopyWithImpl<$Res>
    implements _$LoyaltyBalanceCopyWith<$Res> {
  __$LoyaltyBalanceCopyWithImpl(this._self, this._then);

  final _LoyaltyBalance _self;
  final $Res Function(_LoyaltyBalance) _then;

/// Create a copy of LoyaltyBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? balance = null,Object? tier = null,Object? totalBookings = null,Object? updatedAt = freezed,}) {
  return _then(_LoyaltyBalance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as int,tier: null == tier ? _self.tier : tier // ignore: cast_nullable_to_non_nullable
as int,totalBookings: null == totalBookings ? _self.totalBookings : totalBookings // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$LoyaltyTransaction {

 String get id; String get userId; int get points; String get transactionType;// 'EARN', 'REDEEM'
 String get entityType;// 'BOOKING', 'REFERRAL'
 String? get entityId; String get description; DateTime get createdAt;
/// Create a copy of LoyaltyTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoyaltyTransactionCopyWith<LoyaltyTransaction> get copyWith => _$LoyaltyTransactionCopyWithImpl<LoyaltyTransaction>(this as LoyaltyTransaction, _$identity);

  /// Serializes this LoyaltyTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoyaltyTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.points, points) || other.points == points)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,points,transactionType,entityType,entityId,description,createdAt);

@override
String toString() {
  return 'LoyaltyTransaction(id: $id, userId: $userId, points: $points, transactionType: $transactionType, entityType: $entityType, entityId: $entityId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $LoyaltyTransactionCopyWith<$Res>  {
  factory $LoyaltyTransactionCopyWith(LoyaltyTransaction value, $Res Function(LoyaltyTransaction) _then) = _$LoyaltyTransactionCopyWithImpl;
@useResult
$Res call({
 String id, String userId, int points, String transactionType, String entityType, String? entityId, String description, DateTime createdAt
});




}
/// @nodoc
class _$LoyaltyTransactionCopyWithImpl<$Res>
    implements $LoyaltyTransactionCopyWith<$Res> {
  _$LoyaltyTransactionCopyWithImpl(this._self, this._then);

  final LoyaltyTransaction _self;
  final $Res Function(LoyaltyTransaction) _then;

/// Create a copy of LoyaltyTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? points = null,Object? transactionType = null,Object? entityType = null,Object? entityId = freezed,Object? description = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LoyaltyTransaction].
extension LoyaltyTransactionPatterns on LoyaltyTransaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoyaltyTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoyaltyTransaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoyaltyTransaction value)  $default,){
final _that = this;
switch (_that) {
case _LoyaltyTransaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoyaltyTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _LoyaltyTransaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  int points,  String transactionType,  String entityType,  String? entityId,  String description,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoyaltyTransaction() when $default != null:
return $default(_that.id,_that.userId,_that.points,_that.transactionType,_that.entityType,_that.entityId,_that.description,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  int points,  String transactionType,  String entityType,  String? entityId,  String description,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _LoyaltyTransaction():
return $default(_that.id,_that.userId,_that.points,_that.transactionType,_that.entityType,_that.entityId,_that.description,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  int points,  String transactionType,  String entityType,  String? entityId,  String description,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LoyaltyTransaction() when $default != null:
return $default(_that.id,_that.userId,_that.points,_that.transactionType,_that.entityType,_that.entityId,_that.description,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoyaltyTransaction implements LoyaltyTransaction {
  const _LoyaltyTransaction({required this.id, required this.userId, required this.points, required this.transactionType, required this.entityType, this.entityId, required this.description, required this.createdAt});
  factory _LoyaltyTransaction.fromJson(Map<String, dynamic> json) => _$LoyaltyTransactionFromJson(json);

@override final  String id;
@override final  String userId;
@override final  int points;
@override final  String transactionType;
// 'EARN', 'REDEEM'
@override final  String entityType;
// 'BOOKING', 'REFERRAL'
@override final  String? entityId;
@override final  String description;
@override final  DateTime createdAt;

/// Create a copy of LoyaltyTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoyaltyTransactionCopyWith<_LoyaltyTransaction> get copyWith => __$LoyaltyTransactionCopyWithImpl<_LoyaltyTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoyaltyTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoyaltyTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.points, points) || other.points == points)&&(identical(other.transactionType, transactionType) || other.transactionType == transactionType)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,points,transactionType,entityType,entityId,description,createdAt);

@override
String toString() {
  return 'LoyaltyTransaction(id: $id, userId: $userId, points: $points, transactionType: $transactionType, entityType: $entityType, entityId: $entityId, description: $description, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LoyaltyTransactionCopyWith<$Res> implements $LoyaltyTransactionCopyWith<$Res> {
  factory _$LoyaltyTransactionCopyWith(_LoyaltyTransaction value, $Res Function(_LoyaltyTransaction) _then) = __$LoyaltyTransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, int points, String transactionType, String entityType, String? entityId, String description, DateTime createdAt
});




}
/// @nodoc
class __$LoyaltyTransactionCopyWithImpl<$Res>
    implements _$LoyaltyTransactionCopyWith<$Res> {
  __$LoyaltyTransactionCopyWithImpl(this._self, this._then);

  final _LoyaltyTransaction _self;
  final $Res Function(_LoyaltyTransaction) _then;

/// Create a copy of LoyaltyTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? points = null,Object? transactionType = null,Object? entityType = null,Object? entityId = freezed,Object? description = null,Object? createdAt = null,}) {
  return _then(_LoyaltyTransaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,transactionType: null == transactionType ? _self.transactionType : transactionType // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: freezed == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ReferralRecord {

 String get id; String get referrerId; String get referredUserId; String? get referredUserName;// Added for UI display
 String get status;// 'PENDING', 'COMPLETED'
 int get rewardPoints; DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of ReferralRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralRecordCopyWith<ReferralRecord> get copyWith => _$ReferralRecordCopyWithImpl<ReferralRecord>(this as ReferralRecord, _$identity);

  /// Serializes this ReferralRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.referrerId, referrerId) || other.referrerId == referrerId)&&(identical(other.referredUserId, referredUserId) || other.referredUserId == referredUserId)&&(identical(other.referredUserName, referredUserName) || other.referredUserName == referredUserName)&&(identical(other.status, status) || other.status == status)&&(identical(other.rewardPoints, rewardPoints) || other.rewardPoints == rewardPoints)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referrerId,referredUserId,referredUserName,status,rewardPoints,createdAt,updatedAt);

@override
String toString() {
  return 'ReferralRecord(id: $id, referrerId: $referrerId, referredUserId: $referredUserId, referredUserName: $referredUserName, status: $status, rewardPoints: $rewardPoints, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ReferralRecordCopyWith<$Res>  {
  factory $ReferralRecordCopyWith(ReferralRecord value, $Res Function(ReferralRecord) _then) = _$ReferralRecordCopyWithImpl;
@useResult
$Res call({
 String id, String referrerId, String referredUserId, String? referredUserName, String status, int rewardPoints, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ReferralRecordCopyWithImpl<$Res>
    implements $ReferralRecordCopyWith<$Res> {
  _$ReferralRecordCopyWithImpl(this._self, this._then);

  final ReferralRecord _self;
  final $Res Function(ReferralRecord) _then;

/// Create a copy of ReferralRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? referrerId = null,Object? referredUserId = null,Object? referredUserName = freezed,Object? status = null,Object? rewardPoints = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,referrerId: null == referrerId ? _self.referrerId : referrerId // ignore: cast_nullable_to_non_nullable
as String,referredUserId: null == referredUserId ? _self.referredUserId : referredUserId // ignore: cast_nullable_to_non_nullable
as String,referredUserName: freezed == referredUserName ? _self.referredUserName : referredUserName // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rewardPoints: null == rewardPoints ? _self.rewardPoints : rewardPoints // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralRecord].
extension ReferralRecordPatterns on ReferralRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralRecord value)  $default,){
final _that = this;
switch (_that) {
case _ReferralRecord():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralRecord value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String referrerId,  String referredUserId,  String? referredUserName,  String status,  int rewardPoints,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralRecord() when $default != null:
return $default(_that.id,_that.referrerId,_that.referredUserId,_that.referredUserName,_that.status,_that.rewardPoints,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String referrerId,  String referredUserId,  String? referredUserName,  String status,  int rewardPoints,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ReferralRecord():
return $default(_that.id,_that.referrerId,_that.referredUserId,_that.referredUserName,_that.status,_that.rewardPoints,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String referrerId,  String referredUserId,  String? referredUserName,  String status,  int rewardPoints,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ReferralRecord() when $default != null:
return $default(_that.id,_that.referrerId,_that.referredUserId,_that.referredUserName,_that.status,_that.rewardPoints,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ReferralRecord implements ReferralRecord {
  const _ReferralRecord({required this.id, required this.referrerId, required this.referredUserId, this.referredUserName, required this.status, required this.rewardPoints, required this.createdAt, this.updatedAt});
  factory _ReferralRecord.fromJson(Map<String, dynamic> json) => _$ReferralRecordFromJson(json);

@override final  String id;
@override final  String referrerId;
@override final  String referredUserId;
@override final  String? referredUserName;
// Added for UI display
@override final  String status;
// 'PENDING', 'COMPLETED'
@override final  int rewardPoints;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of ReferralRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralRecordCopyWith<_ReferralRecord> get copyWith => __$ReferralRecordCopyWithImpl<_ReferralRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferralRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.referrerId, referrerId) || other.referrerId == referrerId)&&(identical(other.referredUserId, referredUserId) || other.referredUserId == referredUserId)&&(identical(other.referredUserName, referredUserName) || other.referredUserName == referredUserName)&&(identical(other.status, status) || other.status == status)&&(identical(other.rewardPoints, rewardPoints) || other.rewardPoints == rewardPoints)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referrerId,referredUserId,referredUserName,status,rewardPoints,createdAt,updatedAt);

@override
String toString() {
  return 'ReferralRecord(id: $id, referrerId: $referrerId, referredUserId: $referredUserId, referredUserName: $referredUserName, status: $status, rewardPoints: $rewardPoints, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ReferralRecordCopyWith<$Res> implements $ReferralRecordCopyWith<$Res> {
  factory _$ReferralRecordCopyWith(_ReferralRecord value, $Res Function(_ReferralRecord) _then) = __$ReferralRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, String referrerId, String referredUserId, String? referredUserName, String status, int rewardPoints, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ReferralRecordCopyWithImpl<$Res>
    implements _$ReferralRecordCopyWith<$Res> {
  __$ReferralRecordCopyWithImpl(this._self, this._then);

  final _ReferralRecord _self;
  final $Res Function(_ReferralRecord) _then;

/// Create a copy of ReferralRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? referrerId = null,Object? referredUserId = null,Object? referredUserName = freezed,Object? status = null,Object? rewardPoints = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_ReferralRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,referrerId: null == referrerId ? _self.referrerId : referrerId // ignore: cast_nullable_to_non_nullable
as String,referredUserId: null == referredUserId ? _self.referredUserId : referredUserId // ignore: cast_nullable_to_non_nullable
as String,referredUserName: freezed == referredUserName ? _self.referredUserName : referredUserName // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,rewardPoints: null == rewardPoints ? _self.rewardPoints : rewardPoints // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
