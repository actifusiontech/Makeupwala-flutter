// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArtistProfile {

 String get id; String get userId; String get fullName; String? get bio; String? get category; String? get experience; String? get profileImageUrl; List<String> get portfolioUrls; List<ArtistService> get services; double get rating; int get reviewCount; String? get city; bool get isVerified; bool get isJobSeeker; ArtistKYC? get kyc; List<ArtistBundle> get bundles; List<ArtistBadge> get badges;
/// Create a copy of ArtistProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistProfileCopyWith<ArtistProfile> get copyWith => _$ArtistProfileCopyWithImpl<ArtistProfile>(this as ArtistProfile, _$identity);

  /// Serializes this ArtistProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.category, category) || other.category == category)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other.portfolioUrls, portfolioUrls)&&const DeepCollectionEquality().equals(other.services, services)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.city, city) || other.city == city)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isJobSeeker, isJobSeeker) || other.isJobSeeker == isJobSeeker)&&(identical(other.kyc, kyc) || other.kyc == kyc)&&const DeepCollectionEquality().equals(other.bundles, bundles)&&const DeepCollectionEquality().equals(other.badges, badges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,fullName,bio,category,experience,profileImageUrl,const DeepCollectionEquality().hash(portfolioUrls),const DeepCollectionEquality().hash(services),rating,reviewCount,city,isVerified,isJobSeeker,kyc,const DeepCollectionEquality().hash(bundles),const DeepCollectionEquality().hash(badges));

@override
String toString() {
  return 'ArtistProfile(id: $id, userId: $userId, fullName: $fullName, bio: $bio, category: $category, experience: $experience, profileImageUrl: $profileImageUrl, portfolioUrls: $portfolioUrls, services: $services, rating: $rating, reviewCount: $reviewCount, city: $city, isVerified: $isVerified, isJobSeeker: $isJobSeeker, kyc: $kyc, bundles: $bundles, badges: $badges)';
}


}

/// @nodoc
abstract mixin class $ArtistProfileCopyWith<$Res>  {
  factory $ArtistProfileCopyWith(ArtistProfile value, $Res Function(ArtistProfile) _then) = _$ArtistProfileCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String fullName, String? bio, String? category, String? experience, String? profileImageUrl, List<String> portfolioUrls, List<ArtistService> services, double rating, int reviewCount, String? city, bool isVerified, bool isJobSeeker, ArtistKYC? kyc, List<ArtistBundle> bundles, List<ArtistBadge> badges
});


$ArtistKYCCopyWith<$Res>? get kyc;

}
/// @nodoc
class _$ArtistProfileCopyWithImpl<$Res>
    implements $ArtistProfileCopyWith<$Res> {
  _$ArtistProfileCopyWithImpl(this._self, this._then);

  final ArtistProfile _self;
  final $Res Function(ArtistProfile) _then;

/// Create a copy of ArtistProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? fullName = null,Object? bio = freezed,Object? category = freezed,Object? experience = freezed,Object? profileImageUrl = freezed,Object? portfolioUrls = null,Object? services = null,Object? rating = null,Object? reviewCount = null,Object? city = freezed,Object? isVerified = null,Object? isJobSeeker = null,Object? kyc = freezed,Object? bundles = null,Object? badges = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,portfolioUrls: null == portfolioUrls ? _self.portfolioUrls : portfolioUrls // ignore: cast_nullable_to_non_nullable
as List<String>,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ArtistService>,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isJobSeeker: null == isJobSeeker ? _self.isJobSeeker : isJobSeeker // ignore: cast_nullable_to_non_nullable
as bool,kyc: freezed == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as ArtistKYC?,bundles: null == bundles ? _self.bundles : bundles // ignore: cast_nullable_to_non_nullable
as List<ArtistBundle>,badges: null == badges ? _self.badges : badges // ignore: cast_nullable_to_non_nullable
as List<ArtistBadge>,
  ));
}
/// Create a copy of ArtistProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArtistKYCCopyWith<$Res>? get kyc {
    if (_self.kyc == null) {
    return null;
  }

  return $ArtistKYCCopyWith<$Res>(_self.kyc!, (value) {
    return _then(_self.copyWith(kyc: value));
  });
}
}


