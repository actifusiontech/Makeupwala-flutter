// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ArtistProfile _$ArtistProfileFromJson(Map<String, dynamic> json) {
  return _ArtistProfile.fromJson(json);
}

/// @nodoc
mixin _$ArtistProfile {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  List<String> get portfolioUrls => throw _privateConstructorUsedError;
  List<ArtistService> get services => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isJobSeeker => throw _privateConstructorUsedError;
  ArtistKYC? get kyc => throw _privateConstructorUsedError;
  List<ArtistBundle> get bundles => throw _privateConstructorUsedError;
  List<ArtistBadge> get badges => throw _privateConstructorUsedError;

  /// Serializes this ArtistProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistProfileCopyWith<ArtistProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistProfileCopyWith<$Res> {
  factory $ArtistProfileCopyWith(
    ArtistProfile value,
    $Res Function(ArtistProfile) then,
  ) = _$ArtistProfileCopyWithImpl<$Res, ArtistProfile>;
  @useResult
  $Res call({
    String id,
    String userId,
    String fullName,
    String? bio,
    String? category,
    String? experience,
    String? profileImageUrl,
    List<String> portfolioUrls,
    List<ArtistService> services,
    double rating,
    int reviewCount,
    String? city,
    bool isVerified,
    bool isJobSeeker,
    ArtistKYC? kyc,
    List<ArtistBundle> bundles,
    List<ArtistBadge> badges,
  });

  $ArtistKYCCopyWith<$Res>? get kyc;
}

