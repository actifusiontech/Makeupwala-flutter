import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_models.freezed.dart';
part 'search_models.g.dart';

@freezed
class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    required String id,
    required String title,
    required String subtitle,
    String? imageUrl,
    double? price,
    String? category,
  }) = _SearchResultItem;

  factory SearchResultItem.fromJson(Map<String, dynamic> json) => _$SearchResultItemFromJson(json);
}

@freezed
class UniversalSearchResult with _$UniversalSearchResult {
  const factory UniversalSearchResult({
    @Default([]) List<SearchResultItem> artists,
    @Default([]) List<SearchResultItem> products,
    @Default([]) List<SearchResultItem> courses,
  }) = _UniversalSearchResult;

  factory UniversalSearchResult.fromJson(Map<String, dynamic> json) => _$UniversalSearchResultFromJson(json);
}
