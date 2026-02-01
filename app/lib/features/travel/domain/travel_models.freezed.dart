// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TravelProfile _$TravelProfileFromJson(Map<String, dynamic> json) {
  return _TravelProfile.fromJson(json);
}

/// @nodoc
mixin _$TravelProfile {
  String get id => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  bool get isWillingToTravel => throw _privateConstructorUsedError;
  int? get maxTravelDistanceKm => throw _privateConstructorUsedError;
  String? get passportNumber => throw _privateConstructorUsedError;
  DateTime? get passportExpiry => throw _privateConstructorUsedError;
  String? get passportCountry => throw _privateConstructorUsedError;
  List<String>? get visaCountries => throw _privateConstructorUsedError;
  String get travelRateMultiplier => throw _privateConstructorUsedError;
  String get accommodationPreference => throw _privateConstructorUsedError;
  String? get dietaryRestrictions => throw _privateConstructorUsedError;
  String? get emergencyContactName => throw _privateConstructorUsedError;
  String? get emergencyContactPhone => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TravelProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TravelProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TravelProfileCopyWith<TravelProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelProfileCopyWith<$Res> {
  factory $TravelProfileCopyWith(
    TravelProfile value,
    $Res Function(TravelProfile) then,
  ) = _$TravelProfileCopyWithImpl<$Res, TravelProfile>;
  @useResult
  $Res call({
    String id,
    String artistId,
    bool isWillingToTravel,
    int? maxTravelDistanceKm,
    String? passportNumber,
    DateTime? passportExpiry,
    String? passportCountry,
    List<String>? visaCountries,
    String travelRateMultiplier,
    String accommodationPreference,
    String? dietaryRestrictions,
    String? emergencyContactName,
    String? emergencyContactPhone,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$TravelProfileCopyWithImpl<$Res, $Val extends TravelProfile>
    implements $TravelProfileCopyWith<$Res> {
  _$TravelProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TravelProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? isWillingToTravel = null,
    Object? maxTravelDistanceKm = freezed,
    Object? passportNumber = freezed,
    Object? passportExpiry = freezed,
    Object? passportCountry = freezed,
    Object? visaCountries = freezed,
    Object? travelRateMultiplier = null,
    Object? accommodationPreference = null,
    Object? dietaryRestrictions = freezed,
    Object? emergencyContactName = freezed,
    Object? emergencyContactPhone = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            artistId: null == artistId
                ? _value.artistId
                : artistId // ignore: cast_nullable_to_non_nullable
                      as String,
            isWillingToTravel: null == isWillingToTravel
                ? _value.isWillingToTravel
                : isWillingToTravel // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxTravelDistanceKm: freezed == maxTravelDistanceKm
                ? _value.maxTravelDistanceKm
                : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
                      as int?,
            passportNumber: freezed == passportNumber
                ? _value.passportNumber
                : passportNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            passportExpiry: freezed == passportExpiry
                ? _value.passportExpiry
                : passportExpiry // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            passportCountry: freezed == passportCountry
                ? _value.passportCountry
                : passportCountry // ignore: cast_nullable_to_non_nullable
                      as String?,
            visaCountries: freezed == visaCountries
                ? _value.visaCountries
                : visaCountries // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            travelRateMultiplier: null == travelRateMultiplier
                ? _value.travelRateMultiplier
                : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
                      as String,
            accommodationPreference: null == accommodationPreference
                ? _value.accommodationPreference
                : accommodationPreference // ignore: cast_nullable_to_non_nullable
                      as String,
            dietaryRestrictions: freezed == dietaryRestrictions
                ? _value.dietaryRestrictions
                : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
                      as String?,
            emergencyContactName: freezed == emergencyContactName
                ? _value.emergencyContactName
                : emergencyContactName // ignore: cast_nullable_to_non_nullable
                      as String?,
            emergencyContactPhone: freezed == emergencyContactPhone
                ? _value.emergencyContactPhone
                : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TravelProfileImplCopyWith<$Res>
    implements $TravelProfileCopyWith<$Res> {
  factory _$$TravelProfileImplCopyWith(
    _$TravelProfileImpl value,
    $Res Function(_$TravelProfileImpl) then,
  ) = __$$TravelProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String artistId,
    bool isWillingToTravel,
    int? maxTravelDistanceKm,
    String? passportNumber,
    DateTime? passportExpiry,
    String? passportCountry,
    List<String>? visaCountries,
    String travelRateMultiplier,
    String accommodationPreference,
    String? dietaryRestrictions,
    String? emergencyContactName,
    String? emergencyContactPhone,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$TravelProfileImplCopyWithImpl<$Res>
    extends _$TravelProfileCopyWithImpl<$Res, _$TravelProfileImpl>
    implements _$$TravelProfileImplCopyWith<$Res> {
  __$$TravelProfileImplCopyWithImpl(
    _$TravelProfileImpl _value,
    $Res Function(_$TravelProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TravelProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? artistId = null,
    Object? isWillingToTravel = null,
    Object? maxTravelDistanceKm = freezed,
    Object? passportNumber = freezed,
    Object? passportExpiry = freezed,
    Object? passportCountry = freezed,
    Object? visaCountries = freezed,
    Object? travelRateMultiplier = null,
    Object? accommodationPreference = null,
    Object? dietaryRestrictions = freezed,
    Object? emergencyContactName = freezed,
    Object? emergencyContactPhone = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TravelProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        artistId: null == artistId
            ? _value.artistId
            : artistId // ignore: cast_nullable_to_non_nullable
                  as String,
        isWillingToTravel: null == isWillingToTravel
            ? _value.isWillingToTravel
            : isWillingToTravel // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxTravelDistanceKm: freezed == maxTravelDistanceKm
            ? _value.maxTravelDistanceKm
            : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
                  as int?,
        passportNumber: freezed == passportNumber
            ? _value.passportNumber
            : passportNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        passportExpiry: freezed == passportExpiry
            ? _value.passportExpiry
            : passportExpiry // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        passportCountry: freezed == passportCountry
            ? _value.passportCountry
            : passportCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        visaCountries: freezed == visaCountries
            ? _value._visaCountries
            : visaCountries // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        travelRateMultiplier: null == travelRateMultiplier
            ? _value.travelRateMultiplier
            : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
                  as String,
        accommodationPreference: null == accommodationPreference
            ? _value.accommodationPreference
            : accommodationPreference // ignore: cast_nullable_to_non_nullable
                  as String,
        dietaryRestrictions: freezed == dietaryRestrictions
            ? _value.dietaryRestrictions
            : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
                  as String?,
        emergencyContactName: freezed == emergencyContactName
            ? _value.emergencyContactName
            : emergencyContactName // ignore: cast_nullable_to_non_nullable
                  as String?,
        emergencyContactPhone: freezed == emergencyContactPhone
            ? _value.emergencyContactPhone
            : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelProfileImpl implements _TravelProfile {
  const _$TravelProfileImpl({
    required this.id,
    required this.artistId,
    required this.isWillingToTravel,
    this.maxTravelDistanceKm,
    this.passportNumber,
    this.passportExpiry,
    this.passportCountry,
    final List<String>? visaCountries,
    required this.travelRateMultiplier,
    required this.accommodationPreference,
    this.dietaryRestrictions,
    this.emergencyContactName,
    this.emergencyContactPhone,
    required this.createdAt,
    required this.updatedAt,
  }) : _visaCountries = visaCountries;

  factory _$TravelProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String artistId;
  @override
  final bool isWillingToTravel;
  @override
  final int? maxTravelDistanceKm;
  @override
  final String? passportNumber;
  @override
  final DateTime? passportExpiry;
  @override
  final String? passportCountry;
  final List<String>? _visaCountries;
  @override
  List<String>? get visaCountries {
    final value = _visaCountries;
    if (value == null) return null;
    if (_visaCountries is EqualUnmodifiableListView) return _visaCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String travelRateMultiplier;
  @override
  final String accommodationPreference;
  @override
  final String? dietaryRestrictions;
  @override
  final String? emergencyContactName;
  @override
  final String? emergencyContactPhone;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TravelProfile(id: $id, artistId: $artistId, isWillingToTravel: $isWillingToTravel, maxTravelDistanceKm: $maxTravelDistanceKm, passportNumber: $passportNumber, passportExpiry: $passportExpiry, passportCountry: $passportCountry, visaCountries: $visaCountries, travelRateMultiplier: $travelRateMultiplier, accommodationPreference: $accommodationPreference, dietaryRestrictions: $dietaryRestrictions, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.isWillingToTravel, isWillingToTravel) ||
                other.isWillingToTravel == isWillingToTravel) &&
            (identical(other.maxTravelDistanceKm, maxTravelDistanceKm) ||
                other.maxTravelDistanceKm == maxTravelDistanceKm) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportExpiry, passportExpiry) ||
                other.passportExpiry == passportExpiry) &&
            (identical(other.passportCountry, passportCountry) ||
                other.passportCountry == passportCountry) &&
            const DeepCollectionEquality().equals(
              other._visaCountries,
              _visaCountries,
            ) &&
            (identical(other.travelRateMultiplier, travelRateMultiplier) ||
                other.travelRateMultiplier == travelRateMultiplier) &&
            (identical(
                  other.accommodationPreference,
                  accommodationPreference,
                ) ||
                other.accommodationPreference == accommodationPreference) &&
            (identical(other.dietaryRestrictions, dietaryRestrictions) ||
                other.dietaryRestrictions == dietaryRestrictions) &&
            (identical(other.emergencyContactName, emergencyContactName) ||
                other.emergencyContactName == emergencyContactName) &&
            (identical(other.emergencyContactPhone, emergencyContactPhone) ||
                other.emergencyContactPhone == emergencyContactPhone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    artistId,
    isWillingToTravel,
    maxTravelDistanceKm,
    passportNumber,
    passportExpiry,
    passportCountry,
    const DeepCollectionEquality().hash(_visaCountries),
    travelRateMultiplier,
    accommodationPreference,
    dietaryRestrictions,
    emergencyContactName,
    emergencyContactPhone,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TravelProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelProfileImplCopyWith<_$TravelProfileImpl> get copyWith =>
      __$$TravelProfileImplCopyWithImpl<_$TravelProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelProfileImplToJson(this);
  }
}

abstract class _TravelProfile implements TravelProfile {
  const factory _TravelProfile({
    required final String id,
    required final String artistId,
    required final bool isWillingToTravel,
    final int? maxTravelDistanceKm,
    final String? passportNumber,
    final DateTime? passportExpiry,
    final String? passportCountry,
    final List<String>? visaCountries,
    required final String travelRateMultiplier,
    required final String accommodationPreference,
    final String? dietaryRestrictions,
    final String? emergencyContactName,
    final String? emergencyContactPhone,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$TravelProfileImpl;

  factory _TravelProfile.fromJson(Map<String, dynamic> json) =
      _$TravelProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get artistId;
  @override
  bool get isWillingToTravel;
  @override
  int? get maxTravelDistanceKm;
  @override
  String? get passportNumber;
  @override
  DateTime? get passportExpiry;
  @override
  String? get passportCountry;
  @override
  List<String>? get visaCountries;
  @override
  String get travelRateMultiplier;
  @override
  String get accommodationPreference;
  @override
  String? get dietaryRestrictions;
  @override
  String? get emergencyContactName;
  @override
  String? get emergencyContactPhone;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of TravelProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TravelProfileImplCopyWith<_$TravelProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTravelProfileRequest _$CreateTravelProfileRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CreateTravelProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTravelProfileRequest {
  bool get isWillingToTravel => throw _privateConstructorUsedError;
  int? get maxTravelDistanceKm => throw _privateConstructorUsedError;
  String? get passportNumber => throw _privateConstructorUsedError;
  DateTime? get passportExpiry => throw _privateConstructorUsedError;
  String? get passportCountry => throw _privateConstructorUsedError;
  List<String>? get visaCountries => throw _privateConstructorUsedError;
  String? get travelRateMultiplier => throw _privateConstructorUsedError;
  String? get accommodationPreference => throw _privateConstructorUsedError;
  String? get dietaryRestrictions => throw _privateConstructorUsedError;
  String? get emergencyContactName => throw _privateConstructorUsedError;
  String? get emergencyContactPhone => throw _privateConstructorUsedError;

  /// Serializes this CreateTravelProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTravelProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTravelProfileRequestCopyWith<CreateTravelProfileRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTravelProfileRequestCopyWith<$Res> {
  factory $CreateTravelProfileRequestCopyWith(
    CreateTravelProfileRequest value,
    $Res Function(CreateTravelProfileRequest) then,
  ) =
      _$CreateTravelProfileRequestCopyWithImpl<
        $Res,
        CreateTravelProfileRequest
      >;
  @useResult
  $Res call({
    bool isWillingToTravel,
    int? maxTravelDistanceKm,
    String? passportNumber,
    DateTime? passportExpiry,
    String? passportCountry,
    List<String>? visaCountries,
    String? travelRateMultiplier,
    String? accommodationPreference,
    String? dietaryRestrictions,
    String? emergencyContactName,
    String? emergencyContactPhone,
  });
}

/// @nodoc
class _$CreateTravelProfileRequestCopyWithImpl<
  $Res,
  $Val extends CreateTravelProfileRequest
>
    implements $CreateTravelProfileRequestCopyWith<$Res> {
  _$CreateTravelProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTravelProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWillingToTravel = null,
    Object? maxTravelDistanceKm = freezed,
    Object? passportNumber = freezed,
    Object? passportExpiry = freezed,
    Object? passportCountry = freezed,
    Object? visaCountries = freezed,
    Object? travelRateMultiplier = freezed,
    Object? accommodationPreference = freezed,
    Object? dietaryRestrictions = freezed,
    Object? emergencyContactName = freezed,
    Object? emergencyContactPhone = freezed,
  }) {
    return _then(
      _value.copyWith(
            isWillingToTravel: null == isWillingToTravel
                ? _value.isWillingToTravel
                : isWillingToTravel // ignore: cast_nullable_to_non_nullable
                      as bool,
            maxTravelDistanceKm: freezed == maxTravelDistanceKm
                ? _value.maxTravelDistanceKm
                : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
                      as int?,
            passportNumber: freezed == passportNumber
                ? _value.passportNumber
                : passportNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            passportExpiry: freezed == passportExpiry
                ? _value.passportExpiry
                : passportExpiry // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            passportCountry: freezed == passportCountry
                ? _value.passportCountry
                : passportCountry // ignore: cast_nullable_to_non_nullable
                      as String?,
            visaCountries: freezed == visaCountries
                ? _value.visaCountries
                : visaCountries // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            travelRateMultiplier: freezed == travelRateMultiplier
                ? _value.travelRateMultiplier
                : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
                      as String?,
            accommodationPreference: freezed == accommodationPreference
                ? _value.accommodationPreference
                : accommodationPreference // ignore: cast_nullable_to_non_nullable
                      as String?,
            dietaryRestrictions: freezed == dietaryRestrictions
                ? _value.dietaryRestrictions
                : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
                      as String?,
            emergencyContactName: freezed == emergencyContactName
                ? _value.emergencyContactName
                : emergencyContactName // ignore: cast_nullable_to_non_nullable
                      as String?,
            emergencyContactPhone: freezed == emergencyContactPhone
                ? _value.emergencyContactPhone
                : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateTravelProfileRequestImplCopyWith<$Res>
    implements $CreateTravelProfileRequestCopyWith<$Res> {
  factory _$$CreateTravelProfileRequestImplCopyWith(
    _$CreateTravelProfileRequestImpl value,
    $Res Function(_$CreateTravelProfileRequestImpl) then,
  ) = __$$CreateTravelProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isWillingToTravel,
    int? maxTravelDistanceKm,
    String? passportNumber,
    DateTime? passportExpiry,
    String? passportCountry,
    List<String>? visaCountries,
    String? travelRateMultiplier,
    String? accommodationPreference,
    String? dietaryRestrictions,
    String? emergencyContactName,
    String? emergencyContactPhone,
  });
}

/// @nodoc
class __$$CreateTravelProfileRequestImplCopyWithImpl<$Res>
    extends
        _$CreateTravelProfileRequestCopyWithImpl<
          $Res,
          _$CreateTravelProfileRequestImpl
        >
    implements _$$CreateTravelProfileRequestImplCopyWith<$Res> {
  __$$CreateTravelProfileRequestImplCopyWithImpl(
    _$CreateTravelProfileRequestImpl _value,
    $Res Function(_$CreateTravelProfileRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateTravelProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isWillingToTravel = null,
    Object? maxTravelDistanceKm = freezed,
    Object? passportNumber = freezed,
    Object? passportExpiry = freezed,
    Object? passportCountry = freezed,
    Object? visaCountries = freezed,
    Object? travelRateMultiplier = freezed,
    Object? accommodationPreference = freezed,
    Object? dietaryRestrictions = freezed,
    Object? emergencyContactName = freezed,
    Object? emergencyContactPhone = freezed,
  }) {
    return _then(
      _$CreateTravelProfileRequestImpl(
        isWillingToTravel: null == isWillingToTravel
            ? _value.isWillingToTravel
            : isWillingToTravel // ignore: cast_nullable_to_non_nullable
                  as bool,
        maxTravelDistanceKm: freezed == maxTravelDistanceKm
            ? _value.maxTravelDistanceKm
            : maxTravelDistanceKm // ignore: cast_nullable_to_non_nullable
                  as int?,
        passportNumber: freezed == passportNumber
            ? _value.passportNumber
            : passportNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        passportExpiry: freezed == passportExpiry
            ? _value.passportExpiry
            : passportExpiry // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        passportCountry: freezed == passportCountry
            ? _value.passportCountry
            : passportCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        visaCountries: freezed == visaCountries
            ? _value._visaCountries
            : visaCountries // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        travelRateMultiplier: freezed == travelRateMultiplier
            ? _value.travelRateMultiplier
            : travelRateMultiplier // ignore: cast_nullable_to_non_nullable
                  as String?,
        accommodationPreference: freezed == accommodationPreference
            ? _value.accommodationPreference
            : accommodationPreference // ignore: cast_nullable_to_non_nullable
                  as String?,
        dietaryRestrictions: freezed == dietaryRestrictions
            ? _value.dietaryRestrictions
            : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
                  as String?,
        emergencyContactName: freezed == emergencyContactName
            ? _value.emergencyContactName
            : emergencyContactName // ignore: cast_nullable_to_non_nullable
                  as String?,
        emergencyContactPhone: freezed == emergencyContactPhone
            ? _value.emergencyContactPhone
            : emergencyContactPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTravelProfileRequestImpl implements _CreateTravelProfileRequest {
  const _$CreateTravelProfileRequestImpl({
    required this.isWillingToTravel,
    this.maxTravelDistanceKm,
    this.passportNumber,
    this.passportExpiry,
    this.passportCountry,
    final List<String>? visaCountries,
    this.travelRateMultiplier,
    this.accommodationPreference,
    this.dietaryRestrictions,
    this.emergencyContactName,
    this.emergencyContactPhone,
  }) : _visaCountries = visaCountries;

  factory _$CreateTravelProfileRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CreateTravelProfileRequestImplFromJson(json);

  @override
  final bool isWillingToTravel;
  @override
  final int? maxTravelDistanceKm;
  @override
  final String? passportNumber;
  @override
  final DateTime? passportExpiry;
  @override
  final String? passportCountry;
  final List<String>? _visaCountries;
  @override
  List<String>? get visaCountries {
    final value = _visaCountries;
    if (value == null) return null;
    if (_visaCountries is EqualUnmodifiableListView) return _visaCountries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? travelRateMultiplier;
  @override
  final String? accommodationPreference;
  @override
  final String? dietaryRestrictions;
  @override
  final String? emergencyContactName;
  @override
  final String? emergencyContactPhone;

  @override
  String toString() {
    return 'CreateTravelProfileRequest(isWillingToTravel: $isWillingToTravel, maxTravelDistanceKm: $maxTravelDistanceKm, passportNumber: $passportNumber, passportExpiry: $passportExpiry, passportCountry: $passportCountry, visaCountries: $visaCountries, travelRateMultiplier: $travelRateMultiplier, accommodationPreference: $accommodationPreference, dietaryRestrictions: $dietaryRestrictions, emergencyContactName: $emergencyContactName, emergencyContactPhone: $emergencyContactPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTravelProfileRequestImpl &&
            (identical(other.isWillingToTravel, isWillingToTravel) ||
                other.isWillingToTravel == isWillingToTravel) &&
            (identical(other.maxTravelDistanceKm, maxTravelDistanceKm) ||
                other.maxTravelDistanceKm == maxTravelDistanceKm) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportExpiry, passportExpiry) ||
                other.passportExpiry == passportExpiry) &&
            (identical(other.passportCountry, passportCountry) ||
                other.passportCountry == passportCountry) &&
            const DeepCollectionEquality().equals(
              other._visaCountries,
              _visaCountries,
            ) &&
            (identical(other.travelRateMultiplier, travelRateMultiplier) ||
                other.travelRateMultiplier == travelRateMultiplier) &&
            (identical(
                  other.accommodationPreference,
                  accommodationPreference,
                ) ||
                other.accommodationPreference == accommodationPreference) &&
            (identical(other.dietaryRestrictions, dietaryRestrictions) ||
                other.dietaryRestrictions == dietaryRestrictions) &&
            (identical(other.emergencyContactName, emergencyContactName) ||
                other.emergencyContactName == emergencyContactName) &&
            (identical(other.emergencyContactPhone, emergencyContactPhone) ||
                other.emergencyContactPhone == emergencyContactPhone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isWillingToTravel,
    maxTravelDistanceKm,
    passportNumber,
    passportExpiry,
    passportCountry,
    const DeepCollectionEquality().hash(_visaCountries),
    travelRateMultiplier,
    accommodationPreference,
    dietaryRestrictions,
    emergencyContactName,
    emergencyContactPhone,
  );

  /// Create a copy of CreateTravelProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTravelProfileRequestImplCopyWith<_$CreateTravelProfileRequestImpl>
  get copyWith =>
      __$$CreateTravelProfileRequestImplCopyWithImpl<
        _$CreateTravelProfileRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTravelProfileRequestImplToJson(this);
  }
}

abstract class _CreateTravelProfileRequest
    implements CreateTravelProfileRequest {
  const factory _CreateTravelProfileRequest({
    required final bool isWillingToTravel,
    final int? maxTravelDistanceKm,
    final String? passportNumber,
    final DateTime? passportExpiry,
    final String? passportCountry,
    final List<String>? visaCountries,
    final String? travelRateMultiplier,
    final String? accommodationPreference,
    final String? dietaryRestrictions,
    final String? emergencyContactName,
    final String? emergencyContactPhone,
  }) = _$CreateTravelProfileRequestImpl;

  factory _CreateTravelProfileRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTravelProfileRequestImpl.fromJson;

  @override
  bool get isWillingToTravel;
  @override
  int? get maxTravelDistanceKm;
  @override
  String? get passportNumber;
  @override
  DateTime? get passportExpiry;
  @override
  String? get passportCountry;
  @override
  List<String>? get visaCountries;
  @override
  String? get travelRateMultiplier;
  @override
  String? get accommodationPreference;
  @override
  String? get dietaryRestrictions;
  @override
  String? get emergencyContactName;
  @override
  String? get emergencyContactPhone;

  /// Create a copy of CreateTravelProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTravelProfileRequestImplCopyWith<_$CreateTravelProfileRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RetreatModel _$RetreatModelFromJson(Map<String, dynamic> json) {
  return _RetreatModel.fromJson(json);
}

/// @nodoc
mixin _$RetreatModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  List<String> get inclusions => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this RetreatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetreatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetreatModelCopyWith<RetreatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetreatModelCopyWith<$Res> {
  factory $RetreatModelCopyWith(
    RetreatModel value,
    $Res Function(RetreatModel) then,
  ) = _$RetreatModelCopyWithImpl<$Res, RetreatModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String location,
    String description,
    double price,
    String imageUrl,
    DateTime startDate,
    DateTime endDate,
    List<String> inclusions,
    bool isActive,
  });
}

/// @nodoc
class _$RetreatModelCopyWithImpl<$Res, $Val extends RetreatModel>
    implements $RetreatModelCopyWith<$Res> {
  _$RetreatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetreatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? inclusions = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            inclusions: null == inclusions
                ? _value.inclusions
                : inclusions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RetreatModelImplCopyWith<$Res>
    implements $RetreatModelCopyWith<$Res> {
  factory _$$RetreatModelImplCopyWith(
    _$RetreatModelImpl value,
    $Res Function(_$RetreatModelImpl) then,
  ) = __$$RetreatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String location,
    String description,
    double price,
    String imageUrl,
    DateTime startDate,
    DateTime endDate,
    List<String> inclusions,
    bool isActive,
  });
}

/// @nodoc
class __$$RetreatModelImplCopyWithImpl<$Res>
    extends _$RetreatModelCopyWithImpl<$Res, _$RetreatModelImpl>
    implements _$$RetreatModelImplCopyWith<$Res> {
  __$$RetreatModelImplCopyWithImpl(
    _$RetreatModelImpl _value,
    $Res Function(_$RetreatModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RetreatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? location = null,
    Object? description = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? inclusions = null,
    Object? isActive = null,
  }) {
    return _then(
      _$RetreatModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        inclusions: null == inclusions
            ? _value._inclusions
            : inclusions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RetreatModelImpl implements _RetreatModel {
  const _$RetreatModelImpl({
    required this.id,
    required this.title,
    required this.location,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    final List<String> inclusions = const [],
    this.isActive = true,
  }) : _inclusions = inclusions;

  factory _$RetreatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetreatModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String location;
  @override
  final String description;
  @override
  final double price;
  @override
  final String imageUrl;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final List<String> _inclusions;
  @override
  @JsonKey()
  List<String> get inclusions {
    if (_inclusions is EqualUnmodifiableListView) return _inclusions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inclusions);
  }

  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'RetreatModel(id: $id, title: $title, location: $location, description: $description, price: $price, imageUrl: $imageUrl, startDate: $startDate, endDate: $endDate, inclusions: $inclusions, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetreatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(
              other._inclusions,
              _inclusions,
            ) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    location,
    description,
    price,
    imageUrl,
    startDate,
    endDate,
    const DeepCollectionEquality().hash(_inclusions),
    isActive,
  );

  /// Create a copy of RetreatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetreatModelImplCopyWith<_$RetreatModelImpl> get copyWith =>
      __$$RetreatModelImplCopyWithImpl<_$RetreatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetreatModelImplToJson(this);
  }
}

abstract class _RetreatModel implements RetreatModel {
  const factory _RetreatModel({
    required final String id,
    required final String title,
    required final String location,
    required final String description,
    required final double price,
    required final String imageUrl,
    required final DateTime startDate,
    required final DateTime endDate,
    final List<String> inclusions,
    final bool isActive,
  }) = _$RetreatModelImpl;

  factory _RetreatModel.fromJson(Map<String, dynamic> json) =
      _$RetreatModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get location;
  @override
  String get description;
  @override
  double get price;
  @override
  String get imageUrl;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  List<String> get inclusions;
  @override
  bool get isActive;

  /// Create a copy of RetreatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetreatModelImplCopyWith<_$RetreatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
