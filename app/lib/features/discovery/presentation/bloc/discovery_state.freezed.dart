// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discovery_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoveryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PostModel> posts) feedLoaded,
    required TResult Function(List<Map<String, dynamic>> looks)
        recommendationsLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PostModel> posts)? feedLoaded,
    TResult? Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PostModel> posts)? feedLoaded,
    TResult Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedLoaded value) feedLoaded,
    required TResult Function(_RecommendationsLoaded value)
        recommendationsLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedLoaded value)? feedLoaded,
    TResult? Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedLoaded value)? feedLoaded,
    TResult Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoveryStateCopyWith<$Res> {
  factory $DiscoveryStateCopyWith(
          DiscoveryState value, $Res Function(DiscoveryState) then) =
      _$DiscoveryStateCopyWithImpl<$Res, DiscoveryState>;
}

/// @nodoc
class _$DiscoveryStateCopyWithImpl<$Res, $Val extends DiscoveryState>
    implements $DiscoveryStateCopyWith<$Res> {
  _$DiscoveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DiscoveryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PostModel> posts) feedLoaded,
    required TResult Function(List<Map<String, dynamic>> looks)
        recommendationsLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PostModel> posts)? feedLoaded,
    TResult? Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PostModel> posts)? feedLoaded,
    TResult Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedLoaded value) feedLoaded,
    required TResult Function(_RecommendationsLoaded value)
        recommendationsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedLoaded value)? feedLoaded,
    TResult? Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedLoaded value)? feedLoaded,
    TResult Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DiscoveryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DiscoveryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PostModel> posts) feedLoaded,
    required TResult Function(List<Map<String, dynamic>> looks)
        recommendationsLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PostModel> posts)? feedLoaded,
    TResult? Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PostModel> posts)? feedLoaded,
    TResult Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedLoaded value) feedLoaded,
    required TResult Function(_RecommendationsLoaded value)
        recommendationsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedLoaded value)? feedLoaded,
    TResult? Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedLoaded value)? feedLoaded,
    TResult Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DiscoveryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FeedLoadedImplCopyWith<$Res> {
  factory _$$FeedLoadedImplCopyWith(
          _$FeedLoadedImpl value, $Res Function(_$FeedLoadedImpl) then) =
      __$$FeedLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PostModel> posts});
}

/// @nodoc
class __$$FeedLoadedImplCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$FeedLoadedImpl>
    implements _$$FeedLoadedImplCopyWith<$Res> {
  __$$FeedLoadedImplCopyWithImpl(
      _$FeedLoadedImpl _value, $Res Function(_$FeedLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$FeedLoadedImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// @nodoc

class _$FeedLoadedImpl implements _FeedLoaded {
  const _$FeedLoadedImpl(final List<PostModel> posts) : _posts = posts;

  final List<PostModel> _posts;
  @override
  List<PostModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'DiscoveryState.feedLoaded(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedLoadedImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedLoadedImplCopyWith<_$FeedLoadedImpl> get copyWith =>
      __$$FeedLoadedImplCopyWithImpl<_$FeedLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PostModel> posts) feedLoaded,
    required TResult Function(List<Map<String, dynamic>> looks)
        recommendationsLoaded,
    required TResult Function(String message) error,
  }) {
    return feedLoaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PostModel> posts)? feedLoaded,
    TResult? Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult? Function(String message)? error,
  }) {
    return feedLoaded?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PostModel> posts)? feedLoaded,
    TResult Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (feedLoaded != null) {
      return feedLoaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedLoaded value) feedLoaded,
    required TResult Function(_RecommendationsLoaded value)
        recommendationsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return feedLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedLoaded value)? feedLoaded,
    TResult? Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return feedLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedLoaded value)? feedLoaded,
    TResult Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (feedLoaded != null) {
      return feedLoaded(this);
    }
    return orElse();
  }
}

abstract class _FeedLoaded implements DiscoveryState {
  const factory _FeedLoaded(final List<PostModel> posts) = _$FeedLoadedImpl;

  List<PostModel> get posts;
  @JsonKey(ignore: true)
  _$$FeedLoadedImplCopyWith<_$FeedLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecommendationsLoadedImplCopyWith<$Res> {
  factory _$$RecommendationsLoadedImplCopyWith(
          _$RecommendationsLoadedImpl value,
          $Res Function(_$RecommendationsLoadedImpl) then) =
      __$$RecommendationsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> looks});
}

/// @nodoc
class __$$RecommendationsLoadedImplCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$RecommendationsLoadedImpl>
    implements _$$RecommendationsLoadedImplCopyWith<$Res> {
  __$$RecommendationsLoadedImplCopyWithImpl(_$RecommendationsLoadedImpl _value,
      $Res Function(_$RecommendationsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? looks = null,
  }) {
    return _then(_$RecommendationsLoadedImpl(
      null == looks
          ? _value._looks
          : looks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$RecommendationsLoadedImpl implements _RecommendationsLoaded {
  const _$RecommendationsLoadedImpl(final List<Map<String, dynamic>> looks)
      : _looks = looks;

  final List<Map<String, dynamic>> _looks;
  @override
  List<Map<String, dynamic>> get looks {
    if (_looks is EqualUnmodifiableListView) return _looks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_looks);
  }

  @override
  String toString() {
    return 'DiscoveryState.recommendationsLoaded(looks: $looks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendationsLoadedImpl &&
            const DeepCollectionEquality().equals(other._looks, _looks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_looks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendationsLoadedImplCopyWith<_$RecommendationsLoadedImpl>
      get copyWith => __$$RecommendationsLoadedImplCopyWithImpl<
          _$RecommendationsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PostModel> posts) feedLoaded,
    required TResult Function(List<Map<String, dynamic>> looks)
        recommendationsLoaded,
    required TResult Function(String message) error,
  }) {
    return recommendationsLoaded(looks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PostModel> posts)? feedLoaded,
    TResult? Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult? Function(String message)? error,
  }) {
    return recommendationsLoaded?.call(looks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PostModel> posts)? feedLoaded,
    TResult Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (recommendationsLoaded != null) {
      return recommendationsLoaded(looks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedLoaded value) feedLoaded,
    required TResult Function(_RecommendationsLoaded value)
        recommendationsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return recommendationsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedLoaded value)? feedLoaded,
    TResult? Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return recommendationsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedLoaded value)? feedLoaded,
    TResult Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (recommendationsLoaded != null) {
      return recommendationsLoaded(this);
    }
    return orElse();
  }
}

abstract class _RecommendationsLoaded implements DiscoveryState {
  const factory _RecommendationsLoaded(final List<Map<String, dynamic>> looks) =
      _$RecommendationsLoadedImpl;

  List<Map<String, dynamic>> get looks;
  @JsonKey(ignore: true)
  _$$RecommendationsLoadedImplCopyWith<_$RecommendationsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DiscoveryStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DiscoveryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PostModel> posts) feedLoaded,
    required TResult Function(List<Map<String, dynamic>> looks)
        recommendationsLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PostModel> posts)? feedLoaded,
    TResult? Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PostModel> posts)? feedLoaded,
    TResult Function(List<Map<String, dynamic>> looks)? recommendationsLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_FeedLoaded value) feedLoaded,
    required TResult Function(_RecommendationsLoaded value)
        recommendationsLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_FeedLoaded value)? feedLoaded,
    TResult? Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_FeedLoaded value)? feedLoaded,
    TResult Function(_RecommendationsLoaded value)? recommendationsLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DiscoveryState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
