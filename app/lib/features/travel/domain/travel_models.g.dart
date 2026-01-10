// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TravelProfile _$TravelProfileFromJson(Map<String, dynamic> json) =>
    _TravelProfile(
      id: json['id'] as String,
      artistId: json['artistId'] as String,
      isWillingToTravel: json['isWillingToTravel'] as bool,
      maxTravelDistanceKm: (json['maxTravelDistanceKm'] as num?)?.toInt(),
      passportNumber: json['passportNumber'] as String?,
      passportExpiry: json['passportExpiry'] == null
          ? null
          : DateTime.parse(json['passportExpiry'] as String),
      passportCountry: json['passportCountry'] as String?,
      visaCountries: (json['visaCountries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      travelRateMultiplier: json['travelRateMultiplier'] as String,
      accommodationPreference: json['accommodationPreference'] as String,
      dietaryRestrictions: json['dietaryRestrictions'] as String?,
      emergencyContactName: json['emergencyContactName'] as String?,
      emergencyContactPhone: json['emergencyContactPhone'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$TravelProfileToJson(_TravelProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artistId': instance.artistId,
      'isWillingToTravel': instance.isWillingToTravel,
      'maxTravelDistanceKm': instance.maxTravelDistanceKm,
      'passportNumber': instance.passportNumber,
      'passportExpiry': instance.passportExpiry?.toIso8601String(),
      'passportCountry': instance.passportCountry,
      'visaCountries': instance.visaCountries,
      'travelRateMultiplier': instance.travelRateMultiplier,
      'accommodationPreference': instance.accommodationPreference,
      'dietaryRestrictions': instance.dietaryRestrictions,
      'emergencyContactName': instance.emergencyContactName,
      'emergencyContactPhone': instance.emergencyContactPhone,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_CreateTravelProfileRequest _$CreateTravelProfileRequestFromJson(
  Map<String, dynamic> json,
) => _CreateTravelProfileRequest(
  isWillingToTravel: json['isWillingToTravel'] as bool,
  maxTravelDistanceKm: (json['maxTravelDistanceKm'] as num?)?.toInt(),
  passportNumber: json['passportNumber'] as String?,
  passportExpiry: json['passportExpiry'] == null
      ? null
      : DateTime.parse(json['passportExpiry'] as String),
  passportCountry: json['passportCountry'] as String?,
  visaCountries: (json['visaCountries'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  travelRateMultiplier: json['travelRateMultiplier'] as String?,
  accommodationPreference: json['accommodationPreference'] as String?,
  dietaryRestrictions: json['dietaryRestrictions'] as String?,
  emergencyContactName: json['emergencyContactName'] as String?,
  emergencyContactPhone: json['emergencyContactPhone'] as String?,
);

Map<String, dynamic> _$CreateTravelProfileRequestToJson(
  _CreateTravelProfileRequest instance,
) => <String, dynamic>{
  'isWillingToTravel': instance.isWillingToTravel,
  'maxTravelDistanceKm': instance.maxTravelDistanceKm,
  'passportNumber': instance.passportNumber,
  'passportExpiry': instance.passportExpiry?.toIso8601String(),
  'passportCountry': instance.passportCountry,
  'visaCountries': instance.visaCountries,
  'travelRateMultiplier': instance.travelRateMultiplier,
  'accommodationPreference': instance.accommodationPreference,
  'dietaryRestrictions': instance.dietaryRestrictions,
  'emergencyContactName': instance.emergencyContactName,
  'emergencyContactPhone': instance.emergencyContactPhone,
};
