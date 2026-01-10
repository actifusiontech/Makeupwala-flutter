import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class ArtistProfile with _$ArtistProfile {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistProfile({
    required String id,
    required String userId,
    required String fullName,
    String? bio,
    String? category,
    String? experience,
    String? profileImageUrl,
    @Default([]) List<String> portfolioUrls,
    @Default([]) List<ArtistService> services,
    @Default(0.0) double rating,
    @Default(0) int reviewCount,
    String? city,
    @Default(false) bool isVerified,
    @Default(false) bool isJobSeeker,
    ArtistKYC? kyc,
    @Default([]) List<ArtistBundle> bundles,
    @Default([]) List<ArtistBadge> badges,
  }) = _ArtistProfile;

  factory ArtistProfile.fromJson(Map<String, dynamic> json) => _$ArtistProfileFromJson(json);
}

@freezed
class ArtistService with _$ArtistService {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistService({
    required String id,
    required String name,
    required double price,
    String? description,
    String? duration,
  }) = _ArtistService;

  factory ArtistService.fromJson(Map<String, dynamic> json) => _$ArtistServiceFromJson(json);
}

@freezed
class ArtistKYC with _$ArtistKYC {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistKYC({
    required String id,
    required String status, // 'pending', 'approved', 'rejected'
    String? idProofUrl,
    String? addressProofUrl,
    String? certificateUrl,
    String? adminComments,
    DateTime? submittedAt,
    DateTime? updatedAt,
  }) = _ArtistKYC;

  factory ArtistKYC.fromJson(Map<String, dynamic> json) => _$ArtistKYCFromJson(json);
}

@freezed
class ArtistBundle with _$ArtistBundle {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistBundle({
    required String id,
    required String name,
    String? description,
    required double basePrice,
    required double discountPrice,
    @Default('INR') String currency,
    @Default(true) bool isActive,
    @Default([]) List<ArtistBundleItem> items,
  }) = _ArtistBundle;

  factory ArtistBundle.fromJson(Map<String, dynamic> json) => _$ArtistBundleFromJson(json);
}

@freezed
class ArtistBundleItem with _$ArtistBundleItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistBundleItem({
    required String serviceId,
    required String serviceName,
    required int quantity,
  }) = _ArtistBundleItem;

  factory ArtistBundleItem.fromJson(Map<String, dynamic> json) => _$ArtistBundleItemFromJson(json);
}

@freezed
class ArtistBadge with _$ArtistBadge {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ArtistBadge({
    required String name,
    required String type,
    String? iconUrl,
    String? issuedAt,
  }) = _ArtistBadge;

  factory ArtistBadge.fromJson(Map<String, dynamic> json) => _$ArtistBadgeFromJson(json);
}
