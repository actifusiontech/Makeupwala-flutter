// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moodboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MoodboardEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadMoodboard,
    required TResult Function(String userId, String imageUrl, String? caption)
        addToMoodboard,
    required TResult Function(String userId, String itemId) removeFromMoodboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadMoodboard,
    TResult? Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult? Function(String userId, String itemId)? removeFromMoodboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadMoodboard,
    TResult Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult Function(String userId, String itemId)? removeFromMoodboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoodboard value) loadMoodboard,
    required TResult Function(_AddToMoodboard value) addToMoodboard,
    required TResult Function(_RemoveFromMoodboard value) removeFromMoodboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMoodboard value)? loadMoodboard,
    TResult? Function(_AddToMoodboard value)? addToMoodboard,
    TResult? Function(_RemoveFromMoodboard value)? removeFromMoodboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoodboard value)? loadMoodboard,
    TResult Function(_AddToMoodboard value)? addToMoodboard,
    TResult Function(_RemoveFromMoodboard value)? removeFromMoodboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoodboardEventCopyWith<MoodboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoodboardEventCopyWith<$Res> {
  factory $MoodboardEventCopyWith(
          MoodboardEvent value, $Res Function(MoodboardEvent) then) =
      _$MoodboardEventCopyWithImpl<$Res, MoodboardEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$MoodboardEventCopyWithImpl<$Res, $Val extends MoodboardEvent>
    implements $MoodboardEventCopyWith<$Res> {
  _$MoodboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadMoodboardImplCopyWith<$Res>
    implements $MoodboardEventCopyWith<$Res> {
  factory _$$LoadMoodboardImplCopyWith(
          _$LoadMoodboardImpl value, $Res Function(_$LoadMoodboardImpl) then) =
      __$$LoadMoodboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadMoodboardImplCopyWithImpl<$Res>
    extends _$MoodboardEventCopyWithImpl<$Res, _$LoadMoodboardImpl>
    implements _$$LoadMoodboardImplCopyWith<$Res> {
  __$$LoadMoodboardImplCopyWithImpl(
      _$LoadMoodboardImpl _value, $Res Function(_$LoadMoodboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadMoodboardImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMoodboardImpl implements _LoadMoodboard {
  const _$LoadMoodboardImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'MoodboardEvent.loadMoodboard(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoodboardImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoodboardImplCopyWith<_$LoadMoodboardImpl> get copyWith =>
      __$$LoadMoodboardImplCopyWithImpl<_$LoadMoodboardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadMoodboard,
    required TResult Function(String userId, String imageUrl, String? caption)
        addToMoodboard,
    required TResult Function(String userId, String itemId) removeFromMoodboard,
  }) {
    return loadMoodboard(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadMoodboard,
    TResult? Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult? Function(String userId, String itemId)? removeFromMoodboard,
  }) {
    return loadMoodboard?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadMoodboard,
    TResult Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult Function(String userId, String itemId)? removeFromMoodboard,
    required TResult orElse(),
  }) {
    if (loadMoodboard != null) {
      return loadMoodboard(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoodboard value) loadMoodboard,
    required TResult Function(_AddToMoodboard value) addToMoodboard,
    required TResult Function(_RemoveFromMoodboard value) removeFromMoodboard,
  }) {
    return loadMoodboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMoodboard value)? loadMoodboard,
    TResult? Function(_AddToMoodboard value)? addToMoodboard,
    TResult? Function(_RemoveFromMoodboard value)? removeFromMoodboard,
  }) {
    return loadMoodboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoodboard value)? loadMoodboard,
    TResult Function(_AddToMoodboard value)? addToMoodboard,
    TResult Function(_RemoveFromMoodboard value)? removeFromMoodboard,
    required TResult orElse(),
  }) {
    if (loadMoodboard != null) {
      return loadMoodboard(this);
    }
    return orElse();
  }
}

abstract class _LoadMoodboard implements MoodboardEvent {
  const factory _LoadMoodboard(final String userId) = _$LoadMoodboardImpl;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$LoadMoodboardImplCopyWith<_$LoadMoodboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToMoodboardImplCopyWith<$Res>
    implements $MoodboardEventCopyWith<$Res> {
  factory _$$AddToMoodboardImplCopyWith(_$AddToMoodboardImpl value,
          $Res Function(_$AddToMoodboardImpl) then) =
      __$$AddToMoodboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String imageUrl, String? caption});
}

