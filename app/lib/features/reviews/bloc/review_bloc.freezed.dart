// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId, int rating, String comment)
    submitReview,
    required TResult Function(String artistId) fetchArtistReviews,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, int rating, String comment)?
    submitReview,
    TResult? Function(String artistId)? fetchArtistReviews,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, int rating, String comment)?
    submitReview,
    TResult Function(String artistId)? fetchArtistReviews,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitReview value) submitReview,
    required TResult Function(_FetchArtistReviews value) fetchArtistReviews,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitReview value)? submitReview,
    TResult? Function(_FetchArtistReviews value)? fetchArtistReviews,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitReview value)? submitReview,
    TResult Function(_FetchArtistReviews value)? fetchArtistReviews,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
    ReviewEvent value,
    $Res Function(ReviewEvent) then,
  ) = _$ReviewEventCopyWithImpl<$Res, ReviewEvent>;
}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res, $Val extends ReviewEvent>
    implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitReviewImplCopyWith<$Res> {
  factory _$$SubmitReviewImplCopyWith(
    _$SubmitReviewImpl value,
    $Res Function(_$SubmitReviewImpl) then,
  ) = __$$SubmitReviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, int rating, String comment});
}

/// @nodoc
class __$$SubmitReviewImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$SubmitReviewImpl>
    implements _$$SubmitReviewImplCopyWith<$Res> {
  __$$SubmitReviewImplCopyWithImpl(
    _$SubmitReviewImpl _value,
    $Res Function(_$SubmitReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? rating = null,
    Object? comment = null,
  }) {
    return _then(
      _$SubmitReviewImpl(
        bookingId: null == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitReviewImpl implements _SubmitReview {
  const _$SubmitReviewImpl({
    required this.bookingId,
    required this.rating,
    required this.comment,
  });

  @override
  final String bookingId;
  @override
  final int rating;
  @override
  final String comment;

  @override
  String toString() {
    return 'ReviewEvent.submitReview(bookingId: $bookingId, rating: $rating, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitReviewImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, rating, comment);

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitReviewImplCopyWith<_$SubmitReviewImpl> get copyWith =>
      __$$SubmitReviewImplCopyWithImpl<_$SubmitReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId, int rating, String comment)
    submitReview,
    required TResult Function(String artistId) fetchArtistReviews,
  }) {
    return submitReview(bookingId, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, int rating, String comment)?
    submitReview,
    TResult? Function(String artistId)? fetchArtistReviews,
  }) {
    return submitReview?.call(bookingId, rating, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, int rating, String comment)?
    submitReview,
    TResult Function(String artistId)? fetchArtistReviews,
    required TResult orElse(),
  }) {
    if (submitReview != null) {
      return submitReview(bookingId, rating, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitReview value) submitReview,
    required TResult Function(_FetchArtistReviews value) fetchArtistReviews,
  }) {
    return submitReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitReview value)? submitReview,
    TResult? Function(_FetchArtistReviews value)? fetchArtistReviews,
  }) {
    return submitReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitReview value)? submitReview,
    TResult Function(_FetchArtistReviews value)? fetchArtistReviews,
    required TResult orElse(),
  }) {
    if (submitReview != null) {
      return submitReview(this);
    }
    return orElse();
  }
}

abstract class _SubmitReview implements ReviewEvent {
  const factory _SubmitReview({
    required final String bookingId,
    required final int rating,
    required final String comment,
  }) = _$SubmitReviewImpl;

  String get bookingId;
  int get rating;
  String get comment;

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitReviewImplCopyWith<_$SubmitReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchArtistReviewsImplCopyWith<$Res> {
  factory _$$FetchArtistReviewsImplCopyWith(
    _$FetchArtistReviewsImpl value,
    $Res Function(_$FetchArtistReviewsImpl) then,
  ) = __$$FetchArtistReviewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId});
}

