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
    ArtistKYC? kyc,
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
