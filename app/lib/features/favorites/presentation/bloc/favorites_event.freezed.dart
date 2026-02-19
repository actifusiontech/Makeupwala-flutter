// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(FavoriteModel artist) addFavorite,
    required TResult Function(String artistId) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(FavoriteModel artist)? addFavorite,
    TResult? Function(String artistId)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(FavoriteModel artist)? addFavorite,
    TResult Function(String artistId)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadFavoritesImplCopyWith<$Res> {
  factory _$$LoadFavoritesImplCopyWith(
          _$LoadFavoritesImpl value, $Res Function(_$LoadFavoritesImpl) then) =
      __$$LoadFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$LoadFavoritesImpl>
    implements _$$LoadFavoritesImplCopyWith<$Res> {
  __$$LoadFavoritesImplCopyWithImpl(
      _$LoadFavoritesImpl _value, $Res Function(_$LoadFavoritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFavoritesImpl implements _LoadFavorites {
  const _$LoadFavoritesImpl();

  @override
  String toString() {
    return 'FavoritesEvent.loadFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(FavoriteModel artist) addFavorite,
    required TResult Function(String artistId) removeFavorite,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(FavoriteModel artist)? addFavorite,
    TResult? Function(String artistId)? removeFavorite,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(FavoriteModel artist)? addFavorite,
    TResult Function(String artistId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class _LoadFavorites implements FavoritesEvent {
  const factory _LoadFavorites() = _$LoadFavoritesImpl;
}

/// @nodoc
abstract class _$$AddFavoriteImplCopyWith<$Res> {
  factory _$$AddFavoriteImplCopyWith(
          _$AddFavoriteImpl value, $Res Function(_$AddFavoriteImpl) then) =
      __$$AddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavoriteModel artist});

  $FavoriteModelCopyWith<$Res> get artist;
}

/// @nodoc
class __$$AddFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddFavoriteImpl>
    implements _$$AddFavoriteImplCopyWith<$Res> {
  __$$AddFavoriteImplCopyWithImpl(
      _$AddFavoriteImpl _value, $Res Function(_$AddFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
  }) {
    return _then(_$AddFavoriteImpl(
      null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteModelCopyWith<$Res> get artist {
    return $FavoriteModelCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc

class _$AddFavoriteImpl implements _AddFavorite {
  const _$AddFavoriteImpl(this.artist);

  @override
  final FavoriteModel artist;

  @override
  String toString() {
    return 'FavoritesEvent.addFavorite(artist: $artist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteImpl &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      __$$AddFavoriteImplCopyWithImpl<_$AddFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(FavoriteModel artist) addFavorite,
    required TResult Function(String artistId) removeFavorite,
  }) {
    return addFavorite(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(FavoriteModel artist)? addFavorite,
    TResult? Function(String artistId)? removeFavorite,
  }) {
    return addFavorite?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(FavoriteModel artist)? addFavorite,
    TResult Function(String artistId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddFavorite implements FavoritesEvent {
  const factory _AddFavorite(final FavoriteModel artist) = _$AddFavoriteImpl;

  FavoriteModel get artist;
  @JsonKey(ignore: true)
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(_$RemoveFavoriteImpl value,
          $Res Function(_$RemoveFavoriteImpl) then) =
      __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
      _$RemoveFavoriteImpl _value, $Res Function(_$RemoveFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$RemoveFavoriteImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements _RemoveFavorite {
  const _$RemoveFavoriteImpl(this.artistId);

  @override
  final String artistId;

  @override
  String toString() {
    return 'FavoritesEvent.removeFavorite(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadFavorites,
    required TResult Function(FavoriteModel artist) addFavorite,
    required TResult Function(String artistId) removeFavorite,
  }) {
    return removeFavorite(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadFavorites,
    TResult? Function(FavoriteModel artist)? addFavorite,
    TResult? Function(String artistId)? removeFavorite,
  }) {
    return removeFavorite?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadFavorites,
    TResult Function(FavoriteModel artist)? addFavorite,
    TResult Function(String artistId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavorite implements FavoritesEvent {
  const factory _RemoveFavorite(final String artistId) = _$RemoveFavoriteImpl;

  String get artistId;
  @JsonKey(ignore: true)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