/// Adds pattern-matching-related methods to [ArtistProfile].
extension ArtistProfilePatterns on ArtistProfile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistProfile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistProfile value)  $default,){
final _that = this;
switch (_that) {
case _ArtistProfile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistProfile value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistProfile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String fullName,  String? bio,  String? category,  String? experience,  String? profileImageUrl,  List<String> portfolioUrls,  List<ArtistService> services,  double rating,  int reviewCount,  String? city,  bool isVerified,  bool isJobSeeker,  ArtistKYC? kyc,  List<ArtistBundle> bundles,  List<ArtistBadge> badges)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistProfile() when $default != null:
return $default(_that.id,_that.userId,_that.fullName,_that.bio,_that.category,_that.experience,_that.profileImageUrl,_that.portfolioUrls,_that.services,_that.rating,_that.reviewCount,_that.city,_that.isVerified,_that.isJobSeeker,_that.kyc,_that.bundles,_that.badges);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String fullName,  String? bio,  String? category,  String? experience,  String? profileImageUrl,  List<String> portfolioUrls,  List<ArtistService> services,  double rating,  int reviewCount,  String? city,  bool isVerified,  bool isJobSeeker,  ArtistKYC? kyc,  List<ArtistBundle> bundles,  List<ArtistBadge> badges)  $default,) {final _that = this;
switch (_that) {
case _ArtistProfile():
return $default(_that.id,_that.userId,_that.fullName,_that.bio,_that.category,_that.experience,_that.profileImageUrl,_that.portfolioUrls,_that.services,_that.rating,_that.reviewCount,_that.city,_that.isVerified,_that.isJobSeeker,_that.kyc,_that.bundles,_that.badges);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String fullName,  String? bio,  String? category,  String? experience,  String? profileImageUrl,  List<String> portfolioUrls,  List<ArtistService> services,  double rating,  int reviewCount,  String? city,  bool isVerified,  bool isJobSeeker,  ArtistKYC? kyc,  List<ArtistBundle> bundles,  List<ArtistBadge> badges)?  $default,) {final _that = this;
switch (_that) {
case _ArtistProfile() when $default != null:
return $default(_that.id,_that.userId,_that.fullName,_that.bio,_that.category,_that.experience,_that.profileImageUrl,_that.portfolioUrls,_that.services,_that.rating,_that.reviewCount,_that.city,_that.isVerified,_that.isJobSeeker,_that.kyc,_that.bundles,_that.badges);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArtistProfile implements ArtistProfile {
  const _ArtistProfile({required this.id, required this.userId, required this.fullName, this.bio, this.category, this.experience, this.profileImageUrl, final  List<String> portfolioUrls = const [], final  List<ArtistService> services = const [], this.rating = 0.0, this.reviewCount = 0, this.city, this.isVerified = false, this.isJobSeeker = false, this.kyc, final  List<ArtistBundle> bundles = const [], final  List<ArtistBadge> badges = const []}): _portfolioUrls = portfolioUrls,_services = services,_bundles = bundles,_badges = badges;
  factory _ArtistProfile.fromJson(Map<String, dynamic> json) => _$ArtistProfileFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String fullName;
@override final  String? bio;
@override final  String? category;
@override final  String? experience;
@override final  String? profileImageUrl;
 final  List<String> _portfolioUrls;
@override@JsonKey() List<String> get portfolioUrls {
  if (_portfolioUrls is EqualUnmodifiableListView) return _portfolioUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_portfolioUrls);
}

 final  List<ArtistService> _services;
@override@JsonKey() List<ArtistService> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}

@override@JsonKey() final  double rating;
@override@JsonKey() final  int reviewCount;
@override final  String? city;
@override@JsonKey() final  bool isVerified;
@override@JsonKey() final  bool isJobSeeker;
@override final  ArtistKYC? kyc;
 final  List<ArtistBundle> _bundles;
@override@JsonKey() List<ArtistBundle> get bundles {
  if (_bundles is EqualUnmodifiableListView) return _bundles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bundles);
}

 final  List<ArtistBadge> _badges;
@override@JsonKey() List<ArtistBadge> get badges {
  if (_badges is EqualUnmodifiableListView) return _badges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badges);
}


