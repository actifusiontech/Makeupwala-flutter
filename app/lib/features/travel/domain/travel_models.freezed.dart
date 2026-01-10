// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TravelProfile {

 String get id; String get artistId; bool get isWillingToTravel; int? get maxTravelDistanceKm; String? get passportNumber; DateTime? get passportExpiry; String? get passportCountry; List<String>? get visaCountries; String get travelRateMultiplier; String get accommodationPreference; String? get dietaryRestrictions; String? get emergencyContactName; String? get emergencyContactPhone; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of TravelProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TravelProfileCopyWith<TravelProfile> get copyWith => _$TravelProfileCopyWithImpl<TravelProfile>(this as TravelProfile, _$identity);

  /// Serializes this TravelProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TravelProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.isWillingToTravel, isWillingToTravel) || other.isWillingToTravel == isWillingToTravel)&&(identical(other.maxTravelDistanceKm, maxTravelDistanceKm) || other.maxTravelDistanceKm == maxTravelDistanceKm)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber)&&(identical(other.passportExpiry, passportExpiry) || other.passportExpiry == passportExpiry)&&(identical(other.passportCountry, passportCountry) || other.passportCountry == passportCountry)&&const DeepCollectionEquality().equals(other.visaCountries, visaCountries)&&(identical(other.travelRateMultiplier, travelRateMultiplier) || other.travelRateMultiplier == travelRateMultiplier)&&(identical(other.accommodationPreference, accommodationPreference) || other.accommodationPreference == accommodationPreference)&&(identical(other.dietaryRestrictions, dietaryRestrictions) || other.dietaryRestrictions == dietaryRestrictions)&&(identical(other.emergencyContactName, emergencyContactName) || other.emergencyContactName == emergencyContactName)&&(identical(other.emergencyContactPhone, emergencyContactPhone) || other.emergencyContactPhone == emergencyContactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,artistId,isWillingToTravel,maxTravelDistanceKm,passportNumber,passportExpiry,passportCountry,const DeepCollectionEquality().hash(visaCountries),travelRateMultiplier,accommodationPreference,dietaryRestrictions,emergencyContactName,emergencyContactPhone,createdAt,updatedAt);