/// @nodoc
class _$ArtistProfileCopyWithImpl<$Res, $Val extends ArtistProfile>
    implements $ArtistProfileCopyWith<$Res> {
  _$ArtistProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? fullName = null,
    Object? bio = freezed,
    Object? category = freezed,
    Object? experience = freezed,
    Object? profileImageUrl = freezed,
    Object? portfolioUrls = null,
    Object? services = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? city = freezed,
    Object? isVerified = null,
    Object? isJobSeeker = null,
    Object? kyc = freezed,
    Object? bundles = null,
    Object? badges = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            experience: freezed == experience
                ? _value.experience
                : experience // ignore: cast_nullable_to_non_nullable
                      as String?,
            profileImageUrl: freezed == profileImageUrl
                ? _value.profileImageUrl
                : profileImageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            portfolioUrls: null == portfolioUrls
                ? _value.portfolioUrls
                : portfolioUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            services: null == services
                ? _value.services
                : services // ignore: cast_nullable_to_non_nullable
                      as List<ArtistService>,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewCount: null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            city: freezed == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String?,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            isJobSeeker: null == isJobSeeker
                ? _value.isJobSeeker
                : isJobSeeker // ignore: cast_nullable_to_non_nullable
                      as bool,
            kyc: freezed == kyc
                ? _value.kyc
                : kyc // ignore: cast_nullable_to_non_nullable
                      as ArtistKYC?,
            bundles: null == bundles
                ? _value.bundles
                : bundles // ignore: cast_nullable_to_non_nullable
                      as List<ArtistBundle>,
            badges: null == badges
                ? _value.badges
                : badges // ignore: cast_nullable_to_non_nullable
                      as List<ArtistBadge>,
          )
          as $Val,
    );
  }

  /// Create a copy of ArtistProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ArtistKYCCopyWith<$Res>? get kyc {
    if (_value.kyc == null) {
      return null;
    }

    return $ArtistKYCCopyWith<$Res>(_value.kyc!, (value) {
      return _then(_value.copyWith(kyc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistProfileImplCopyWith<$Res>
    implements $ArtistProfileCopyWith<$Res> {
  factory _$$ArtistProfileImplCopyWith(
    _$ArtistProfileImpl value,
    $Res Function(_$ArtistProfileImpl) then,
  ) = __$$ArtistProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String fullName,
    String? bio,
    String? category,
    String? experience,
    String? profileImageUrl,
    List<String> portfolioUrls,
    List<ArtistService> services,
    double rating,
    int reviewCount,
    String? city,
    bool isVerified,
    bool isJobSeeker,
    ArtistKYC? kyc,
    List<ArtistBundle> bundles,
    List<ArtistBadge> badges,
  });

  @override
  $ArtistKYCCopyWith<$Res>? get kyc;
}

/// @nodoc
class __$$ArtistProfileImplCopyWithImpl<$Res>
    extends _$ArtistProfileCopyWithImpl<$Res, _$ArtistProfileImpl>
    implements _$$ArtistProfileImplCopyWith<$Res> {
  __$$ArtistProfileImplCopyWithImpl(
    _$ArtistProfileImpl _value,
    $Res Function(_$ArtistProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtistProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? fullName = null,
    Object? bio = freezed,
    Object? category = freezed,
    Object? experience = freezed,
    Object? profileImageUrl = freezed,
    Object? portfolioUrls = null,
    Object? services = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? city = freezed,
    Object? isVerified = null,
    Object? isJobSeeker = null,
    Object? kyc = freezed,
    Object? bundles = null,
    Object? badges = null,
  }) {
    return _then(
      _$ArtistProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        experience: freezed == experience
            ? _value.experience
            : experience // ignore: cast_nullable_to_non_nullable
                  as String?,
        profileImageUrl: freezed == profileImageUrl
            ? _value.profileImageUrl
            : profileImageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        portfolioUrls: null == portfolioUrls
            ? _value._portfolioUrls
            : portfolioUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        services: null == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<ArtistService>,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewCount: null == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        city: freezed == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        isJobSeeker: null == isJobSeeker
            ? _value.isJobSeeker
            : isJobSeeker // ignore: cast_nullable_to_non_nullable
                  as bool,
        kyc: freezed == kyc
            ? _value.kyc
            : kyc // ignore: cast_nullable_to_non_nullable
                  as ArtistKYC?,
        bundles: null == bundles
            ? _value._bundles
            : bundles // ignore: cast_nullable_to_non_nullable
                  as List<ArtistBundle>,
        badges: null == badges
            ? _value._badges
            : badges // ignore: cast_nullable_to_non_nullable
                  as List<ArtistBadge>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistProfileImpl implements _ArtistProfile {
  const _$ArtistProfileImpl({
    required this.id,
    required this.userId,
    required this.fullName,
    this.bio,
    this.category,
    this.experience,
    this.profileImageUrl,
    final List<String> portfolioUrls = const [],
    final List<ArtistService> services = const [],
    this.rating = 0.0,
    this.reviewCount = 0,
    this.city,
    this.isVerified = false,
    this.isJobSeeker = false,
    this.kyc,
    final List<ArtistBundle> bundles = const [],
    final List<ArtistBadge> badges = const [],
  }) : _portfolioUrls = portfolioUrls,
       _services = services,
       _bundles = bundles,
       _badges = badges;

  factory _$ArtistProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String fullName;
  @override
  final String? bio;
  @override
  final String? category;
  @override
  final String? experience;
  @override
  final String? profileImageUrl;
  final List<String> _portfolioUrls;
  @override
  @JsonKey()
  List<String> get portfolioUrls {
    if (_portfolioUrls is EqualUnmodifiableListView) return _portfolioUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolioUrls);
  }

  final List<ArtistService> _services;
  @override
  @JsonKey()
  List<ArtistService> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewCount;
  @override
  final String? city;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  @JsonKey()
  final bool isJobSeeker;
  @override
  final ArtistKYC? kyc;
  final List<ArtistBundle> _bundles;
  @override
  @JsonKey()
  List<ArtistBundle> get bundles {
    if (_bundles is EqualUnmodifiableListView) return _bundles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bundles);
  }

  final List<ArtistBadge> _badges;
  @override
  @JsonKey()
  List<ArtistBadge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  String toString() {
    return 'ArtistProfile(id: $id, userId: $userId, fullName: $fullName, bio: $bio, category: $category, experience: $experience, profileImageUrl: $profileImageUrl, portfolioUrls: $portfolioUrls, services: $services, rating: $rating, reviewCount: $reviewCount, city: $city, isVerified: $isVerified, isJobSeeker: $isJobSeeker, kyc: $kyc, bundles: $bundles, badges: $badges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            const DeepCollectionEquality().equals(
              other._portfolioUrls,
              _portfolioUrls,
            ) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isJobSeeker, isJobSeeker) ||
                other.isJobSeeker == isJobSeeker) &&
            (identical(other.kyc, kyc) || other.kyc == kyc) &&
            const DeepCollectionEquality().equals(other._bundles, _bundles) &&
            const DeepCollectionEquality().equals(other._badges, _badges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    fullName,
    bio,
    category,
    experience,
    profileImageUrl,
    const DeepCollectionEquality().hash(_portfolioUrls),
    const DeepCollectionEquality().hash(_services),
    rating,
    reviewCount,
    city,
    isVerified,
    isJobSeeker,
    kyc,
    const DeepCollectionEquality().hash(_bundles),
    const DeepCollectionEquality().hash(_badges),
  );

  /// Create a copy of ArtistProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistProfileImplCopyWith<_$ArtistProfileImpl> get copyWith =>
      __$$ArtistProfileImplCopyWithImpl<_$ArtistProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistProfileImplToJson(this);
  }
}