/// @nodoc
class __$$AddToMoodboardImplCopyWithImpl<$Res>
    extends _$MoodboardEventCopyWithImpl<$Res, _$AddToMoodboardImpl>
    implements _$$AddToMoodboardImplCopyWith<$Res> {
  __$$AddToMoodboardImplCopyWithImpl(
      _$AddToMoodboardImpl _value, $Res Function(_$AddToMoodboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? imageUrl = null,
    Object? caption = freezed,
  }) {
    return _then(_$AddToMoodboardImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddToMoodboardImpl implements _AddToMoodboard {
  const _$AddToMoodboardImpl(this.userId, this.imageUrl, {this.caption});

  @override
  final String userId;
  @override
  final String imageUrl;
  @override
  final String? caption;

  @override
  String toString() {
    return 'MoodboardEvent.addToMoodboard(userId: $userId, imageUrl: $imageUrl, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToMoodboardImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, imageUrl, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToMoodboardImplCopyWith<_$AddToMoodboardImpl> get copyWith =>
      __$$AddToMoodboardImplCopyWithImpl<_$AddToMoodboardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadMoodboard,
    required TResult Function(String userId, String imageUrl, String? caption)
        addToMoodboard,
    required TResult Function(String userId, String itemId) removeFromMoodboard,
  }) {
    return addToMoodboard(userId, imageUrl, caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadMoodboard,
    TResult? Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult? Function(String userId, String itemId)? removeFromMoodboard,
  }) {
    return addToMoodboard?.call(userId, imageUrl, caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadMoodboard,
    TResult Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult Function(String userId, String itemId)? removeFromMoodboard,
    required TResult orElse(),
  }) {
    if (addToMoodboard != null) {
      return addToMoodboard(userId, imageUrl, caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoodboard value) loadMoodboard,
    required TResult Function(_AddToMoodboard value) addToMoodboard,
    required TResult Function(_RemoveFromMoodboard value) removeFromMoodboard,
  }) {
    return addToMoodboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMoodboard value)? loadMoodboard,
    TResult? Function(_AddToMoodboard value)? addToMoodboard,
    TResult? Function(_RemoveFromMoodboard value)? removeFromMoodboard,
  }) {
    return addToMoodboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoodboard value)? loadMoodboard,
    TResult Function(_AddToMoodboard value)? addToMoodboard,
    TResult Function(_RemoveFromMoodboard value)? removeFromMoodboard,
    required TResult orElse(),
  }) {
    if (addToMoodboard != null) {
      return addToMoodboard(this);
    }
    return orElse();
  }
}

abstract class _AddToMoodboard implements MoodboardEvent {
  const factory _AddToMoodboard(final String userId, final String imageUrl,
      {final String? caption}) = _$AddToMoodboardImpl;

  @override
  String get userId;
  String get imageUrl;
  String? get caption;
  @override
  @JsonKey(ignore: true)
  _$$AddToMoodboardImplCopyWith<_$AddToMoodboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromMoodboardImplCopyWith<$Res>
    implements $MoodboardEventCopyWith<$Res> {
  factory _$$RemoveFromMoodboardImplCopyWith(_$RemoveFromMoodboardImpl value,
          $Res Function(_$RemoveFromMoodboardImpl) then) =
      __$$RemoveFromMoodboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String itemId});
}

/// @nodoc
class __$$RemoveFromMoodboardImplCopyWithImpl<$Res>
    extends _$MoodboardEventCopyWithImpl<$Res, _$RemoveFromMoodboardImpl>
    implements _$$RemoveFromMoodboardImplCopyWith<$Res> {
  __$$RemoveFromMoodboardImplCopyWithImpl(_$RemoveFromMoodboardImpl _value,
      $Res Function(_$RemoveFromMoodboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? itemId = null,
  }) {
    return _then(_$RemoveFromMoodboardImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromMoodboardImpl implements _RemoveFromMoodboard {
  const _$RemoveFromMoodboardImpl(this.userId, this.itemId);

  @override
  final String userId;
  @override
  final String itemId;

  @override
  String toString() {
    return 'MoodboardEvent.removeFromMoodboard(userId: $userId, itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromMoodboardImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromMoodboardImplCopyWith<_$RemoveFromMoodboardImpl> get copyWith =>
      __$$RemoveFromMoodboardImplCopyWithImpl<_$RemoveFromMoodboardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadMoodboard,
    required TResult Function(String userId, String imageUrl, String? caption)
        addToMoodboard,
    required TResult Function(String userId, String itemId) removeFromMoodboard,
  }) {
    return removeFromMoodboard(userId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadMoodboard,
    TResult? Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult? Function(String userId, String itemId)? removeFromMoodboard,
  }) {
    return removeFromMoodboard?.call(userId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadMoodboard,
    TResult Function(String userId, String imageUrl, String? caption)?
        addToMoodboard,
    TResult Function(String userId, String itemId)? removeFromMoodboard,
    required TResult orElse(),
  }) {
    if (removeFromMoodboard != null) {
      return removeFromMoodboard(userId, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMoodboard value) loadMoodboard,
    required TResult Function(_AddToMoodboard value) addToMoodboard,
    required TResult Function(_RemoveFromMoodboard value) removeFromMoodboard,
  }) {
    return removeFromMoodboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMoodboard value)? loadMoodboard,
    TResult? Function(_AddToMoodboard value)? addToMoodboard,
    TResult? Function(_RemoveFromMoodboard value)? removeFromMoodboard,
  }) {
    return removeFromMoodboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMoodboard value)? loadMoodboard,
    TResult Function(_AddToMoodboard value)? addToMoodboard,
    TResult Function(_RemoveFromMoodboard value)? removeFromMoodboard,
    required TResult orElse(),
  }) {
    if (removeFromMoodboard != null) {
      return removeFromMoodboard(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromMoodboard implements MoodboardEvent {
  const factory _RemoveFromMoodboard(final String userId, final String itemId) =
      _$RemoveFromMoodboardImpl;

  @override
  String get userId;
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveFromMoodboardImplCopyWith<_$RemoveFromMoodboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