/// @nodoc
class __$$FetchArtistReviewsImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$FetchArtistReviewsImpl>
    implements _$$FetchArtistReviewsImplCopyWith<$Res> {
  __$$FetchArtistReviewsImplCopyWithImpl(
    _$FetchArtistReviewsImpl _value,
    $Res Function(_$FetchArtistReviewsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? artistId = null}) {
    return _then(
      _$FetchArtistReviewsImpl(
        artistId: null == artistId
            ? _value.artistId
            : artistId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FetchArtistReviewsImpl implements _FetchArtistReviews {
  const _$FetchArtistReviewsImpl({required this.artistId});

  @override
  final String artistId;

  @override
  String toString() {
    return 'ReviewEvent.fetchArtistReviews(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchArtistReviewsImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchArtistReviewsImplCopyWith<_$FetchArtistReviewsImpl> get copyWith =>
      __$$FetchArtistReviewsImplCopyWithImpl<_$FetchArtistReviewsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bookingId, int rating, String comment)
    submitReview,
    required TResult Function(String artistId) fetchArtistReviews,
  }) {
    return fetchArtistReviews(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String bookingId, int rating, String comment)?
    submitReview,
    TResult? Function(String artistId)? fetchArtistReviews,
  }) {
    return fetchArtistReviews?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bookingId, int rating, String comment)?
    submitReview,
    TResult Function(String artistId)? fetchArtistReviews,
    required TResult orElse(),
  }) {
    if (fetchArtistReviews != null) {
      return fetchArtistReviews(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitReview value) submitReview,
    required TResult Function(_FetchArtistReviews value) fetchArtistReviews,
  }) {
    return fetchArtistReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitReview value)? submitReview,
    TResult? Function(_FetchArtistReviews value)? fetchArtistReviews,
  }) {
    return fetchArtistReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitReview value)? submitReview,
    TResult Function(_FetchArtistReviews value)? fetchArtistReviews,
    required TResult orElse(),
  }) {
    if (fetchArtistReviews != null) {
      return fetchArtistReviews(this);
    }
    return orElse();
  }
}

abstract class _FetchArtistReviews implements ReviewEvent {
  const factory _FetchArtistReviews({required final String artistId}) =
      _$FetchArtistReviewsImpl;

  String get artistId;

  /// Create a copy of ReviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchArtistReviewsImplCopyWith<_$FetchArtistReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
    ReviewState value,
    $Res Function(ReviewState) then,
  ) = _$ReviewStateCopyWithImpl<$Res, ReviewState>;
}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res, $Val extends ReviewState>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReviewState.initial()';
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
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
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
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReviewState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReviewState.loading()';
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
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
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
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReviewState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
    _$SubmittingImpl value,
    $Res Function(_$SubmittingImpl) then,
  ) = __$$SubmittingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
    _$SubmittingImpl _value,
    $Res Function(_$SubmittingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl();

  @override
  String toString() {
    return 'ReviewState.submitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements ReviewState {
  const factory _Submitting() = _$SubmittingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> reviews});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reviews = null}) {
    return _then(
      _$LoadedImpl(
        reviews: null == reviews
            ? _value._reviews
            : reviews // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<dynamic> reviews})
    : _reviews = reviews;

  final List<dynamic> _reviews;
  @override
  List<dynamic> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ReviewState.loaded(reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loaded(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ReviewState {
  const factory _Loaded({required final List<dynamic> reviews}) = _$LoadedImpl;

  List<dynamic> get reviews;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SuccessImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ReviewState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ReviewState {
  const factory _Success({required final String message}) = _$SuccessImpl;

  String get message;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ReviewState.error(message: $message)';
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

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() submitting,
    required TResult Function(List<dynamic> reviews) loaded,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? submitting,
    TResult? Function(List<dynamic> reviews)? loaded,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? submitting,
    TResult Function(List<dynamic> reviews)? loaded,
    TResult Function(String message)? success,
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
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReviewState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of ReviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