/// Create a copy of ArtistProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistProfileCopyWith<_ArtistProfile> get copyWith => __$ArtistProfileCopyWithImpl<_ArtistProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.category, category) || other.category == category)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.profileImageUrl, profileImageUrl) || other.profileImageUrl == profileImageUrl)&&const DeepCollectionEquality().equals(other._portfolioUrls, _portfolioUrls)&&const DeepCollectionEquality().equals(other._services, _services)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.city, city) || other.city == city)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isJobSeeker, isJobSeeker) || other.isJobSeeker == isJobSeeker)&&(identical(other.kyc, kyc) || other.kyc == kyc)&&const DeepCollectionEquality().equals(other._bundles, _bundles)&&const DeepCollectionEquality().equals(other._badges, _badges));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,fullName,bio,category,experience,profileImageUrl,const DeepCollectionEquality().hash(_portfolioUrls),const DeepCollectionEquality().hash(_services),rating,reviewCount,city,isVerified,isJobSeeker,kyc,const DeepCollectionEquality().hash(_bundles),const DeepCollectionEquality().hash(_badges));

@override
String toString() {
  return 'ArtistProfile(id: $id, userId: $userId, fullName: $fullName, bio: $bio, category: $category, experience: $experience, profileImageUrl: $profileImageUrl, portfolioUrls: $portfolioUrls, services: $services, rating: $rating, reviewCount: $reviewCount, city: $city, isVerified: $isVerified, isJobSeeker: $isJobSeeker, kyc: $kyc, bundles: $bundles, badges: $badges)';
}


}

/// @nodoc
abstract mixin class _$ArtistProfileCopyWith<$Res> implements $ArtistProfileCopyWith<$Res> {
  factory _$ArtistProfileCopyWith(_ArtistProfile value, $Res Function(_ArtistProfile) _then) = __$ArtistProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String fullName, String? bio, String? category, String? experience, String? profileImageUrl, List<String> portfolioUrls, List<ArtistService> services, double rating, int reviewCount, String? city, bool isVerified, bool isJobSeeker, ArtistKYC? kyc, List<ArtistBundle> bundles, List<ArtistBadge> badges
});


@override $ArtistKYCCopyWith<$Res>? get kyc;

}
/// @nodoc
class __$ArtistProfileCopyWithImpl<$Res>
    implements _$ArtistProfileCopyWith<$Res> {
  __$ArtistProfileCopyWithImpl(this._self, this._then);

  final _ArtistProfile _self;
  final $Res Function(_ArtistProfile) _then;

/// Create a copy of ArtistProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? fullName = null,Object? bio = freezed,Object? category = freezed,Object? experience = freezed,Object? profileImageUrl = freezed,Object? portfolioUrls = null,Object? services = null,Object? rating = null,Object? reviewCount = null,Object? city = freezed,Object? isVerified = null,Object? isJobSeeker = null,Object? kyc = freezed,Object? bundles = null,Object? badges = null,}) {
  return _then(_ArtistProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,profileImageUrl: freezed == profileImageUrl ? _self.profileImageUrl : profileImageUrl // ignore: cast_nullable_to_non_nullable
as String?,portfolioUrls: null == portfolioUrls ? _self._portfolioUrls : portfolioUrls // ignore: cast_nullable_to_non_nullable
as List<String>,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ArtistService>,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isJobSeeker: null == isJobSeeker ? _self.isJobSeeker : isJobSeeker // ignore: cast_nullable_to_non_nullable
as bool,kyc: freezed == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as ArtistKYC?,bundles: null == bundles ? _self._bundles : bundles // ignore: cast_nullable_to_non_nullable
as List<ArtistBundle>,badges: null == badges ? _self._badges : badges // ignore: cast_nullable_to_non_nullable
as List<ArtistBadge>,
  ));
}

/// Create a copy of ArtistProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArtistKYCCopyWith<$Res>? get kyc {
    if (_self.kyc == null) {
    return null;
  }

  return $ArtistKYCCopyWith<$Res>(_self.kyc!, (value) {
    return _then(_self.copyWith(kyc: value));
  });
}
}


