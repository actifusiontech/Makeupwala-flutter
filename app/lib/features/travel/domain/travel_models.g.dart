// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelProfileImpl _$$TravelProfileImplFromJson(Map<String, dynamic> json) =>
    _$TravelProfileImpl(
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

Map<String, dynamic> _$$TravelProfileImplToJson(_$TravelProfileImpl instance) =>
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

_$CreateTravelProfileRequestImpl _$$CreateTravelProfileRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateTravelProfileRequestImpl(
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

Map<String, dynamic> _$$CreateTravelProfileRequestImplToJson(
  _$CreateTravelProfileRequestImpl instance,
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

_$RetreatModelImpl _$$RetreatModelImplFromJson(Map<String, dynamic> json) =>
    _$RetreatModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      inclusions:
          (json['inclusions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$RetreatModelImplToJson(_$RetreatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'inclusions': instance.inclusions,
      'isActive': instance.isActive,
    };
