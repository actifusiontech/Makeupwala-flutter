// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelProfileImpl _$$TravelProfileImplFromJson(Map<String, dynamic> json) =>
    _$TravelProfileImpl(
      id: json['id'] as String,
      artistId: json['artist_id'] as String,
      isWillingToTravel: json['is_willing_to_travel'] as bool,
      maxTravelDistanceKm: (json['max_travel_distance_km'] as num?)?.toInt(),
      passportNumber: json['passport_number'] as String?,
      passportExpiry: json['passport_expiry'] == null
          ? null
          : DateTime.parse(json['passport_expiry'] as String),
      passportCountry: json['passport_country'] as String?,
      visaCountries: (json['visa_countries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      travelRateMultiplier: json['travel_rate_multiplier'] as String,
      accommodationPreference: json['accommodation_preference'] as String,
      dietaryRestrictions: json['dietary_restrictions'] as String?,
      emergencyContactName: json['emergency_contact_name'] as String?,
      emergencyContactPhone: json['emergency_contact_phone'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TravelProfileImplToJson(_$TravelProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_id': instance.artistId,
      'is_willing_to_travel': instance.isWillingToTravel,
      'max_travel_distance_km': instance.maxTravelDistanceKm,
      'passport_number': instance.passportNumber,
      'passport_expiry': instance.passportExpiry?.toIso8601String(),
      'passport_country': instance.passportCountry,
      'visa_countries': instance.visaCountries,
      'travel_rate_multiplier': instance.travelRateMultiplier,
      'accommodation_preference': instance.accommodationPreference,
      'dietary_restrictions': instance.dietaryRestrictions,
      'emergency_contact_name': instance.emergencyContactName,
      'emergency_contact_phone': instance.emergencyContactPhone,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$CreateTravelProfileRequestImpl _$$CreateTravelProfileRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateTravelProfileRequestImpl(
  isWillingToTravel: json['is_willing_to_travel'] as bool,
  maxTravelDistanceKm: (json['max_travel_distance_km'] as num?)?.toInt(),
  passportNumber: json['passport_number'] as String?,
  passportExpiry: json['passport_expiry'] == null
      ? null
      : DateTime.parse(json['passport_expiry'] as String),
  passportCountry: json['passport_country'] as String?,
  visaCountries: (json['visa_countries'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  travelRateMultiplier: json['travel_rate_multiplier'] as String?,
  accommodationPreference: json['accommodation_preference'] as String?,
  dietaryRestrictions: json['dietary_restrictions'] as String?,
  emergencyContactName: json['emergency_contact_name'] as String?,
  emergencyContactPhone: json['emergency_contact_phone'] as String?,
);

Map<String, dynamic> _$$CreateTravelProfileRequestImplToJson(
  _$CreateTravelProfileRequestImpl instance,
) => <String, dynamic>{
  'is_willing_to_travel': instance.isWillingToTravel,
  'max_travel_distance_km': instance.maxTravelDistanceKm,
  'passport_number': instance.passportNumber,
  'passport_expiry': instance.passportExpiry?.toIso8601String(),
  'passport_country': instance.passportCountry,
  'visa_countries': instance.visaCountries,
  'travel_rate_multiplier': instance.travelRateMultiplier,
  'accommodation_preference': instance.accommodationPreference,
  'dietary_restrictions': instance.dietaryRestrictions,
  'emergency_contact_name': instance.emergencyContactName,
  'emergency_contact_phone': instance.emergencyContactPhone,
};

_$RetreatModelImpl _$$RetreatModelImplFromJson(Map<String, dynamic> json) =>
    _$RetreatModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['image_url'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      inclusions:
          (json['inclusions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$$RetreatModelImplToJson(_$RetreatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'description': instance.description,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'inclusions': instance.inclusions,
      'is_active': instance.isActive,
    };