/// @nodoc
mixin _$ArtistService {

 String get id; String get name; double get price; String? get description; String? get duration;
/// Create a copy of ArtistService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistServiceCopyWith<ArtistService> get copyWith => _$ArtistServiceCopyWithImpl<ArtistService>(this as ArtistService, _$identity);

  /// Serializes this ArtistService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,description,duration);

@override
String toString() {
  return 'ArtistService(id: $id, name: $name, price: $price, description: $description, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $ArtistServiceCopyWith<$Res>  {
  factory $ArtistServiceCopyWith(ArtistService value, $Res Function(ArtistService) _then) = _$ArtistServiceCopyWithImpl;
@useResult
$Res call({
 String id, String name, double price, String? description, String? duration
});




}
/// @nodoc
class _$ArtistServiceCopyWithImpl<$Res>
    implements $ArtistServiceCopyWith<$Res> {
  _$ArtistServiceCopyWithImpl(this._self, this._then);

  final ArtistService _self;
  final $Res Function(ArtistService) _then;

/// Create a copy of ArtistService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? price = null,Object? description = freezed,Object? duration = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistService].
extension ArtistServicePatterns on ArtistService {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistService() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistService value)  $default,){
final _that = this;
switch (_that) {
case _ArtistService():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistService value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistService() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double price,  String? description,  String? duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistService() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.description,_that.duration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double price,  String? description,  String? duration)  $default,) {final _that = this;
switch (_that) {
case _ArtistService():
return $default(_that.id,_that.name,_that.price,_that.description,_that.duration);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double price,  String? description,  String? duration)?  $default,) {final _that = this;
switch (_that) {
case _ArtistService() when $default != null:
return $default(_that.id,_that.name,_that.price,_that.description,_that.duration);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArtistService implements ArtistService {
  const _ArtistService({required this.id, required this.name, required this.price, this.description, this.duration});
  factory _ArtistService.fromJson(Map<String, dynamic> json) => _$ArtistServiceFromJson(json);

@override final  String id;
@override final  String name;
@override final  double price;
@override final  String? description;
@override final  String? duration;

/// Create a copy of ArtistService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistServiceCopyWith<_ArtistService> get copyWith => __$ArtistServiceCopyWithImpl<_ArtistService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistService&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,price,description,duration);

@override
String toString() {
  return 'ArtistService(id: $id, name: $name, price: $price, description: $description, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$ArtistServiceCopyWith<$Res> implements $ArtistServiceCopyWith<$Res> {
  factory _$ArtistServiceCopyWith(_ArtistService value, $Res Function(_ArtistService) _then) = __$ArtistServiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double price, String? description, String? duration
});




}
/// @nodoc
class __$ArtistServiceCopyWithImpl<$Res>
    implements _$ArtistServiceCopyWith<$Res> {
  __$ArtistServiceCopyWithImpl(this._self, this._then);

  final _ArtistService _self;
  final $Res Function(_ArtistService) _then;

/// Create a copy of ArtistService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? price = null,Object? description = freezed,Object? duration = freezed,}) {
  return _then(_ArtistService(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ArtistKYC {

 String get id; String get status;// 'pending', 'approved', 'rejected'
 String? get idProofUrl; String? get addressProofUrl; String? get certificateUrl; String? get adminComments; DateTime? get submittedAt; DateTime? get updatedAt;
/// Create a copy of ArtistKYC
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistKYCCopyWith<ArtistKYC> get copyWith => _$ArtistKYCCopyWithImpl<ArtistKYC>(this as ArtistKYC, _$identity);

  /// Serializes this ArtistKYC to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistKYC&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.idProofUrl, idProofUrl) || other.idProofUrl == idProofUrl)&&(identical(other.addressProofUrl, addressProofUrl) || other.addressProofUrl == addressProofUrl)&&(identical(other.certificateUrl, certificateUrl) || other.certificateUrl == certificateUrl)&&(identical(other.adminComments, adminComments) || other.adminComments == adminComments)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,idProofUrl,addressProofUrl,certificateUrl,adminComments,submittedAt,updatedAt);

@override
String toString() {
  return 'ArtistKYC(id: $id, status: $status, idProofUrl: $idProofUrl, addressProofUrl: $addressProofUrl, certificateUrl: $certificateUrl, adminComments: $adminComments, submittedAt: $submittedAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ArtistKYCCopyWith<$Res>  {
  factory $ArtistKYCCopyWith(ArtistKYC value, $Res Function(ArtistKYC) _then) = _$ArtistKYCCopyWithImpl;
@useResult
$Res call({
 String id, String status, String? idProofUrl, String? addressProofUrl, String? certificateUrl, String? adminComments, DateTime? submittedAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ArtistKYCCopyWithImpl<$Res>
    implements $ArtistKYCCopyWith<$Res> {
  _$ArtistKYCCopyWithImpl(this._self, this._then);

  final ArtistKYC _self;
  final $Res Function(ArtistKYC) _then;

/// Create a copy of ArtistKYC
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = null,Object? idProofUrl = freezed,Object? addressProofUrl = freezed,Object? certificateUrl = freezed,Object? adminComments = freezed,Object? submittedAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,idProofUrl: freezed == idProofUrl ? _self.idProofUrl : idProofUrl // ignore: cast_nullable_to_non_nullable
as String?,addressProofUrl: freezed == addressProofUrl ? _self.addressProofUrl : addressProofUrl // ignore: cast_nullable_to_non_nullable
as String?,certificateUrl: freezed == certificateUrl ? _self.certificateUrl : certificateUrl // ignore: cast_nullable_to_non_nullable
as String?,adminComments: freezed == adminComments ? _self.adminComments : adminComments // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistKYC].
extension ArtistKYCPatterns on ArtistKYC {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistKYC value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistKYC() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistKYC value)  $default,){
final _that = this;
switch (_that) {
case _ArtistKYC():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistKYC value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistKYC() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String status,  String? idProofUrl,  String? addressProofUrl,  String? certificateUrl,  String? adminComments,  DateTime? submittedAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistKYC() when $default != null:
return $default(_that.id,_that.status,_that.idProofUrl,_that.addressProofUrl,_that.certificateUrl,_that.adminComments,_that.submittedAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String status,  String? idProofUrl,  String? addressProofUrl,  String? certificateUrl,  String? adminComments,  DateTime? submittedAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ArtistKYC():
return $default(_that.id,_that.status,_that.idProofUrl,_that.addressProofUrl,_that.certificateUrl,_that.adminComments,_that.submittedAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String status,  String? idProofUrl,  String? addressProofUrl,  String? certificateUrl,  String? adminComments,  DateTime? submittedAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ArtistKYC() when $default != null:
return $default(_that.id,_that.status,_that.idProofUrl,_that.addressProofUrl,_that.certificateUrl,_that.adminComments,_that.submittedAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArtistKYC implements ArtistKYC {
  const _ArtistKYC({required this.id, required this.status, this.idProofUrl, this.addressProofUrl, this.certificateUrl, this.adminComments, this.submittedAt, this.updatedAt});
  factory _ArtistKYC.fromJson(Map<String, dynamic> json) => _$ArtistKYCFromJson(json);

@override final  String id;
@override final  String status;
// 'pending', 'approved', 'rejected'
@override final  String? idProofUrl;
@override final  String? addressProofUrl;
@override final  String? certificateUrl;
@override final  String? adminComments;
@override final  DateTime? submittedAt;
@override final  DateTime? updatedAt;

/// Create a copy of ArtistKYC
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistKYCCopyWith<_ArtistKYC> get copyWith => __$ArtistKYCCopyWithImpl<_ArtistKYC>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistKYCToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistKYC&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.idProofUrl, idProofUrl) || other.idProofUrl == idProofUrl)&&(identical(other.addressProofUrl, addressProofUrl) || other.addressProofUrl == addressProofUrl)&&(identical(other.certificateUrl, certificateUrl) || other.certificateUrl == certificateUrl)&&(identical(other.adminComments, adminComments) || other.adminComments == adminComments)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,idProofUrl,addressProofUrl,certificateUrl,adminComments,submittedAt,updatedAt);

@override
String toString() {
  return 'ArtistKYC(id: $id, status: $status, idProofUrl: $idProofUrl, addressProofUrl: $addressProofUrl, certificateUrl: $certificateUrl, adminComments: $adminComments, submittedAt: $submittedAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ArtistKYCCopyWith<$Res> implements $ArtistKYCCopyWith<$Res> {
  factory _$ArtistKYCCopyWith(_ArtistKYC value, $Res Function(_ArtistKYC) _then) = __$ArtistKYCCopyWithImpl;
@override @useResult
$Res call({
 String id, String status, String? idProofUrl, String? addressProofUrl, String? certificateUrl, String? adminComments, DateTime? submittedAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ArtistKYCCopyWithImpl<$Res>
    implements _$ArtistKYCCopyWith<$Res> {
  __$ArtistKYCCopyWithImpl(this._self, this._then);

  final _ArtistKYC _self;
  final $Res Function(_ArtistKYC) _then;

/// Create a copy of ArtistKYC
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = null,Object? idProofUrl = freezed,Object? addressProofUrl = freezed,Object? certificateUrl = freezed,Object? adminComments = freezed,Object? submittedAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ArtistKYC(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,idProofUrl: freezed == idProofUrl ? _self.idProofUrl : idProofUrl // ignore: cast_nullable_to_non_nullable
as String?,addressProofUrl: freezed == addressProofUrl ? _self.addressProofUrl : addressProofUrl // ignore: cast_nullable_to_non_nullable
as String?,certificateUrl: freezed == certificateUrl ? _self.certificateUrl : certificateUrl // ignore: cast_nullable_to_non_nullable
as String?,adminComments: freezed == adminComments ? _self.adminComments : adminComments // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$ArtistBundle {

 String get id; String get name; String? get description; double get basePrice; double get discountPrice; String get currency; bool get isActive; List<ArtistBundleItem> get items;
/// Create a copy of ArtistBundle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistBundleCopyWith<ArtistBundle> get copyWith => _$ArtistBundleCopyWithImpl<ArtistBundle>(this as ArtistBundle, _$identity);

  /// Serializes this ArtistBundle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistBundle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.discountPrice, discountPrice) || other.discountPrice == discountPrice)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,basePrice,discountPrice,currency,isActive,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ArtistBundle(id: $id, name: $name, description: $description, basePrice: $basePrice, discountPrice: $discountPrice, currency: $currency, isActive: $isActive, items: $items)';
}


}

/// @nodoc
abstract mixin class $ArtistBundleCopyWith<$Res>  {
  factory $ArtistBundleCopyWith(ArtistBundle value, $Res Function(ArtistBundle) _then) = _$ArtistBundleCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, double basePrice, double discountPrice, String currency, bool isActive, List<ArtistBundleItem> items
});




}
/// @nodoc
class _$ArtistBundleCopyWithImpl<$Res>
    implements $ArtistBundleCopyWith<$Res> {
  _$ArtistBundleCopyWithImpl(this._self, this._then);

  final ArtistBundle _self;
  final $Res Function(ArtistBundle) _then;

/// Create a copy of ArtistBundle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? basePrice = null,Object? discountPrice = null,Object? currency = null,Object? isActive = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as double,discountPrice: null == discountPrice ? _self.discountPrice : discountPrice // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ArtistBundleItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistBundle].
extension ArtistBundlePatterns on ArtistBundle {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistBundle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistBundle() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistBundle value)  $default,){
final _that = this;
switch (_that) {
case _ArtistBundle():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistBundle value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistBundle() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  double basePrice,  double discountPrice,  String currency,  bool isActive,  List<ArtistBundleItem> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistBundle() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.basePrice,_that.discountPrice,_that.currency,_that.isActive,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  double basePrice,  double discountPrice,  String currency,  bool isActive,  List<ArtistBundleItem> items)  $default,) {final _that = this;
switch (_that) {
case _ArtistBundle():
return $default(_that.id,_that.name,_that.description,_that.basePrice,_that.discountPrice,_that.currency,_that.isActive,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  double basePrice,  double discountPrice,  String currency,  bool isActive,  List<ArtistBundleItem> items)?  $default,) {final _that = this;
switch (_that) {
case _ArtistBundle() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.basePrice,_that.discountPrice,_that.currency,_that.isActive,_that.items);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArtistBundle implements ArtistBundle {
  const _ArtistBundle({required this.id, required this.name, this.description, required this.basePrice, required this.discountPrice, this.currency = 'INR', this.isActive = true, final  List<ArtistBundleItem> items = const []}): _items = items;
  factory _ArtistBundle.fromJson(Map<String, dynamic> json) => _$ArtistBundleFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  double basePrice;
@override final  double discountPrice;
@override@JsonKey() final  String currency;
@override@JsonKey() final  bool isActive;
 final  List<ArtistBundleItem> _items;
@override@JsonKey() List<ArtistBundleItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ArtistBundle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistBundleCopyWith<_ArtistBundle> get copyWith => __$ArtistBundleCopyWithImpl<_ArtistBundle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistBundleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistBundle&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.discountPrice, discountPrice) || other.discountPrice == discountPrice)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,basePrice,discountPrice,currency,isActive,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ArtistBundle(id: $id, name: $name, description: $description, basePrice: $basePrice, discountPrice: $discountPrice, currency: $currency, isActive: $isActive, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ArtistBundleCopyWith<$Res> implements $ArtistBundleCopyWith<$Res> {
  factory _$ArtistBundleCopyWith(_ArtistBundle value, $Res Function(_ArtistBundle) _then) = __$ArtistBundleCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, double basePrice, double discountPrice, String currency, bool isActive, List<ArtistBundleItem> items
});




}
/// @nodoc
class __$ArtistBundleCopyWithImpl<$Res>
    implements _$ArtistBundleCopyWith<$Res> {
  __$ArtistBundleCopyWithImpl(this._self, this._then);

  final _ArtistBundle _self;
  final $Res Function(_ArtistBundle) _then;

/// Create a copy of ArtistBundle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? basePrice = null,Object? discountPrice = null,Object? currency = null,Object? isActive = null,Object? items = null,}) {
  return _then(_ArtistBundle(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as double,discountPrice: null == discountPrice ? _self.discountPrice : discountPrice // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ArtistBundleItem>,
  ));
}


}


/// @nodoc
mixin _$ArtistBundleItem {

 String get serviceId; String get serviceName; int get quantity;
/// Create a copy of ArtistBundleItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistBundleItemCopyWith<ArtistBundleItem> get copyWith => _$ArtistBundleItemCopyWithImpl<ArtistBundleItem>(this as ArtistBundleItem, _$identity);

  /// Serializes this ArtistBundleItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistBundleItem&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceId,serviceName,quantity);

@override
String toString() {
  return 'ArtistBundleItem(serviceId: $serviceId, serviceName: $serviceName, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ArtistBundleItemCopyWith<$Res>  {
  factory $ArtistBundleItemCopyWith(ArtistBundleItem value, $Res Function(ArtistBundleItem) _then) = _$ArtistBundleItemCopyWithImpl;
@useResult
$Res call({
 String serviceId, String serviceName, int quantity
});




}
/// @nodoc
class _$ArtistBundleItemCopyWithImpl<$Res>
    implements $ArtistBundleItemCopyWith<$Res> {
  _$ArtistBundleItemCopyWithImpl(this._self, this._then);

  final ArtistBundleItem _self;
  final $Res Function(ArtistBundleItem) _then;

/// Create a copy of ArtistBundleItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceId = null,Object? serviceName = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistBundleItem].
extension ArtistBundleItemPatterns on ArtistBundleItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistBundleItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistBundleItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistBundleItem value)  $default,){
final _that = this;
switch (_that) {
case _ArtistBundleItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistBundleItem value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistBundleItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serviceId,  String serviceName,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistBundleItem() when $default != null:
return $default(_that.serviceId,_that.serviceName,_that.quantity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serviceId,  String serviceName,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _ArtistBundleItem():
return $default(_that.serviceId,_that.serviceName,_that.quantity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serviceId,  String serviceName,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _ArtistBundleItem() when $default != null:
return $default(_that.serviceId,_that.serviceName,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArtistBundleItem implements ArtistBundleItem {
  const _ArtistBundleItem({required this.serviceId, required this.serviceName, required this.quantity});
  factory _ArtistBundleItem.fromJson(Map<String, dynamic> json) => _$ArtistBundleItemFromJson(json);

@override final  String serviceId;
@override final  String serviceName;
@override final  int quantity;

/// Create a copy of ArtistBundleItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistBundleItemCopyWith<_ArtistBundleItem> get copyWith => __$ArtistBundleItemCopyWithImpl<_ArtistBundleItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistBundleItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistBundleItem&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceId,serviceName,quantity);

@override
String toString() {
  return 'ArtistBundleItem(serviceId: $serviceId, serviceName: $serviceName, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ArtistBundleItemCopyWith<$Res> implements $ArtistBundleItemCopyWith<$Res> {
  factory _$ArtistBundleItemCopyWith(_ArtistBundleItem value, $Res Function(_ArtistBundleItem) _then) = __$ArtistBundleItemCopyWithImpl;
@override @useResult
$Res call({
 String serviceId, String serviceName, int quantity
});




}
/// @nodoc
class __$ArtistBundleItemCopyWithImpl<$Res>
    implements _$ArtistBundleItemCopyWith<$Res> {
  __$ArtistBundleItemCopyWithImpl(this._self, this._then);

  final _ArtistBundleItem _self;
  final $Res Function(_ArtistBundleItem) _then;

/// Create a copy of ArtistBundleItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? serviceName = null,Object? quantity = null,}) {
  return _then(_ArtistBundleItem(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ArtistBadge {

 String get name; String get type; String? get iconUrl; String? get issuedAt;
/// Create a copy of ArtistBadge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArtistBadgeCopyWith<ArtistBadge> get copyWith => _$ArtistBadgeCopyWithImpl<ArtistBadge>(this as ArtistBadge, _$identity);

  /// Serializes this ArtistBadge to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArtistBadge&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,iconUrl,issuedAt);

@override
String toString() {
  return 'ArtistBadge(name: $name, type: $type, iconUrl: $iconUrl, issuedAt: $issuedAt)';
}


}

/// @nodoc
abstract mixin class $ArtistBadgeCopyWith<$Res>  {
  factory $ArtistBadgeCopyWith(ArtistBadge value, $Res Function(ArtistBadge) _then) = _$ArtistBadgeCopyWithImpl;
@useResult
$Res call({
 String name, String type, String? iconUrl, String? issuedAt
});




}
/// @nodoc
class _$ArtistBadgeCopyWithImpl<$Res>
    implements $ArtistBadgeCopyWith<$Res> {
  _$ArtistBadgeCopyWithImpl(this._self, this._then);

  final ArtistBadge _self;
  final $Res Function(ArtistBadge) _then;

/// Create a copy of ArtistBadge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? iconUrl = freezed,Object? issuedAt = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,issuedAt: freezed == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ArtistBadge].
extension ArtistBadgePatterns on ArtistBadge {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArtistBadge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArtistBadge() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArtistBadge value)  $default,){
final _that = this;
switch (_that) {
case _ArtistBadge():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArtistBadge value)?  $default,){
final _that = this;
switch (_that) {
case _ArtistBadge() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String type,  String? iconUrl,  String? issuedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArtistBadge() when $default != null:
return $default(_that.name,_that.type,_that.iconUrl,_that.issuedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String type,  String? iconUrl,  String? issuedAt)  $default,) {final _that = this;
switch (_that) {
case _ArtistBadge():
return $default(_that.name,_that.type,_that.iconUrl,_that.issuedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String type,  String? iconUrl,  String? issuedAt)?  $default,) {final _that = this;
switch (_that) {
case _ArtistBadge() when $default != null:
return $default(_that.name,_that.type,_that.iconUrl,_that.issuedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ArtistBadge implements ArtistBadge {
  const _ArtistBadge({required this.name, required this.type, this.iconUrl, this.issuedAt});
  factory _ArtistBadge.fromJson(Map<String, dynamic> json) => _$ArtistBadgeFromJson(json);

@override final  String name;
@override final  String type;
@override final  String? iconUrl;
@override final  String? issuedAt;

/// Create a copy of ArtistBadge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArtistBadgeCopyWith<_ArtistBadge> get copyWith => __$ArtistBadgeCopyWithImpl<_ArtistBadge>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArtistBadgeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArtistBadge&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,iconUrl,issuedAt);

@override
String toString() {
  return 'ArtistBadge(name: $name, type: $type, iconUrl: $iconUrl, issuedAt: $issuedAt)';
}


}

/// @nodoc
abstract mixin class _$ArtistBadgeCopyWith<$Res> implements $ArtistBadgeCopyWith<$Res> {
  factory _$ArtistBadgeCopyWith(_ArtistBadge value, $Res Function(_ArtistBadge) _then) = __$ArtistBadgeCopyWithImpl;
@override @useResult
$Res call({
 String name, String type, String? iconUrl, String? issuedAt
});




}
/// @nodoc
class __$ArtistBadgeCopyWithImpl<$Res>
    implements _$ArtistBadgeCopyWith<$Res> {
  __$ArtistBadgeCopyWithImpl(this._self, this._then);

  final _ArtistBadge _self;
  final $Res Function(_ArtistBadge) _then;

/// Create a copy of ArtistBadge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? iconUrl = freezed,Object? issuedAt = freezed,}) {
  return _then(_ArtistBadge(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,issuedAt: freezed == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
