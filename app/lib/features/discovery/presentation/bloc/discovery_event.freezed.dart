// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discovery_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoveryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeed,
    required TResult Function() fetchRecommendations,
    required TResult Function(List<String> tags) searchLooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFeed,
    TResult? Function()? fetchRecommendations,
    TResult? Function(List<String> tags)? searchLooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeed,
    TResult Function()? fetchRecommendations,
    TResult Function(List<String> tags)? searchLooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeed value) fetchFeed,
    required TResult Function(_FetchRecommendations value) fetchRecommendations,
    required TResult Function(_SearchLooks value) searchLooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeed value)? fetchFeed,
    TResult? Function(_FetchRecommendations value)? fetchRecommendations,
    TResult? Function(_SearchLooks value)? searchLooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeed value)? fetchFeed,
    TResult Function(_FetchRecommendations value)? fetchRecommendations,
    TResult Function(_SearchLooks value)? searchLooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryEventCopyWith<$Res> {
  factory $DiscoveryEventCopyWith(
          DiscoveryEvent value, $Res Function(DiscoveryEvent) then) =
      _$DiscoveryEventCopyWithImpl<$Res, DiscoveryEvent>;
}

/// @nodoc
class _$DiscoveryEventCopyWithImpl<$Res, $Val extends DiscoveryEvent>
    implements $DiscoveryEventCopyWith<$Res> {
  _$DiscoveryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchFeedImplCopyWith<$Res> {
  factory _$$FetchFeedImplCopyWith(
          _$FetchFeedImpl value, $Res Function(_$FetchFeedImpl) then) =
      __$$FetchFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFeedImplCopyWithImpl<$Res>
    extends _$DiscoveryEventCopyWithImpl<$Res, _$FetchFeedImpl>
    implements _$$FetchFeedImplCopyWith<$Res> {
  __$$FetchFeedImplCopyWithImpl(
      _$FetchFeedImpl _value, $Res Function(_$FetchFeedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFeedImpl implements _FetchFeed {
  const _$FetchFeedImpl();

  @override
  String toString() {
    return 'DiscoveryEvent.fetchFeed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFeedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeed,
    required TResult Function() fetchRecommendations,
    required TResult Function(List<String> tags) searchLooks,
  }) {
    return fetchFeed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFeed,
    TResult? Function()? fetchRecommendations,
    TResult? Function(List<String> tags)? searchLooks,
  }) {
    return fetchFeed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeed,
    TResult Function()? fetchRecommendations,
    TResult Function(List<String> tags)? searchLooks,
    required TResult orElse(),
  }) {
    if (fetchFeed != null) {
      return fetchFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeed value) fetchFeed,
    required TResult Function(_FetchRecommendations value) fetchRecommendations,
    required TResult Function(_SearchLooks value) searchLooks,
  }) {
    return fetchFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeed value)? fetchFeed,
    TResult? Function(_FetchRecommendations value)? fetchRecommendations,
    TResult? Function(_SearchLooks value)? searchLooks,
  }) {
    return fetchFeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeed value)? fetchFeed,
    TResult Function(_FetchRecommendations value)? fetchRecommendations,
    TResult Function(_SearchLooks value)? searchLooks,
    required TResult orElse(),
  }) {
    if (fetchFeed != null) {
      return fetchFeed(this);
    }
    return orElse();
  }
}

abstract class _FetchFeed implements DiscoveryEvent {
  const factory _FetchFeed() = _$FetchFeedImpl;
}

