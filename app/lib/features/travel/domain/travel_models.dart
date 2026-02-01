import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_models.freezed.dart';
part 'travel_models.g.dart';

@freezed
class TravelProfile with _$TravelProfile {
  const factory TravelProfile({
    required String id,
    required String artistId,
    required bool isWillingToTravel,
    int? maxTravelDistanceKm,
    String? passportNumber,
    DateTime? passportExpiry,
    String? passportCountry,
    List<String>? visaCountries,
    required String travelRateMultiplier,
    required String accommodationPreference,
    String? dietaryRestrictions,
    String? emergencyContactName,
    String? emergencyContactPhone,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TravelProfile;

  factory TravelProfile.fromJson(Map<String, dynamic> json) =>
      _$TravelProfileFromJson(json);
}

@freezed
class CreateTravelProfileRequest with _$CreateTravelProfileRequest {
  const factory CreateTravelProfileRequest({
    required bool isWillingToTravel,
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
  }) = _CreateTravelProfileRequest;

  factory CreateTravelProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTravelProfileRequestFromJson(json);
}

enum AccommodationPreference {
  fiveStar('5_STAR', '5 Star'),
  fourStar('4_STAR', '4 Star'),
  threeStar('3_STAR', '3 Star'),
  budget('BUDGET', 'Budget');

  final String value;
  final String label;

  const AccommodationPreference(this.value, this.label);

  static AccommodationPreference fromValue(String value) {
    return AccommodationPreference.values.firstWhere(
      (e) => e.value == value,
      orElse: () => AccommodationPreference.fourStar,
    );
  }
}
@freezed
class RetreatModel with _$RetreatModel {
  const factory RetreatModel({
    required String id,
    required String title,
    required String location,
    required String description,
    required double price,
    required String imageUrl,
    required DateTime startDate,
    required DateTime endDate,
    @Default([]) List<String> inclusions,
    @Default(true) bool isActive,
  }) = _RetreatModel;

  factory RetreatModel.fromJson(Map<String, dynamic> json) =>
      _$RetreatModelFromJson(json);
}
