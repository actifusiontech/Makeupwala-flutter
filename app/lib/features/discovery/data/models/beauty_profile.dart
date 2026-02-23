import 'package:freezed_annotation/freezed_annotation.dart';

part 'beauty_profile.freezed.dart';
part 'beauty_profile.g.dart';

@freezed
class BeautyProfile with _$BeautyProfile {
  const factory BeautyProfile({
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'skin_tone') required String skinTone,
    @JsonKey(name: 'skin_type') required String skinType,
    @JsonKey(name: 'preferred_style') required String preferredStyle,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _BeautyProfile;

  factory BeautyProfile.fromJson(Map<String, dynamic> json) => _$BeautyProfileFromJson(json);
}
