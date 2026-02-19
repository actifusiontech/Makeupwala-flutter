import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
class FavoriteModel with _$FavoriteModel {
  @HiveType(typeId: 5) // Ensure unique TypeID
  const factory FavoriteModel({
    @HiveField(0) required String id,
    @HiveField(1) @JsonKey(name: 'full_name') required String fullName,
    @HiveField(2) required String category,
    @HiveField(3) @JsonKey(name: 'profile_image') String? profileImage,
    @HiveField(4) required double rating,
    @HiveField(5) required String location,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