abstract class _ArtistProfile implements ArtistProfile {
  const factory _ArtistProfile({
    required final String id,
    required final String userId,
    required final String fullName,
    final String? bio,
    final String? category,
    final String? experience,
    final String? profileImageUrl,
    final List<String> portfolioUrls,
    final List<ArtistService> services,
    final double rating,
    final int reviewCount,
    final String? city,
    final bool isVerified,
    final bool isJobSeeker,
    final ArtistKYC? kyc,
    final List<ArtistBundle> bundles,
    final List<ArtistBadge> badges,
  }) = _$ArtistProfileImpl;

  factory _ArtistProfile.fromJson(Map<String, dynamic> json) =
      _$ArtistProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get fullName;
  @override
  String? get bio;
  @override
  String? get category;
  @override
  String? get experience;
  @override
  String? get profileImageUrl;
  @override
  List<String> get portfolioUrls;
  @override
  List<ArtistService> get services;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  String? get city;
  @override
  bool get isVerified;
  @override
  bool get isJobSeeker;
  @override
  ArtistKYC? get kyc;
  @override
  List<ArtistBundle> get bundles;
  @override
  List<ArtistBadge> get badges;

  /// Create a copy of ArtistProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistProfileImplCopyWith<_$ArtistProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistService _$ArtistServiceFromJson(Map<String, dynamic> json) {
  return _ArtistService.fromJson(json);
}

/// @nodoc
mixin _$ArtistService {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;

  /// Serializes this ArtistService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistServiceCopyWith<ArtistService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistServiceCopyWith<$Res> {
  factory $ArtistServiceCopyWith(
    ArtistService value,
    $Res Function(ArtistService) then,
  ) = _$ArtistServiceCopyWithImpl<$Res, ArtistService>;
  @useResult
  $Res call({
    String id,
    String name,
    double price,
    String? description,
    String? duration,
  });
}

/// @nodoc
class _$ArtistServiceCopyWithImpl<$Res, $Val extends ArtistService>
    implements $ArtistServiceCopyWith<$Res> {
  _$ArtistServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? description = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            duration: freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtistServiceImplCopyWith<$Res>
    implements $ArtistServiceCopyWith<$Res> {
  factory _$$ArtistServiceImplCopyWith(
    _$ArtistServiceImpl value,
    $Res Function(_$ArtistServiceImpl) then,
  ) = __$$ArtistServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    double price,
    String? description,
    String? duration,
  });
}

