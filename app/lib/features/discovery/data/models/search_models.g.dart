// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultItemImpl _$$SearchResultItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      imageUrl: json['image_url'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$$SearchResultItemImplToJson(
        _$SearchResultItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'category': instance.category,
    };

_$UniversalSearchResultImpl _$$UniversalSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$UniversalSearchResultImpl(
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      courses: (json['courses'] as List<dynamic>?)
              ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UniversalSearchResultImplToJson(
        _$UniversalSearchResultImpl instance) =>
    <String, dynamic>{
      'artists': instance.artists,
      'products': instance.products,
      'courses': instance.courses,
    };
