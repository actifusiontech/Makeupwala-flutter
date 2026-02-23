// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) {
  return _SearchResultItem.fromJson(json);
}

/// @nodoc
mixin _$SearchResultItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultItemCopyWith<SearchResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res, SearchResultItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      String? imageUrl,
      double? price,
      String? category});
}

/// @nodoc
class _$SearchResultItemCopyWithImpl<$Res, $Val extends SearchResultItem>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultItemImplCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$$SearchResultItemImplCopyWith(_$SearchResultItemImpl value,
          $Res Function(_$SearchResultItemImpl) then) =
      __$$SearchResultItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      String? imageUrl,
      double? price,
      String? category});
}

/// @nodoc
class __$$SearchResultItemImplCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res, _$SearchResultItemImpl>
    implements _$$SearchResultItemImplCopyWith<$Res> {
  __$$SearchResultItemImplCopyWithImpl(_$SearchResultItemImpl _value,
      $Res Function(_$SearchResultItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? category = freezed,
  }) {
    return _then(_$SearchResultItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultItemImpl implements _SearchResultItem {
  const _$SearchResultItemImpl(
      {required this.id,
      required this.title,
      required this.subtitle,
      this.imageUrl,
      this.price,
      this.category});

  factory _$SearchResultItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultItemImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String? imageUrl;
  @override
  final double? price;
  @override
  final String? category;

  @override
  String toString() {
    return 'SearchResultItem(id: $id, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, price: $price, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, subtitle, imageUrl, price, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultItemImplCopyWith<_$SearchResultItemImpl> get copyWith =>
      __$$SearchResultItemImplCopyWithImpl<_$SearchResultItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultItemImplToJson(
      this,
    );
  }
}

abstract class _SearchResultItem implements SearchResultItem {
  const factory _SearchResultItem(
      {required final String id,
      required final String title,
      required final String subtitle,
      final String? imageUrl,
      final double? price,
      final String? category}) = _$SearchResultItemImpl;

  factory _SearchResultItem.fromJson(Map<String, dynamic> json) =
      _$SearchResultItemImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String? get imageUrl;
  @override
  double? get price;
  @override
  String? get category;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultItemImplCopyWith<_$SearchResultItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UniversalSearchResult _$UniversalSearchResultFromJson(
    Map<String, dynamic> json) {
  return _UniversalSearchResult.fromJson(json);
}

/// @nodoc
mixin _$UniversalSearchResult {
  List<SearchResultItem> get artists => throw _privateConstructorUsedError;
  List<SearchResultItem> get products => throw _privateConstructorUsedError;
  List<SearchResultItem> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversalSearchResultCopyWith<UniversalSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversalSearchResultCopyWith<$Res> {
  factory $UniversalSearchResultCopyWith(UniversalSearchResult value,
          $Res Function(UniversalSearchResult) then) =
      _$UniversalSearchResultCopyWithImpl<$Res, UniversalSearchResult>;
  @useResult
  $Res call(
      {List<SearchResultItem> artists,
      List<SearchResultItem> products,
      List<SearchResultItem> courses});
}

/// @nodoc
class _$UniversalSearchResultCopyWithImpl<$Res,
        $Val extends UniversalSearchResult>
    implements $UniversalSearchResultCopyWith<$Res> {
  _$UniversalSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? products = null,
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UniversalSearchResultImplCopyWith<$Res>
    implements $UniversalSearchResultCopyWith<$Res> {
  factory _$$UniversalSearchResultImplCopyWith(
          _$UniversalSearchResultImpl value,
          $Res Function(_$UniversalSearchResultImpl) then) =
      __$$UniversalSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchResultItem> artists,
      List<SearchResultItem> products,
      List<SearchResultItem> courses});
}

/// @nodoc
class __$$UniversalSearchResultImplCopyWithImpl<$Res>
    extends _$UniversalSearchResultCopyWithImpl<$Res,
        _$UniversalSearchResultImpl>
    implements _$$UniversalSearchResultImplCopyWith<$Res> {
  __$$UniversalSearchResultImplCopyWithImpl(_$UniversalSearchResultImpl _value,
      $Res Function(_$UniversalSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? products = null,
    Object? courses = null,
  }) {
    return _then(_$UniversalSearchResultImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UniversalSearchResultImpl implements _UniversalSearchResult {
  const _$UniversalSearchResultImpl(
      {final List<SearchResultItem> artists = const [],
      final List<SearchResultItem> products = const [],
      final List<SearchResultItem> courses = const []})
      : _artists = artists,
        _products = products,
        _courses = courses;

  factory _$UniversalSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$UniversalSearchResultImplFromJson(json);

  final List<SearchResultItem> _artists;
  @override
  @JsonKey()
  List<SearchResultItem> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<SearchResultItem> _products;
  @override
  @JsonKey()
  List<SearchResultItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<SearchResultItem> _courses;
  @override
  @JsonKey()
  List<SearchResultItem> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'UniversalSearchResult(artists: $artists, products: $products, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UniversalSearchResultImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UniversalSearchResultImplCopyWith<_$UniversalSearchResultImpl>
      get copyWith => __$$UniversalSearchResultImplCopyWithImpl<
          _$UniversalSearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UniversalSearchResultImplToJson(
      this,
    );
  }
}

abstract class _UniversalSearchResult implements UniversalSearchResult {
  const factory _UniversalSearchResult(
      {final List<SearchResultItem> artists,
      final List<SearchResultItem> products,
      final List<SearchResultItem> courses}) = _$UniversalSearchResultImpl;

  factory _UniversalSearchResult.fromJson(Map<String, dynamic> json) =
      _$UniversalSearchResultImpl.fromJson;

  @override
  List<SearchResultItem> get artists;
  @override
  List<SearchResultItem> get products;
  @override
  List<SearchResultItem> get courses;
  @override
  @JsonKey(ignore: true)
  _$$UniversalSearchResultImplCopyWith<_$UniversalSearchResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
