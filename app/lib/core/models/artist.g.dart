// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArtistProfile _$ArtistProfileFromJson(Map<String, dynamic> json) =>
    _ArtistProfile(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      fullName: json['full_name'] as String,
      bio: json['bio'] as String?,
      category: json['category'] as String?,
      experience: json['experience'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
      portfolioUrls:
          (json['portfolio_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      services:
          (json['services'] as List<dynamic>?)
              ?.map((e) => ArtistService.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      reviewCount: (json['review_count'] as num?)?.toInt() ?? 0,
      city: json['city'] as String?,
      isVerified: json['is_verified'] as bool? ?? false,
      kyc: json['kyc'] == null
          ? null
          : ArtistKYC.fromJson(json['kyc'] as Map<String, dynamic>),
      bundles:
          (json['bundles'] as List<dynamic>?)
              ?.map((e) => ArtistBundle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ArtistProfileToJson(_ArtistProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'bio': instance.bio,
      'category': instance.category,
      'experience': instance.experience,
      'profile_image_url': instance.profileImageUrl,
      'portfolio_urls': instance.portfolioUrls,
      'services': instance.services,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'city': instance.city,
      'is_verified': instance.isVerified,
      'kyc': instance.kyc,
      'bundles': instance.bundles,
    };

_ArtistService _$ArtistServiceFromJson(Map<String, dynamic> json) =>
    _ArtistService(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$ArtistServiceToJson(_ArtistService instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'duration': instance.duration,
    };

_ArtistKYC _$ArtistKYCFromJson(Map<String, dynamic> json) => _ArtistKYC(
  id: json['id'] as String,
  status: json['status'] as String,
  idProofUrl: json['id_proof_url'] as String?,
  addressProofUrl: json['address_proof_url'] as String?,
  certificateUrl: json['certificate_url'] as String?,
  adminComments: json['admin_comments'] as String?,
  submittedAt: json['submitted_at'] == null
      ? null
      : DateTime.parse(json['submitted_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$ArtistKYCToJson(_ArtistKYC instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'id_proof_url': instance.idProofUrl,
      'address_proof_url': instance.addressProofUrl,
      'certificate_url': instance.certificateUrl,
      'admin_comments': instance.adminComments,
      'submitted_at': instance.submittedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_ArtistBundle _$ArtistBundleFromJson(Map<String, dynamic> json) =>
    _ArtistBundle(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      basePrice: (json['base_price'] as num).toDouble(),
      discountPrice: (json['discount_price'] as num).toDouble(),
      currency: json['currency'] as String? ?? 'INR',
      isActive: json['is_active'] as bool? ?? true,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ArtistBundleItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ArtistBundleToJson(_ArtistBundle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'base_price': instance.basePrice,
      'discount_price': instance.discountPrice,
      'currency': instance.currency,
      'is_active': instance.isActive,
      'items': instance.items,
    };

_ArtistBundleItem _$ArtistBundleItemFromJson(Map<String, dynamic> json) =>
    _ArtistBundleItem(
      serviceId: json['service_id'] as String,
      serviceName: json['service_name'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ArtistBundleItemToJson(_ArtistBundleItem instance) =>
    <String, dynamic>{
      'service_id': instance.serviceId,
      'service_name': instance.serviceName,
      'quantity': instance.quantity,
    };