/// @nodoc
abstract class _$$FetchRecommendationsImplCopyWith<$Res> {
  factory _$$FetchRecommendationsImplCopyWith(_$FetchRecommendationsImpl value,
          $Res Function(_$FetchRecommendationsImpl) then) =
      __$$FetchRecommendationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchRecommendationsImplCopyWithImpl<$Res>
    extends _$DiscoveryEventCopyWithImpl<$Res, _$FetchRecommendationsImpl>
    implements _$$FetchRecommendationsImplCopyWith<$Res> {
  __$$FetchRecommendationsImplCopyWithImpl(_$FetchRecommendationsImpl _value,
      $Res Function(_$FetchRecommendationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchRecommendationsImpl implements _FetchRecommendations {
  const _$FetchRecommendationsImpl();

  @override
  String toString() {
    return 'DiscoveryEvent.fetchRecommendations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeed,
    required TResult Function() fetchRecommendations,
    required TResult Function(List<String> tags) searchLooks,
  }) {
    return fetchRecommendations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFeed,
    TResult? Function()? fetchRecommendations,
    TResult? Function(List<String> tags)? searchLooks,
  }) {
    return fetchRecommendations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeed,
    TResult Function()? fetchRecommendations,
    TResult Function(List<String> tags)? searchLooks,
    required TResult orElse(),
  }) {
    if (fetchRecommendations != null) {
      return fetchRecommendations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeed value) fetchFeed,
    required TResult Function(_FetchRecommendations value) fetchRecommendations,
    required TResult Function(_SearchLooks value) searchLooks,
  }) {
    return fetchRecommendations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeed value)? fetchFeed,
    TResult? Function(_FetchRecommendations value)? fetchRecommendations,
    TResult? Function(_SearchLooks value)? searchLooks,
  }) {
    return fetchRecommendations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeed value)? fetchFeed,
    TResult Function(_FetchRecommendations value)? fetchRecommendations,
    TResult Function(_SearchLooks value)? searchLooks,
    required TResult orElse(),
  }) {
    if (fetchRecommendations != null) {
      return fetchRecommendations(this);
    }
    return orElse();
  }
}

abstract class _FetchRecommendations implements DiscoveryEvent {
  const factory _FetchRecommendations() = _$FetchRecommendationsImpl;
}

/// @nodoc
abstract class _$$SearchLooksImplCopyWith<$Res> {
  factory _$$SearchLooksImplCopyWith(
          _$SearchLooksImpl value, $Res Function(_$SearchLooksImpl) then) =
      __$$SearchLooksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> tags});
}

/// @nodoc
class __$$SearchLooksImplCopyWithImpl<$Res>
    extends _$DiscoveryEventCopyWithImpl<$Res, _$SearchLooksImpl>
    implements _$$SearchLooksImplCopyWith<$Res> {
  __$$SearchLooksImplCopyWithImpl(
      _$SearchLooksImpl _value, $Res Function(_$SearchLooksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$SearchLooksImpl(
      null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchLooksImpl implements _SearchLooks {
  const _$SearchLooksImpl(final List<String> tags) : _tags = tags;

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'DiscoveryEvent.searchLooks(tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLooksImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLooksImplCopyWith<_$SearchLooksImpl> get copyWith =>
      __$$SearchLooksImplCopyWithImpl<_$SearchLooksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFeed,
    required TResult Function() fetchRecommendations,
    required TResult Function(List<String> tags) searchLooks,
  }) {
    return searchLooks(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFeed,
    TResult? Function()? fetchRecommendations,
    TResult? Function(List<String> tags)? searchLooks,
  }) {
    return searchLooks?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFeed,
    TResult Function()? fetchRecommendations,
    TResult Function(List<String> tags)? searchLooks,
    required TResult orElse(),
  }) {
    if (searchLooks != null) {
      return searchLooks(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFeed value) fetchFeed,
    required TResult Function(_FetchRecommendations value) fetchRecommendations,
    required TResult Function(_SearchLooks value) searchLooks,
  }) {
    return searchLooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFeed value)? fetchFeed,
    TResult? Function(_FetchRecommendations value)? fetchRecommendations,
    TResult? Function(_SearchLooks value)? searchLooks,
  }) {
    return searchLooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFeed value)? fetchFeed,
    TResult Function(_FetchRecommendations value)? fetchRecommendations,
    TResult Function(_SearchLooks value)? searchLooks,
    required TResult orElse(),
  }) {
    if (searchLooks != null) {
      return searchLooks(this);
    }
    return orElse();
  }
}

abstract class _SearchLooks implements DiscoveryEvent {
  const factory _SearchLooks(final List<String> tags) = _$SearchLooksImpl;

  List<String> get tags;
  @JsonKey(ignore: true)
  _$$SearchLooksImplCopyWith<_$SearchLooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