@override
String toString() {
  return 'TravelProfile(id: $id, artistId: $artistId, isWillingToTravel: $isWillingToTravel, maxTravelDistanceKm: $maxTravelDistanceKm, passportNumber: $passportNumber, passportExpiry: $passportExpiry, passportCountry: $passportCountry, visaCountries: $visaCountries, travelRateMultiplier: $travelRateMultiplier, accommodationPreference: $accommodationPreference, dietaryRestrictions: $dietaryRestrictions, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TravelProfileCopyWith<$Res>  {
  factory $TravelProfileCopyWith(TravelProfile value, $Res Function(TravelProfile) _then) = _$TravelProfileCopyWithImpl;
@useResult
$Res call({
 String id, String artistId, bool isWillingToTravel, int? maxTravelDistanceKm, String? passportNumber, DateTime? passportExpiry, String? passportCountry, List<String>? visaCountries, String travelRateMultiplier, String accommodationPreference, String? dietaryRestrictions, String? emergencyContactName, String? emergencyContactPhone, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$TravelProfileCopyWithImpl<$Res>
    implements $TravelProfileCopyWith<$Res> {
  _$TravelProfileCopyWithImpl(this._self, this._then);

  final TravelProfile _self;
  final $Res Function(TravelProfile) _then;

/// Create a copy of TravelProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? artistId = null,Object? isWillingToTravel = null,Object? maxTravelDistanceKm = freezed,Object? passportNumber = freezed,Object? passportExpiry = freezed,Object? passportCountry = freezed,Object? visaCountries = freezed,Object? travelRateMultiplier = null,Object? accommodationPreference = null,Object? dietaryRestrictions = freezed,Object? emergencyContactName = freezed,Object? emergencyContactPhone = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,isWillingToTravel: null == isWillingToTravel ? _self.isWillingToTravel : isWillingToTravel // ignore: cast_nullable_to_non_nullable
as bool,maxTravelDistanceKm: freezed == maxTravelDistanceKm ? _self.maxTravelDistanceKm : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
as int?,passportNumber: freezed == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String?,passportExpiry: freezed == passportExpiry ? _self.passportExpiry : passportExpiry // ignore: cast_nullable_to_non_nullable
as DateTime?,passportCountry: freezed == passportCountry ? _self.passportCountry : passportCountry // ignore: cast_nullable_to_non_nullable
as String?,visaCountries: freezed == visaCountries ? _self.visaCountries : visaCountries // ignore: cast_nullable_to_non_nullable
as List<String>?,travelRateMultiplier: null == travelRateMultiplier ? _self.travelRateMultiplier : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
as String,accommodationPreference: null == accommodationPreference ? _self.accommodationPreference : accommodationPreference // ignore: cast_nullable_to_non_nullable
as String,dietaryRestrictions: freezed == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactName: freezed == emergencyContactName ? _self.emergencyContactName : emergencyContactName // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactPhone: freezed == emergencyContactPhone ? _self.emergencyContactPhone : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TravelProfile].
extension TravelProfilePatterns on TravelProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TravelProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TravelProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TravelProfile value)  $default,){
final _that = this;
switch (_that) {
case _TravelProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TravelProfile value)?  $default,){
final _that = this;
switch (_that) {
case _TravelProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String artistId,  bool isWillingToTravel,  int? maxTravelDistanceKm,  String? passportNumber,  DateTime? passportExpiry,  String? passportCountry,  List<String>? visaCountries,  String travelRateMultiplier,  String accommodationPreference,  String? dietaryRestrictions,  String? emergencyContactName,  String? emergencyContactPhone,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TravelProfile() when $default != null:
return $default(_that.id,_that.artistId,_that.isWillingToTravel,_that.maxTravelDistanceKm,_that.passportNumber,_that.passportExpiry,_that.passportCountry,_that.visaCountries,_that.travelRateMultiplier,_that.accommodationPreference,_that.dietaryRestrictions,_that.emergencyContactName,_that.emergencyContactPhone,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String artistId,  bool isWillingToTravel,  int? maxTravelDistanceKm,  String? passportNumber,  DateTime? passportExpiry,  String? passportCountry,  List<String>? visaCountries,  String travelRateMultiplier,  String accommodationPreference,  String? dietaryRestrictions,  String? emergencyContactName,  String? emergencyContactPhone,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TravelProfile():
return $default(_that.id,_that.artistId,_that.isWillingToTravel,_that.maxTravelDistanceKm,_that.passportNumber,_that.passportExpiry,_that.passportCountry,_that.visaCountries,_that.travelRateMultiplier,_that.accommodationPreference,_that.dietaryRestrictions,_that.emergencyContactName,_that.emergencyContactPhone,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String artistId,  bool isWillingToTravel,  int? maxTravelDistanceKm,  String? passportNumber,  DateTime? passportExpiry,  String? passportCountry,  List<String>? visaCountries,  String travelRateMultiplier,  String accommodationPreference,  String? dietaryRestrictions,  String? emergencyContactName,  String? emergencyContactPhone,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TravelProfile() when $default != null:
return $default(_that.id,_that.artistId,_that.isWillingToTravel,_that.maxTravelDistanceKm,_that.passportNumber,_that.passportExpiry,_that.passportCountry,_that.visaCountries,_that.travelRateMultiplier,_that.accommodationPreference,_that.dietaryRestrictions,_that.emergencyContactName,_that.emergencyContactPhone,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TravelProfile implements TravelProfile {
  const _TravelProfile({required this.id, required this.artistId, required this.isWillingToTravel, this.maxTravelDistanceKm, this.passportNumber, this.passportExpiry, this.passportCountry, final  List<String>? visaCountries, required this.travelRateMultiplier, required this.accommodationPreference, this.dietaryRestrictions, this.emergencyContactName, this.emergencyContactPhone, required this.createdAt, required this.updatedAt}): _visaCountries = visaCountries;
  factory _TravelProfile.fromJson(Map<String, dynamic> json) => _$TravelProfileFromJson(json);

@override final  String id;
@override final  String artistId;
@override final  bool isWillingToTravel;
@override final  int? maxTravelDistanceKm;
@override final  String? passportNumber;
@override final  DateTime? passportExpiry;
@override final  String? passportCountry;
 final  List<String>? _visaCountries;
@override List<String>? get visaCountries {
  final value = _visaCountries;
  if (value == null) return null;
  if (_visaCountries is EqualUnmodifiableListView) return _visaCountries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String travelRateMultiplier;
@override final  String accommodationPreference;
@override final  String? dietaryRestrictions;
@override final  String? emergencyContactName;
@override final  String? emergencyContactPhone;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of TravelProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TravelProfileCopyWith<_TravelProfile> get copyWith => __$TravelProfileCopyWithImpl<_TravelProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TravelProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TravelProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.artistId, artistId) || other.artistId == artistId)&&(identical(other.isWillingToTravel, isWillingToTravel) || other.isWillingToTravel == isWillingToTravel)&&(identical(other.maxTravelDistanceKm, maxTravelDistanceKm) || other.maxTravelDistanceKm == maxTravelDistanceKm)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber)&&(identical(other.passportExpiry, passportExpiry) || other.passportExpiry == passportExpiry)&&(identical(other.passportCountry, passportCountry) || other.passportCountry == passportCountry)&&const DeepCollectionEquality().equals(other._visaCountries, _visaCountries)&&(identical(other.travelRateMultiplier, travelRateMultiplier) || other.travelRateMultiplier == travelRateMultiplier)&&(identical(other.accommodationPreference, accommodationPreference) || other.accommodationPreference == accommodationPreference)&&(identical(other.dietaryRestrictions, dietaryRestrictions) || other.dietaryRestrictions == dietaryRestrictions)&&(identical(other.emergencyContactName, emergencyContactName) || other.emergencyContactName == emergencyContactName)&&(identical(other.emergencyContactPhone, emergencyContactPhone) || other.emergencyContactPhone == emergencyContactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,artistId,isWillingToTravel,maxTravelDistanceKm,passportNumber,passportExpiry,passportCountry,const DeepCollectionEquality().hash(_visaCountries),travelRateMultiplier,accommodationPreference,dietaryRestrictions,emergencyContactName,emergencyContactPhone,createdAt,updatedAt);

@override
String toString() {
  return 'TravelProfile(id: $id, artistId: $artistId, isWillingToTravel: $isWillingToTravel, maxTravelDistanceKm: $maxTravelDistanceKm, passportNumber: $passportNumber, passportExpiry: $passportExpiry, passportCountry: $passportCountry, visaCountries: $visaCountries, travelRateMultiplier: $travelRateMultiplier, accommodationPreference: $accommodationPreference, dietaryRestrictions: $dietaryRestrictions, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TravelProfileCopyWith<$Res> implements $TravelProfileCopyWith<$Res> {
  factory _$TravelProfileCopyWith(_TravelProfile value, $Res Function(_TravelProfile) _then) = __$TravelProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String artistId, bool isWillingToTravel, int? maxTravelDistanceKm, String? passportNumber, DateTime? passportExpiry, String? passportCountry, List<String>? visaCountries, String travelRateMultiplier, String accommodationPreference, String? dietaryRestrictions, String? emergencyContactName, String? emergencyContactPhone, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$TravelProfileCopyWithImpl<$Res>
    implements _$TravelProfileCopyWith<$Res> {
  __$TravelProfileCopyWithImpl(this._self, this._then);

  final _TravelProfile _self;
  final $Res Function(_TravelProfile) _then;

/// Create a copy of TravelProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? artistId = null,Object? isWillingToTravel = null,Object? maxTravelDistanceKm = freezed,Object? passportNumber = freezed,Object? passportExpiry = freezed,Object? passportCountry = freezed,Object? visaCountries = freezed,Object? travelRateMultiplier = null,Object? accommodationPreference = null,Object? dietaryRestrictions = freezed,Object? emergencyContactName = freezed,Object? emergencyContactPhone = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_TravelProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,artistId: null == artistId ? _self.artistId : artistId // ignore: cast_nullable_to_non_nullable
as String,isWillingToTravel: null == isWillingToTravel ? _self.isWillingToTravel : isWillingToTravel // ignore: cast_nullable_to_non_nullable
as bool,maxTravelDistanceKm: freezed == maxTravelDistanceKm ? _self.maxTravelDistanceKm : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
as int?,passportNumber: freezed == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String?,passportExpiry: freezed == passportExpiry ? _self.passportExpiry : passportExpiry // ignore: cast_nullable_to_non_nullable
as DateTime?,passportCountry: freezed == passportCountry ? _self.passportCountry : passportCountry // ignore: cast_nullable_to_non_nullable
as String?,visaCountries: freezed == visaCountries ? _self._visaCountries : visaCountries // ignore: cast_nullable_to_non_nullable
as List<String>?,travelRateMultiplier: null == travelRateMultiplier ? _self.travelRateMultiplier : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
as String,accommodationPreference: null == accommodationPreference ? _self.accommodationPreference : accommodationPreference // ignore: cast_nullable_to_non_nullable
as String,dietaryRestrictions: freezed == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactName: freezed == emergencyContactName ? _self.emergencyContactName : emergencyContactName // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactPhone: freezed == emergencyContactPhone ? _self.emergencyContactPhone : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$CreateTravelProfileRequest {

 bool get isWillingToTravel; int? get maxTravelDistanceKm; String? get passportNumber; DateTime? get passportExpiry; String? get passportCountry; List<String>? get visaCountries; String? get travelRateMultiplier; String? get accommodationPreference; String? get dietaryRestrictions; String? get emergencyContactName; String? get emergencyContactPhone;
/// Create a copy of CreateTravelProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTravelProfileRequestCopyWith<CreateTravelProfileRequest> get copyWith => _$CreateTravelProfileRequestCopyWithImpl<CreateTravelProfileRequest>(this as CreateTravelProfileRequest, _$identity);

  /// Serializes this CreateTravelProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTravelProfileRequest&&(identical(other.isWillingToTravel, isWillingToTravel) || other.isWillingToTravel == isWillingToTravel)&&(identical(other.maxTravelDistanceKm, maxTravelDistanceKm) || other.maxTravelDistanceKm == maxTravelDistanceKm)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber)&&(identical(other.passportExpiry, passportExpiry) || other.passportExpiry == passportExpiry)&&(identical(other.passportCountry, passportCountry) || other.passportCountry == passportCountry)&&const DeepCollectionEquality().equals(other.visaCountries, visaCountries)&&(identical(other.travelRateMultiplier, travelRateMultiplier) || other.travelRateMultiplier == travelRateMultiplier)&&(identical(other.accommodationPreference, accommodationPreference) || other.accommodationPreference == accommodationPreference)&&(identical(other.dietaryRestrictions, dietaryRestrictions) || other.dietaryRestrictions == dietaryRestrictions)&&(identical(other.emergencyContactName, emergencyContactName) || other.emergencyContactName == emergencyContactName)&&(identical(other.emergencyContactPhone, emergencyContactPhone) || other.emergencyContactPhone == emergencyContactPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isWillingToTravel,maxTravelDistanceKm,passportNumber,passportExpiry,passportCountry,const DeepCollectionEquality().hash(visaCountries),travelRateMultiplier,accommodationPreference,dietaryRestrictions,emergencyContactName,emergencyContactPhone);

@override
String toString() {
  return 'CreateTravelProfileRequest(isWillingToTravel: $isWillingToTravel, maxTravelDistanceKm: $maxTravelDistanceKm, passportNumber: $passportNumber, passportExpiry: $passportExpiry, passportCountry: $passportCountry, visaCountries: $visaCountries, travelRateMultiplier: $travelRateMultiplier, accommodationPreference: $accommodationPreference, dietaryRestrictions: $dietaryRestrictions, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone)';
}


}

/// @nodoc
abstract mixin class $CreateTravelProfileRequestCopyWith<$Res>  {
  factory $CreateTravelProfileRequestCopyWith(CreateTravelProfileRequest value, $Res Function(CreateTravelProfileRequest) _then) = _$CreateTravelProfileRequestCopyWithImpl;
@useResult
$Res call({
 bool isWillingToTravel, int? maxTravelDistanceKm, String? passportNumber, DateTime? passportExpiry, String? passportCountry, List<String>? visaCountries, String? travelRateMultiplier, String? accommodationPreference, String? dietaryRestrictions, String? emergencyContactName, String? emergencyContactPhone
});




}
/// @nodoc
class _$CreateTravelProfileRequestCopyWithImpl<$Res>
    implements $CreateTravelProfileRequestCopyWith<$Res> {
  _$CreateTravelProfileRequestCopyWithImpl(this._self, this._then);

  final CreateTravelProfileRequest _self;
  final $Res Function(CreateTravelProfileRequest) _then;

/// Create a copy of CreateTravelProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isWillingToTravel = null,Object? maxTravelDistanceKm = freezed,Object? passportNumber = freezed,Object? passportExpiry = freezed,Object? passportCountry = freezed,Object? visaCountries = freezed,Object? travelRateMultiplier = freezed,Object? accommodationPreference = freezed,Object? dietaryRestrictions = freezed,Object? emergencyContactName = freezed,Object? emergencyContactPhone = freezed,}) {
  return _then(_self.copyWith(
isWillingToTravel: null == isWillingToTravel ? _self.isWillingToTravel : isWillingToTravel // ignore: cast_nullable_to_non_nullable
as bool,maxTravelDistanceKm: freezed == maxTravelDistanceKm ? _self.maxTravelDistanceKm : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
as int?,passportNumber: freezed == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String?,passportExpiry: freezed == passportExpiry ? _self.passportExpiry : passportExpiry // ignore: cast_nullable_to_non_nullable
as DateTime?,passportCountry: freezed == passportCountry ? _self.passportCountry : passportCountry // ignore: cast_nullable_to_non_nullable
as String?,visaCountries: freezed == visaCountries ? _self.visaCountries : visaCountries // ignore: cast_nullable_to_non_nullable
as List<String>?,travelRateMultiplier: freezed == travelRateMultiplier ? _self.travelRateMultiplier : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
as String?,accommodationPreference: freezed == accommodationPreference ? _self.accommodationPreference : accommodationPreference // ignore: cast_nullable_to_non_nullable
as String?,dietaryRestrictions: freezed == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactName: freezed == emergencyContactName ? _self.emergencyContactName : emergencyContactName // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactPhone: freezed == emergencyContactPhone ? _self.emergencyContactPhone : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTravelProfileRequest].
extension CreateTravelProfileRequestPatterns on CreateTravelProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTravelProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTravelProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTravelProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateTravelProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTravelProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTravelProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isWillingToTravel,  int? maxTravelDistanceKm,  String? passportNumber,  DateTime? passportExpiry,  String? passportCountry,  List<String>? visaCountries,  String? travelRateMultiplier,  String? accommodationPreference,  String? dietaryRestrictions,  String? emergencyContactName,  String? emergencyContactPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTravelProfileRequest() when $default != null:
return $default(_that.isWillingToTravel,_that.maxTravelDistanceKm,_that.passportNumber,_that.passportExpiry,_that.passportCountry,_that.visaCountries,_that.travelRateMultiplier,_that.accommodationPreference,_that.dietaryRestrictions,_that.emergencyContactName,_that.emergencyContactPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isWillingToTravel,  int? maxTravelDistanceKm,  String? passportNumber,  DateTime? passportExpiry,  String? passportCountry,  List<String>? visaCountries,  String? travelRateMultiplier,  String? accommodationPreference,  String? dietaryRestrictions,  String? emergencyContactName,  String? emergencyContactPhone)  $default,) {final _that = this;
switch (_that) {
case _CreateTravelProfileRequest():
return $default(_that.isWillingToTravel,_that.maxTravelDistanceKm,_that.passportNumber,_that.passportExpiry,_that.passportCountry,_that.visaCountries,_that.travelRateMultiplier,_that.accommodationPreference,_that.dietaryRestrictions,_that.emergencyContactName,_that.emergencyContactPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isWillingToTravel,  int? maxTravelDistanceKm,  String? passportNumber,  DateTime? passportExpiry,  String? passportCountry,  List<String>? visaCountries,  String? travelRateMultiplier,  String? accommodationPreference,  String? dietaryRestrictions,  String? emergencyContactName,  String? emergencyContactPhone)?  $default,) {final _that = this;
switch (_that) {
case _CreateTravelProfileRequest() when $default != null:
return $default(_that.isWillingToTravel,_that.maxTravelDistanceKm,_that.passportNumber,_that.passportExpiry,_that.passportCountry,_that.visaCountries,_that.travelRateMultiplier,_that.accommodationPreference,_that.dietaryRestrictions,_that.emergencyContactName,_that.emergencyContactPhone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTravelProfileRequest implements CreateTravelProfileRequest {
  const _CreateTravelProfileRequest({required this.isWillingToTravel, this.maxTravelDistanceKm, this.passportNumber, this.passportExpiry, this.passportCountry, final  List<String>? visaCountries, this.travelRateMultiplier, this.accommodationPreference, this.dietaryRestrictions, this.emergencyContactName, this.emergencyContactPhone}): _visaCountries = visaCountries;
  factory _CreateTravelProfileRequest.fromJson(Map<String, dynamic> json) => _$CreateTravelProfileRequestFromJson(json);

@override final  bool isWillingToTravel;
@override final  int? maxTravelDistanceKm;
@override final  String? passportNumber;
@override final  DateTime? passportExpiry;
@override final  String? passportCountry;
 final  List<String>? _visaCountries;
@override List<String>? get visaCountries {
  final value = _visaCountries;
  if (value == null) return null;
  if (_visaCountries is EqualUnmodifiableListView) return _visaCountries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? travelRateMultiplier;
@override final  String? accommodationPreference;
@override final  String? dietaryRestrictions;
@override final  String? emergencyContactName;
@override final  String? emergencyContactPhone;

/// Create a copy of CreateTravelProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTravelProfileRequestCopyWith<_CreateTravelProfileRequest> get copyWith => __$CreateTravelProfileRequestCopyWithImpl<_CreateTravelProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTravelProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTravelProfileRequest&&(identical(other.isWillingToTravel, isWillingToTravel) || other.isWillingToTravel == isWillingToTravel)&&(identical(other.maxTravelDistanceKm, maxTravelDistanceKm) || other.maxTravelDistanceKm == maxTravelDistanceKm)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber)&&(identical(other.passportExpiry, passportExpiry) || other.passportExpiry == passportExpiry)&&(identical(other.passportCountry, passportCountry) || other.passportCountry == passportCountry)&&const DeepCollectionEquality().equals(other._visaCountries, _visaCountries)&&(identical(other.travelRateMultiplier, travelRateMultiplier) || other.travelRateMultiplier == travelRateMultiplier)&&(identical(other.accommodationPreference, accommodationPreference) || other.accommodationPreference == accommodationPreference)&&(identical(other.dietaryRestrictions, dietaryRestrictions) || other.dietaryRestrictions == dietaryRestrictions)&&(identical(other.emergencyContactName, emergencyContactName) || other.emergencyContactName == emergencyContactName)&&(identical(other.emergencyContactPhone, emergencyContactPhone) || other.emergencyContactPhone == emergencyContactPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isWillingToTravel,maxTravelDistanceKm,passportNumber,passportExpiry,passportCountry,const DeepCollectionEquality().hash(_visaCountries),travelRateMultiplier,accommodationPreference,dietaryRestrictions,emergencyContactName,emergencyContactPhone);

@override
String toString() {
  return 'CreateTravelProfileRequest(isWillingToTravel: $isWillingToTravel, maxTravelDistanceKm: $maxTravelDistanceKm, passportNumber: $passportNumber, passportExpiry: $passportExpiry, passportCountry: $passportCountry, visaCountries: $visaCountries, travelRateMultiplier: $travelRateMultiplier, accommodationPreference: $accommodationPreference, dietaryRestrictions: $dietaryRestrictions, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone)';
}


}

/// @nodoc
abstract mixin class _$CreateTravelProfileRequestCopyWith<$Res> implements $CreateTravelProfileRequestCopyWith<$Res> {
  factory _$CreateTravelProfileRequestCopyWith(_CreateTravelProfileRequest value, $Res Function(_CreateTravelProfileRequest) _then) = __$CreateTravelProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 bool isWillingToTravel, int? maxTravelDistanceKm, String? passportNumber, DateTime? passportExpiry, String? passportCountry, List<String>? visaCountries, String? travelRateMultiplier, String? accommodationPreference, String? dietaryRestrictions, String? emergencyContactName, String? emergencyContactPhone
});




}
/// @nodoc
class __$CreateTravelProfileRequestCopyWithImpl<$Res>
    implements _$CreateTravelProfileRequestCopyWith<$Res> {
  __$CreateTravelProfileRequestCopyWithImpl(this._self, this._then);

  final _CreateTravelProfileRequest _self;
  final $Res Function(_CreateTravelProfileRequest) _then;

/// Create a copy of CreateTravelProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isWillingToTravel = null,Object? maxTravelDistanceKm = freezed,Object? passportNumber = freezed,Object? passportExpiry = freezed,Object? passportCountry = freezed,Object? visaCountries = freezed,Object? travelRateMultiplier = freezed,Object? accommodationPreference = freezed,Object? dietaryRestrictions = freezed,Object? emergencyContactName = freezed,Object? emergencyContactPhone = freezed,}) {
  return _then(_CreateTravelProfileRequest(
isWillingToTravel: null == isWillingToTravel ? _self.isWillingToTravel : isWillingToTravel // ignore: cast_nullable_to_non_nullable
as bool,maxTravelDistanceKm: freezed == maxTravelDistanceKm ? _self.maxTravelDistanceKm : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
as int?,passportNumber: freezed == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String?,passportExpiry: freezed == passportExpiry ? _self.passportExpiry : passportExpiry // ignore: cast_nullable_to_non_nullable
as DateTime?,passportCountry: freezed == passportCountry ? _self.passportCountry : passportCountry // ignore: cast_nullable_to_non_nullable
as String?,visaCountries: freezed == visaCountries ? _self._visaCountries : visaCountries // ignore: cast_nullable_to_non_nullable
as List<String>?,travelRateMultiplier: freezed == travelRateMultiplier ? _self.travelRateMultiplier : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
as String?,accommodationPreference: freezed == accommodationPreference ? _self.accommodationPreference : accommodationPreference // ignore: cast_nullable_to_non_nullable
as String?,dietaryRestrictions: freezed == dietaryRestrictions ? _self.dietaryRestrictions : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactName: freezed == emergencyContactName ? _self.emergencyContactName : emergencyContactName // ignore: cast_nullable_to_non_nullable
as String?,emergencyContactPhone: freezed == emergencyContactPhone ? _self.emergencyContactPhone : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