/// @nodoc
class __$$ArtistServiceImplCopyWithImpl<$Res>
    extends _$ArtistServiceCopyWithImpl<$Res, _$ArtistServiceImpl>
    implements _$$ArtistServiceImplCopyWith<$Res> {
  __$$ArtistServiceImplCopyWithImpl(
    _$ArtistServiceImpl _value,
    $Res Function(_$ArtistServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtistService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? description = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      _$ArtistServiceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        duration: freezed == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistServiceImpl implements _ArtistService {
  const _$ArtistServiceImpl({
    required this.id,
    required this.name,
    required this.price,
    this.description,
    this.duration,
  });

  factory _$ArtistServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistServiceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String? description;
  @override
  final String? duration;

  @override
  String toString() {
    return 'ArtistService(id: $id, name: $name, price: $price, description: $description, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, description, duration);

  /// Create a copy of ArtistService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistServiceImplCopyWith<_$ArtistServiceImpl> get copyWith =>
      __$$ArtistServiceImplCopyWithImpl<_$ArtistServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistServiceImplToJson(this);
  }
}

abstract class _ArtistService implements ArtistService {
  const factory _ArtistService({
    required final String id,
    required final String name,
    required final double price,
    final String? description,
    final String? duration,
  }) = _$ArtistServiceImpl;

  factory _ArtistService.fromJson(Map<String, dynamic> json) =
      _$ArtistServiceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String? get description;
  @override
  String? get duration;

  /// Create a copy of ArtistService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistServiceImplCopyWith<_$ArtistServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistKYC _$ArtistKYCFromJson(Map<String, dynamic> json) {
  return _ArtistKYC.fromJson(json);
}

/// @nodoc
mixin _$ArtistKYC {
  String get id => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'approved', 'rejected'
  String? get idProofUrl => throw _privateConstructorUsedError;
  String? get addressProofUrl => throw _privateConstructorUsedError;
  String? get certificateUrl => throw _privateConstructorUsedError;
  String? get adminComments => throw _privateConstructorUsedError;
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ArtistKYC to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistKYC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistKYCCopyWith<ArtistKYC> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistKYCCopyWith<$Res> {
  factory $ArtistKYCCopyWith(ArtistKYC value, $Res Function(ArtistKYC) then) =
      _$ArtistKYCCopyWithImpl<$Res, ArtistKYC>;
  @useResult
  $Res call({
    String id,
    String status,
    String? idProofUrl,
    String? addressProofUrl,
    String? certificateUrl,
    String? adminComments,
    DateTime? submittedAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ArtistKYCCopyWithImpl<$Res, $Val extends ArtistKYC>
    implements $ArtistKYCCopyWith<$Res> {
  _$ArtistKYCCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistKYC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? idProofUrl = freezed,
    Object? addressProofUrl = freezed,
    Object? certificateUrl = freezed,
    Object? adminComments = freezed,
    Object? submittedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            idProofUrl: freezed == idProofUrl
                ? _value.idProofUrl
                : idProofUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            addressProofUrl: freezed == addressProofUrl
                ? _value.addressProofUrl
                : addressProofUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            certificateUrl: freezed == certificateUrl
                ? _value.certificateUrl
                : certificateUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            adminComments: freezed == adminComments
                ? _value.adminComments
                : adminComments // ignore: cast_nullable_to_non_nullable
                      as String?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtistKYCImplCopyWith<$Res>
    implements $ArtistKYCCopyWith<$Res> {
  factory _$$ArtistKYCImplCopyWith(
    _$ArtistKYCImpl value,
    $Res Function(_$ArtistKYCImpl) then,
  ) = __$$ArtistKYCImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String status,
    String? idProofUrl,
    String? addressProofUrl,
    String? certificateUrl,
    String? adminComments,
    DateTime? submittedAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ArtistKYCImplCopyWithImpl<$Res>
    extends _$ArtistKYCCopyWithImpl<$Res, _$ArtistKYCImpl>
    implements _$$ArtistKYCImplCopyWith<$Res> {
  __$$ArtistKYCImplCopyWithImpl(
    _$ArtistKYCImpl _value,
    $Res Function(_$ArtistKYCImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtistKYC
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? idProofUrl = freezed,
    Object? addressProofUrl = freezed,
    Object? certificateUrl = freezed,
    Object? adminComments = freezed,
    Object? submittedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ArtistKYCImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        idProofUrl: freezed == idProofUrl
            ? _value.idProofUrl
            : idProofUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        addressProofUrl: freezed == addressProofUrl
            ? _value.addressProofUrl
            : addressProofUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        certificateUrl: freezed == certificateUrl
            ? _value.certificateUrl
            : certificateUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminComments: freezed == adminComments
            ? _value.adminComments
            : adminComments // ignore: cast_nullable_to_non_nullable
                  as String?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistKYCImpl implements _ArtistKYC {
  const _$ArtistKYCImpl({
    required this.id,
    required this.status,
    this.idProofUrl,
    this.addressProofUrl,
    this.certificateUrl,
    this.adminComments,
    this.submittedAt,
    this.updatedAt,
  });

  factory _$ArtistKYCImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistKYCImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  // 'pending', 'approved', 'rejected'
  @override
  final String? idProofUrl;
  @override
  final String? addressProofUrl;
  @override
  final String? certificateUrl;
  @override
  final String? adminComments;
  @override
  final DateTime? submittedAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ArtistKYC(id: $id, status: $status, idProofUrl: $idProofUrl, addressProofUrl: $addressProofUrl, certificateUrl: $certificateUrl, adminComments: $adminComments, submittedAt: $submittedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistKYCImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.idProofUrl, idProofUrl) ||
                other.idProofUrl == idProofUrl) &&
            (identical(other.addressProofUrl, addressProofUrl) ||
                other.addressProofUrl == addressProofUrl) &&
            (identical(other.certificateUrl, certificateUrl) ||
                other.certificateUrl == certificateUrl) &&
            (identical(other.adminComments, adminComments) ||
                other.adminComments == adminComments) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    idProofUrl,
    addressProofUrl,
    certificateUrl,
    adminComments,
    submittedAt,
    updatedAt,
  );

  /// Create a copy of ArtistKYC
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistKYCImplCopyWith<_$ArtistKYCImpl> get copyWith =>
      __$$ArtistKYCImplCopyWithImpl<_$ArtistKYCImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistKYCImplToJson(this);
  }
}

abstract class _ArtistKYC implements ArtistKYC {
  const factory _ArtistKYC({
    required final String id,
    required final String status,
    final String? idProofUrl,
    final String? addressProofUrl,
    final String? certificateUrl,
    final String? adminComments,
    final DateTime? submittedAt,
    final DateTime? updatedAt,
  }) = _$ArtistKYCImpl;

  factory _ArtistKYC.fromJson(Map<String, dynamic> json) =
      _$ArtistKYCImpl.fromJson;

  @override
  String get id;
  @override
  String get status; // 'pending', 'approved', 'rejected'
  @override
  String? get idProofUrl;
  @override
  String? get addressProofUrl;
  @override
  String? get certificateUrl;
  @override
  String? get adminComments;
  @override
  DateTime? get submittedAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ArtistKYC
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistKYCImplCopyWith<_$ArtistKYCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistBundle _$ArtistBundleFromJson(Map<String, dynamic> json) {
  return _ArtistBundle.fromJson(json);
}

/// @nodoc
mixin _$ArtistBundle {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  double get discountPrice => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<ArtistBundleItem> get items => throw _privateConstructorUsedError;

  /// Serializes this ArtistBundle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistBundleCopyWith<ArtistBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistBundleCopyWith<$Res> {
  factory $ArtistBundleCopyWith(
    ArtistBundle value,
    $Res Function(ArtistBundle) then,
  ) = _$ArtistBundleCopyWithImpl<$Res, ArtistBundle>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    double basePrice,
    double discountPrice,
    String currency,
    bool isActive,
    List<ArtistBundleItem> items,
  });
}

/// @nodoc
class _$ArtistBundleCopyWithImpl<$Res, $Val extends ArtistBundle>
    implements $ArtistBundleCopyWith<$Res> {
  _$ArtistBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? basePrice = null,
    Object? discountPrice = null,
    Object? currency = null,
    Object? isActive = null,
    Object? items = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
            discountPrice: null == discountPrice
                ? _value.discountPrice
                : discountPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ArtistBundleItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtistBundleImplCopyWith<$Res>
    implements $ArtistBundleCopyWith<$Res> {
  factory _$$ArtistBundleImplCopyWith(
    _$ArtistBundleImpl value,
    $Res Function(_$ArtistBundleImpl) then,
  ) = __$$ArtistBundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    double basePrice,
    double discountPrice,
    String currency,
    bool isActive,
    List<ArtistBundleItem> items,
  });
}

/// @nodoc
class __$$ArtistBundleImplCopyWithImpl<$Res>
    extends _$ArtistBundleCopyWithImpl<$Res, _$ArtistBundleImpl>
    implements _$$ArtistBundleImplCopyWith<$Res> {
  __$$ArtistBundleImplCopyWithImpl(
    _$ArtistBundleImpl _value,
    $Res Function(_$ArtistBundleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtistBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? basePrice = null,
    Object? discountPrice = null,
    Object? currency = null,
    Object? isActive = null,
    Object? items = null,
  }) {
    return _then(
      _$ArtistBundleImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
        discountPrice: null == discountPrice
            ? _value.discountPrice
            : discountPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ArtistBundleItem>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistBundleImpl implements _ArtistBundle {
  const _$ArtistBundleImpl({
    required this.id,
    required this.name,
    this.description,
    required this.basePrice,
    required this.discountPrice,
    this.currency = 'INR',
    this.isActive = true,
    final List<ArtistBundleItem> items = const [],
  }) : _items = items;

  factory _$ArtistBundleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistBundleImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double basePrice;
  @override
  final double discountPrice;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final bool isActive;
  final List<ArtistBundleItem> _items;
  @override
  @JsonKey()
  List<ArtistBundleItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ArtistBundle(id: $id, name: $name, description: $description, basePrice: $basePrice, discountPrice: $discountPrice, currency: $currency, isActive: $isActive, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistBundleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    basePrice,
    discountPrice,
    currency,
    isActive,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of ArtistBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistBundleImplCopyWith<_$ArtistBundleImpl> get copyWith =>
      __$$ArtistBundleImplCopyWithImpl<_$ArtistBundleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistBundleImplToJson(this);
  }
}

abstract class _ArtistBundle implements ArtistBundle {
  const factory _ArtistBundle({
    required final String id,
    required final String name,
    final String? description,
    required final double basePrice,
    required final double discountPrice,
    final String currency,
    final bool isActive,
    final List<ArtistBundleItem> items,
  }) = _$ArtistBundleImpl;

  factory _ArtistBundle.fromJson(Map<String, dynamic> json) =
      _$ArtistBundleImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get basePrice;
  @override
  double get discountPrice;
  @override
  String get currency;
  @override
  bool get isActive;
  @override
  List<ArtistBundleItem> get items;

  /// Create a copy of ArtistBundle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistBundleImplCopyWith<_$ArtistBundleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistBundleItem _$ArtistBundleItemFromJson(Map<String, dynamic> json) {
  return _ArtistBundleItem.fromJson(json);
}

/// @nodoc
mixin _$ArtistBundleItem {
  String get serviceId => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this ArtistBundleItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistBundleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistBundleItemCopyWith<ArtistBundleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistBundleItemCopyWith<$Res> {
  factory $ArtistBundleItemCopyWith(
    ArtistBundleItem value,
    $Res Function(ArtistBundleItem) then,
  ) = _$ArtistBundleItemCopyWithImpl<$Res, ArtistBundleItem>;
  @useResult
  $Res call({String serviceId, String serviceName, int quantity});
}

/// @nodoc
class _$ArtistBundleItemCopyWithImpl<$Res, $Val extends ArtistBundleItem>
    implements $ArtistBundleItemCopyWith<$Res> {
  _$ArtistBundleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistBundleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? serviceName = null,
    Object? quantity = null,
  }) {
    return _then(
      _value.copyWith(
            serviceId: null == serviceId
                ? _value.serviceId
                : serviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            serviceName: null == serviceName
                ? _value.serviceName
                : serviceName // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtistBundleItemImplCopyWith<$Res>
    implements $ArtistBundleItemCopyWith<$Res> {
  factory _$$ArtistBundleItemImplCopyWith(
    _$ArtistBundleItemImpl value,
    $Res Function(_$ArtistBundleItemImpl) then,
  ) = __$$ArtistBundleItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String serviceId, String serviceName, int quantity});
}

/// @nodoc
class __$$ArtistBundleItemImplCopyWithImpl<$Res>
    extends _$ArtistBundleItemCopyWithImpl<$Res, _$ArtistBundleItemImpl>
    implements _$$ArtistBundleItemImplCopyWith<$Res> {
  __$$ArtistBundleItemImplCopyWithImpl(
    _$ArtistBundleItemImpl _value,
    $Res Function(_$ArtistBundleItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtistBundleItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
    Object? serviceName = null,
    Object? quantity = null,
  }) {
    return _then(
      _$ArtistBundleItemImpl(
        serviceId: null == serviceId
            ? _value.serviceId
            : serviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        serviceName: null == serviceName
            ? _value.serviceName
            : serviceName // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistBundleItemImpl implements _ArtistBundleItem {
  const _$ArtistBundleItemImpl({
    required this.serviceId,
    required this.serviceName,
    required this.quantity,
  });

  factory _$ArtistBundleItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistBundleItemImplFromJson(json);

  @override
  final String serviceId;
  @override
  final String serviceName;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ArtistBundleItem(serviceId: $serviceId, serviceName: $serviceName, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistBundleItemImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, serviceId, serviceName, quantity);

  /// Create a copy of ArtistBundleItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistBundleItemImplCopyWith<_$ArtistBundleItemImpl> get copyWith =>
      __$$ArtistBundleItemImplCopyWithImpl<_$ArtistBundleItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistBundleItemImplToJson(this);
  }
}

abstract class _ArtistBundleItem implements ArtistBundleItem {
  const factory _ArtistBundleItem({
    required final String serviceId,
    required final String serviceName,
    required final int quantity,
  }) = _$ArtistBundleItemImpl;

  factory _ArtistBundleItem.fromJson(Map<String, dynamic> json) =
      _$ArtistBundleItemImpl.fromJson;

  @override
  String get serviceId;
  @override
  String get serviceName;
  @override
  int get quantity;

  /// Create a copy of ArtistBundleItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistBundleItemImplCopyWith<_$ArtistBundleItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistBadge _$ArtistBadgeFromJson(Map<String, dynamic> json) {
  return _ArtistBadge.fromJson(json);
}

/// @nodoc
mixin _$ArtistBadge {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get issuedAt => throw _privateConstructorUsedError;

  /// Serializes this ArtistBadge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ArtistBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArtistBadgeCopyWith<ArtistBadge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistBadgeCopyWith<$Res> {
  factory $ArtistBadgeCopyWith(
    ArtistBadge value,
    $Res Function(ArtistBadge) then,
  ) = _$ArtistBadgeCopyWithImpl<$Res, ArtistBadge>;
  @useResult
  $Res call({String name, String type, String? iconUrl, String? issuedAt});
}

/// @nodoc
class _$ArtistBadgeCopyWithImpl<$Res, $Val extends ArtistBadge>
    implements $ArtistBadgeCopyWith<$Res> {
  _$ArtistBadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArtistBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? iconUrl = freezed,
    Object? issuedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            iconUrl: freezed == iconUrl
                ? _value.iconUrl
                : iconUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            issuedAt: freezed == issuedAt
                ? _value.issuedAt
                : issuedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArtistBadgeImplCopyWith<$Res>
    implements $ArtistBadgeCopyWith<$Res> {
  factory _$$ArtistBadgeImplCopyWith(
    _$ArtistBadgeImpl value,
    $Res Function(_$ArtistBadgeImpl) then,
  ) = __$$ArtistBadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type, String? iconUrl, String? issuedAt});
}

/// @nodoc
class __$$ArtistBadgeImplCopyWithImpl<$Res>
    extends _$ArtistBadgeCopyWithImpl<$Res, _$ArtistBadgeImpl>
    implements _$$ArtistBadgeImplCopyWith<$Res> {
  __$$ArtistBadgeImplCopyWithImpl(
    _$ArtistBadgeImpl _value,
    $Res Function(_$ArtistBadgeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArtistBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? iconUrl = freezed,
    Object? issuedAt = freezed,
  }) {
    return _then(
      _$ArtistBadgeImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        iconUrl: freezed == iconUrl
            ? _value.iconUrl
            : iconUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        issuedAt: freezed == issuedAt
            ? _value.issuedAt
            : issuedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ArtistBadgeImpl implements _ArtistBadge {
  const _$ArtistBadgeImpl({
    required this.name,
    required this.type,
    this.iconUrl,
    this.issuedAt,
  });

  factory _$ArtistBadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistBadgeImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String? iconUrl;
  @override
  final String? issuedAt;

  @override
  String toString() {
    return 'ArtistBadge(name: $name, type: $type, iconUrl: $iconUrl, issuedAt: $issuedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistBadgeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, iconUrl, issuedAt);

  /// Create a copy of ArtistBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistBadgeImplCopyWith<_$ArtistBadgeImpl> get copyWith =>
      __$$ArtistBadgeImplCopyWithImpl<_$ArtistBadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistBadgeImplToJson(this);
  }
}

abstract class _ArtistBadge implements ArtistBadge {
  const factory _ArtistBadge({
    required final String name,
    required final String type,
    final String? iconUrl,
    final String? issuedAt,
  }) = _$ArtistBadgeImpl;

  factory _ArtistBadge.fromJson(Map<String, dynamic> json) =
      _$ArtistBadgeImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String? get iconUrl;
  @override
  String? get issuedAt;

  /// Create a copy of ArtistBadge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArtistBadgeImplCopyWith<_$ArtistBadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
