import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const User._();
  
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User({
    required String id,
    required String fullName,
    String? email,
    String? phone,
    required String role, // 'customer' or 'artist'
    String? profileImageUrl,
    @Default(false) bool isVerified,
    String? referralCode,
    @Default(0) int loyaltyPoints,
    DateTime? createdAt,
    List<String>? media,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
