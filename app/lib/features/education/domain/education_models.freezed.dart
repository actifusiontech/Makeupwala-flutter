// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Institute _$InstituteFromJson(Map<String, dynamic> json) {
  return _Institute.fromJson(json);
}

/// @nodoc
mixin _$Institute {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this Institute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Institute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstituteCopyWith<Institute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstituteCopyWith<$Res> {
  factory $InstituteCopyWith(Institute value, $Res Function(Institute) then) =
      _$InstituteCopyWithImpl<$Res, Institute>;
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String? logoUrl,
    String? website,
    String? address,
    bool isVerified,
  });
}

/// @nodoc
class _$InstituteCopyWithImpl<$Res, $Val extends Institute>
    implements $InstituteCopyWith<$Res> {
  _$InstituteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Institute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? website = freezed,
    Object? address = freezed,
    Object? isVerified = null,
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
            logoUrl: freezed == logoUrl
                ? _value.logoUrl
                : logoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            website: freezed == website
                ? _value.website
                : website // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            isVerified: null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InstituteImplCopyWith<$Res>
    implements $InstituteCopyWith<$Res> {
  factory _$$InstituteImplCopyWith(
    _$InstituteImpl value,
    $Res Function(_$InstituteImpl) then,
  ) = __$$InstituteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? description,
    String? logoUrl,
    String? website,
    String? address,
    bool isVerified,
  });
}

/// @nodoc
class __$$InstituteImplCopyWithImpl<$Res>
    extends _$InstituteCopyWithImpl<$Res, _$InstituteImpl>
    implements _$$InstituteImplCopyWith<$Res> {
  __$$InstituteImplCopyWithImpl(
    _$InstituteImpl _value,
    $Res Function(_$InstituteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Institute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? website = freezed,
    Object? address = freezed,
    Object? isVerified = null,
  }) {
    return _then(
      _$InstituteImpl(
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
        logoUrl: freezed == logoUrl
            ? _value.logoUrl
            : logoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        website: freezed == website
            ? _value.website
            : website // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        isVerified: null == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InstituteImpl implements _Institute {
  const _$InstituteImpl({
    required this.id,
    required this.name,
    this.description,
    this.logoUrl,
    this.website,
    this.address,
    this.isVerified = false,
  });

  factory _$InstituteImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstituteImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? logoUrl;
  @override
  final String? website;
  @override
  final String? address;
  @override
  @JsonKey()
  final bool isVerified;

  @override
  String toString() {
    return 'Institute(id: $id, name: $name, description: $description, logoUrl: $logoUrl, website: $website, address: $address, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstituteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    logoUrl,
    website,
    address,
    isVerified,
  );

  /// Create a copy of Institute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstituteImplCopyWith<_$InstituteImpl> get copyWith =>
      __$$InstituteImplCopyWithImpl<_$InstituteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstituteImplToJson(this);
  }
}

abstract class _Institute implements Institute {
  const factory _Institute({
    required final String id,
    required final String name,
    final String? description,
    final String? logoUrl,
    final String? website,
    final String? address,
    final bool isVerified,
  }) = _$InstituteImpl;

  factory _Institute.fromJson(Map<String, dynamic> json) =
      _$InstituteImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get logoUrl;
  @override
  String? get website;
  @override
  String? get address;
  @override
  bool get isVerified;

  /// Create a copy of Institute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstituteImplCopyWith<_$InstituteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get instituteId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  double get feeAmount => throw _privateConstructorUsedError;
  int get durationWeeks => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  List<Lesson>? get lessons => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call({
    String id,
    String instituteId,
    String title,
    String? description,
    String? thumbnailUrl,
    String? category,
    double feeAmount,
    int durationWeeks,
    String level,
    List<Lesson>? lessons,
  });
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instituteId = null,
    Object? title = null,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
    Object? category = freezed,
    Object? feeAmount = null,
    Object? durationWeeks = null,
    Object? level = null,
    Object? lessons = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            instituteId: null == instituteId
                ? _value.instituteId
                : instituteId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            thumbnailUrl: freezed == thumbnailUrl
                ? _value.thumbnailUrl
                : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            feeAmount: null == feeAmount
                ? _value.feeAmount
                : feeAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            durationWeeks: null == durationWeeks
                ? _value.durationWeeks
                : durationWeeks // ignore: cast_nullable_to_non_nullable
                      as int,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as String,
            lessons: freezed == lessons
                ? _value.lessons
                : lessons // ignore: cast_nullable_to_non_nullable
                      as List<Lesson>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
    _$CourseImpl value,
    $Res Function(_$CourseImpl) then,
  ) = __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String instituteId,
    String title,
    String? description,
    String? thumbnailUrl,
    String? category,
    double feeAmount,
    int durationWeeks,
    String level,
    List<Lesson>? lessons,
  });
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
    _$CourseImpl _value,
    $Res Function(_$CourseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instituteId = null,
    Object? title = null,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
    Object? category = freezed,
    Object? feeAmount = null,
    Object? durationWeeks = null,
    Object? level = null,
    Object? lessons = freezed,
  }) {
    return _then(
      _$CourseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        instituteId: null == instituteId
            ? _value.instituteId
            : instituteId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        thumbnailUrl: freezed == thumbnailUrl
            ? _value.thumbnailUrl
            : thumbnailUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        feeAmount: null == feeAmount
            ? _value.feeAmount
            : feeAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        durationWeeks: null == durationWeeks
            ? _value.durationWeeks
            : durationWeeks // ignore: cast_nullable_to_non_nullable
                  as int,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as String,
        lessons: freezed == lessons
            ? _value._lessons
            : lessons // ignore: cast_nullable_to_non_nullable
                  as List<Lesson>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl({
    required this.id,
    required this.instituteId,
    required this.title,
    this.description,
    this.thumbnailUrl,
    this.category,
    this.feeAmount = 0.0,
    this.durationWeeks = 0,
    this.level = 'beginner',
    final List<Lesson>? lessons,
  }) : _lessons = lessons;

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String id;
  @override
  final String instituteId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? thumbnailUrl;
  @override
  final String? category;
  @override
  @JsonKey()
  final double feeAmount;
  @override
  @JsonKey()
  final int durationWeeks;
  @override
  @JsonKey()
  final String level;
  final List<Lesson>? _lessons;
  @override
  List<Lesson>? get lessons {
    final value = _lessons;
    if (value == null) return null;
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Course(id: $id, instituteId: $instituteId, title: $title, description: $description, thumbnailUrl: $thumbnailUrl, category: $category, feeAmount: $feeAmount, durationWeeks: $durationWeeks, level: $level, lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.feeAmount, feeAmount) ||
                other.feeAmount == feeAmount) &&
            (identical(other.durationWeeks, durationWeeks) ||
                other.durationWeeks == durationWeeks) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    instituteId,
    title,
    description,
    thumbnailUrl,
    category,
    feeAmount,
    durationWeeks,
    level,
    const DeepCollectionEquality().hash(_lessons),
  );

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(this);
  }
}

abstract class _Course implements Course {
  const factory _Course({
    required final String id,
    required final String instituteId,
    required final String title,
    final String? description,
    final String? thumbnailUrl,
    final String? category,
    final double feeAmount,
    final int durationWeeks,
    final String level,
    final List<Lesson>? lessons,
  }) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String get id;
  @override
  String get instituteId;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get thumbnailUrl;
  @override
  String? get category;
  @override
  double get feeAmount;
  @override
  int get durationWeeks;
  @override
  String get level;
  @override
  List<Lesson>? get lessons;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String? get contentText => throw _privateConstructorUsedError;
  int get sequenceOrder => throw _privateConstructorUsedError;
  bool get isPreview => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call({
    String id,
    String courseId,
    String title,
    String? description,
    String videoUrl,
    String? contentText,
    int sequenceOrder,
    bool isPreview,
    bool isCompleted,
  });
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? description = freezed,
    Object? videoUrl = null,
    Object? contentText = freezed,
    Object? sequenceOrder = null,
    Object? isPreview = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            courseId: null == courseId
                ? _value.courseId
                : courseId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            videoUrl: null == videoUrl
                ? _value.videoUrl
                : videoUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            contentText: freezed == contentText
                ? _value.contentText
                : contentText // ignore: cast_nullable_to_non_nullable
                      as String?,
            sequenceOrder: null == sequenceOrder
                ? _value.sequenceOrder
                : sequenceOrder // ignore: cast_nullable_to_non_nullable
                      as int,
            isPreview: null == isPreview
                ? _value.isPreview
                : isPreview // ignore: cast_nullable_to_non_nullable
                      as bool,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
    _$LessonImpl value,
    $Res Function(_$LessonImpl) then,
  ) = __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String courseId,
    String title,
    String? description,
    String videoUrl,
    String? contentText,
    int sequenceOrder,
    bool isPreview,
    bool isCompleted,
  });
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
    _$LessonImpl _value,
    $Res Function(_$LessonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? description = freezed,
    Object? videoUrl = null,
    Object? contentText = freezed,
    Object? sequenceOrder = null,
    Object? isPreview = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _$LessonImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        courseId: null == courseId
            ? _value.courseId
            : courseId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        videoUrl: null == videoUrl
            ? _value.videoUrl
            : videoUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        contentText: freezed == contentText
            ? _value.contentText
            : contentText // ignore: cast_nullable_to_non_nullable
                  as String?,
        sequenceOrder: null == sequenceOrder
            ? _value.sequenceOrder
            : sequenceOrder // ignore: cast_nullable_to_non_nullable
                  as int,
        isPreview: null == isPreview
            ? _value.isPreview
            : isPreview // ignore: cast_nullable_to_non_nullable
                  as bool,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl({
    required this.id,
    required this.courseId,
    required this.title,
    this.description,
    required this.videoUrl,
    this.contentText,
    required this.sequenceOrder,
    this.isPreview = false,
    this.isCompleted = false,
  });

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String videoUrl;
  @override
  final String? contentText;
  @override
  final int sequenceOrder;
  @override
  @JsonKey()
  final bool isPreview;
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'Lesson(id: $id, courseId: $courseId, title: $title, description: $description, videoUrl: $videoUrl, contentText: $contentText, sequenceOrder: $sequenceOrder, isPreview: $isPreview, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.sequenceOrder, sequenceOrder) ||
                other.sequenceOrder == sequenceOrder) &&
            (identical(other.isPreview, isPreview) ||
                other.isPreview == isPreview) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    courseId,
    title,
    description,
    videoUrl,
    contentText,
    sequenceOrder,
    isPreview,
    isCompleted,
  );

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(this);
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson({
    required final String id,
    required final String courseId,
    required final String title,
    final String? description,
    required final String videoUrl,
    final String? contentText,
    required final int sequenceOrder,
    final bool isPreview,
    final bool isCompleted,
  }) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get videoUrl;
  @override
  String? get contentText;
  @override
  int get sequenceOrder;
  @override
  bool get isPreview;
  @override
  bool get isCompleted;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Enrollment _$EnrollmentFromJson(Map<String, dynamic> json) {
  return _Enrollment.fromJson(json);
}

/// @nodoc
mixin _$Enrollment {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get progressPercentage => throw _privateConstructorUsedError;
  DateTime get enrolledAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  Course? get course => throw _privateConstructorUsedError;

  /// Serializes this Enrollment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnrollmentCopyWith<Enrollment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnrollmentCopyWith<$Res> {
  factory $EnrollmentCopyWith(
    Enrollment value,
    $Res Function(Enrollment) then,
  ) = _$EnrollmentCopyWithImpl<$Res, Enrollment>;
  @useResult
  $Res call({
    String id,
    String courseId,
    String studentId,
    String status,
    int progressPercentage,
    DateTime enrolledAt,
    DateTime? completedAt,
    Course? course,
  });

  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class _$EnrollmentCopyWithImpl<$Res, $Val extends Enrollment>
    implements $EnrollmentCopyWith<$Res> {
  _$EnrollmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? studentId = null,
    Object? status = null,
    Object? progressPercentage = null,
    Object? enrolledAt = null,
    Object? completedAt = freezed,
    Object? course = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            courseId: null == courseId
                ? _value.courseId
                : courseId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            progressPercentage: null == progressPercentage
                ? _value.progressPercentage
                : progressPercentage // ignore: cast_nullable_to_non_nullable
                      as int,
            enrolledAt: null == enrolledAt
                ? _value.enrolledAt
                : enrolledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            course: freezed == course
                ? _value.course
                : course // ignore: cast_nullable_to_non_nullable
                      as Course?,
          )
          as $Val,
    );
  }

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnrollmentImplCopyWith<$Res>
    implements $EnrollmentCopyWith<$Res> {
  factory _$$EnrollmentImplCopyWith(
    _$EnrollmentImpl value,
    $Res Function(_$EnrollmentImpl) then,
  ) = __$$EnrollmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String courseId,
    String studentId,
    String status,
    int progressPercentage,
    DateTime enrolledAt,
    DateTime? completedAt,
    Course? course,
  });

  @override
  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class __$$EnrollmentImplCopyWithImpl<$Res>
    extends _$EnrollmentCopyWithImpl<$Res, _$EnrollmentImpl>
    implements _$$EnrollmentImplCopyWith<$Res> {
  __$$EnrollmentImplCopyWithImpl(
    _$EnrollmentImpl _value,
    $Res Function(_$EnrollmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? studentId = null,
    Object? status = null,
    Object? progressPercentage = null,
    Object? enrolledAt = null,
    Object? completedAt = freezed,
    Object? course = freezed,
  }) {
    return _then(
      _$EnrollmentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        courseId: null == courseId
            ? _value.courseId
            : courseId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        progressPercentage: null == progressPercentage
            ? _value.progressPercentage
            : progressPercentage // ignore: cast_nullable_to_non_nullable
                  as int,
        enrolledAt: null == enrolledAt
            ? _value.enrolledAt
            : enrolledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        course: freezed == course
            ? _value.course
            : course // ignore: cast_nullable_to_non_nullable
                  as Course?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EnrollmentImpl implements _Enrollment {
  const _$EnrollmentImpl({
    required this.id,
    required this.courseId,
    required this.studentId,
    this.status = 'enrolled',
    this.progressPercentage = 0,
    required this.enrolledAt,
    this.completedAt,
    this.course,
  });

  factory _$EnrollmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnrollmentImplFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String studentId;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final int progressPercentage;
  @override
  final DateTime enrolledAt;
  @override
  final DateTime? completedAt;
  @override
  final Course? course;

  @override
  String toString() {
    return 'Enrollment(id: $id, courseId: $courseId, studentId: $studentId, status: $status, progressPercentage: $progressPercentage, enrolledAt: $enrolledAt, completedAt: $completedAt, course: $course)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnrollmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progressPercentage, progressPercentage) ||
                other.progressPercentage == progressPercentage) &&
            (identical(other.enrolledAt, enrolledAt) ||
                other.enrolledAt == enrolledAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.course, course) || other.course == course));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    courseId,
    studentId,
    status,
    progressPercentage,
    enrolledAt,
    completedAt,
    course,
  );

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnrollmentImplCopyWith<_$EnrollmentImpl> get copyWith =>
      __$$EnrollmentImplCopyWithImpl<_$EnrollmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnrollmentImplToJson(this);
  }
}

abstract class _Enrollment implements Enrollment {
  const factory _Enrollment({
    required final String id,
    required final String courseId,
    required final String studentId,
    final String status,
    final int progressPercentage,
    required final DateTime enrolledAt,
    final DateTime? completedAt,
    final Course? course,
  }) = _$EnrollmentImpl;

  factory _Enrollment.fromJson(Map<String, dynamic> json) =
      _$EnrollmentImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get studentId;
  @override
  String get status;
  @override
  int get progressPercentage;
  @override
  DateTime get enrolledAt;
  @override
  DateTime? get completedAt;
  @override
  Course? get course;

  /// Create a copy of Enrollment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnrollmentImplCopyWith<_$EnrollmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlacementListing _$PlacementListingFromJson(Map<String, dynamic> json) {
  return _PlacementListing.fromJson(json);
}

/// @nodoc
mixin _$PlacementListing {
  String get id => throw _privateConstructorUsedError;
  String get instituteId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get stipendAmount => throw _privateConstructorUsedError;
  String get listingType => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this PlacementListing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlacementListing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacementListingCopyWith<PlacementListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacementListingCopyWith<$Res> {
  factory $PlacementListingCopyWith(
    PlacementListing value,
    $Res Function(PlacementListing) then,
  ) = _$PlacementListingCopyWithImpl<$Res, PlacementListing>;
  @useResult
  $Res call({
    String id,
    String instituteId,
    String title,
    String companyName,
    String? location,
    String? description,
    double? stipendAmount,
    String listingType,
    bool isActive,
  });
}

/// @nodoc
class _$PlacementListingCopyWithImpl<$Res, $Val extends PlacementListing>
    implements $PlacementListingCopyWith<$Res> {
  _$PlacementListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacementListing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instituteId = null,
    Object? title = null,
    Object? companyName = null,
    Object? location = freezed,
    Object? description = freezed,
    Object? stipendAmount = freezed,
    Object? listingType = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            instituteId: null == instituteId
                ? _value.instituteId
                : instituteId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            companyName: null == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                      as String,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            stipendAmount: freezed == stipendAmount
                ? _value.stipendAmount
                : stipendAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            listingType: null == listingType
                ? _value.listingType
                : listingType // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlacementListingImplCopyWith<$Res>
    implements $PlacementListingCopyWith<$Res> {
  factory _$$PlacementListingImplCopyWith(
    _$PlacementListingImpl value,
    $Res Function(_$PlacementListingImpl) then,
  ) = __$$PlacementListingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String instituteId,
    String title,
    String companyName,
    String? location,
    String? description,
    double? stipendAmount,
    String listingType,
    bool isActive,
  });
}

/// @nodoc
class __$$PlacementListingImplCopyWithImpl<$Res>
    extends _$PlacementListingCopyWithImpl<$Res, _$PlacementListingImpl>
    implements _$$PlacementListingImplCopyWith<$Res> {
  __$$PlacementListingImplCopyWithImpl(
    _$PlacementListingImpl _value,
    $Res Function(_$PlacementListingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlacementListing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instituteId = null,
    Object? title = null,
    Object? companyName = null,
    Object? location = freezed,
    Object? description = freezed,
    Object? stipendAmount = freezed,
    Object? listingType = null,
    Object? isActive = null,
  }) {
    return _then(
      _$PlacementListingImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        instituteId: null == instituteId
            ? _value.instituteId
            : instituteId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        companyName: null == companyName
            ? _value.companyName
            : companyName // ignore: cast_nullable_to_non_nullable
                  as String,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        stipendAmount: freezed == stipendAmount
            ? _value.stipendAmount
            : stipendAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        listingType: null == listingType
            ? _value.listingType
            : listingType // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacementListingImpl implements _PlacementListing {
  const _$PlacementListingImpl({
    required this.id,
    required this.instituteId,
    required this.title,
    required this.companyName,
    this.location,
    this.description,
    this.stipendAmount,
    this.listingType = 'job',
    this.isActive = true,
  });

  factory _$PlacementListingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacementListingImplFromJson(json);

  @override
  final String id;
  @override
  final String instituteId;
  @override
  final String title;
  @override
  final String companyName;
  @override
  final String? location;
  @override
  final String? description;
  @override
  final double? stipendAmount;
  @override
  @JsonKey()
  final String listingType;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'PlacementListing(id: $id, instituteId: $instituteId, title: $title, companyName: $companyName, location: $location, description: $description, stipendAmount: $stipendAmount, listingType: $listingType, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacementListingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stipendAmount, stipendAmount) ||
                other.stipendAmount == stipendAmount) &&
            (identical(other.listingType, listingType) ||
                other.listingType == listingType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    instituteId,
    title,
    companyName,
    location,
    description,
    stipendAmount,
    listingType,
    isActive,
  );

  /// Create a copy of PlacementListing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacementListingImplCopyWith<_$PlacementListingImpl> get copyWith =>
      __$$PlacementListingImplCopyWithImpl<_$PlacementListingImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacementListingImplToJson(this);
  }
}

abstract class _PlacementListing implements PlacementListing {
  const factory _PlacementListing({
    required final String id,
    required final String instituteId,
    required final String title,
    required final String companyName,
    final String? location,
    final String? description,
    final double? stipendAmount,
    final String listingType,
    final bool isActive,
  }) = _$PlacementListingImpl;

  factory _PlacementListing.fromJson(Map<String, dynamic> json) =
      _$PlacementListingImpl.fromJson;

  @override
  String get id;
  @override
  String get instituteId;
  @override
  String get title;
  @override
  String get companyName;
  @override
  String? get location;
  @override
  String? get description;
  @override
  double? get stipendAmount;
  @override
  String get listingType;
  @override
  bool get isActive;

  /// Create a copy of PlacementListing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacementListingImplCopyWith<_$PlacementListingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Batch _$BatchFromJson(Map<String, dynamic> json) {
  return _Batch.fromJson(json);
}

/// @nodoc
mixin _$Batch {
  String get id => throw _privateConstructorUsedError;
  String get instituteId => throw _privateConstructorUsedError;
  String? get courseId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<BatchStudent>? get students => throw _privateConstructorUsedError;
  List<BatchFaculty>? get faculty => throw _privateConstructorUsedError;

  /// Serializes this Batch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchCopyWith<Batch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchCopyWith<$Res> {
  factory $BatchCopyWith(Batch value, $Res Function(Batch) then) =
      _$BatchCopyWithImpl<$Res, Batch>;
  @useResult
  $Res call({
    String id,
    String instituteId,
    String? courseId,
    String name,
    DateTime? startDate,
    DateTime? endDate,
    String status,
    List<BatchStudent>? students,
    List<BatchFaculty>? faculty,
  });
}

/// @nodoc
class _$BatchCopyWithImpl<$Res, $Val extends Batch>
    implements $BatchCopyWith<$Res> {
  _$BatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instituteId = null,
    Object? courseId = freezed,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? students = freezed,
    Object? faculty = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            instituteId: null == instituteId
                ? _value.instituteId
                : instituteId // ignore: cast_nullable_to_non_nullable
                      as String,
            courseId: freezed == courseId
                ? _value.courseId
                : courseId // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            students: freezed == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<BatchStudent>?,
            faculty: freezed == faculty
                ? _value.faculty
                : faculty // ignore: cast_nullable_to_non_nullable
                      as List<BatchFaculty>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchImplCopyWith<$Res> implements $BatchCopyWith<$Res> {
  factory _$$BatchImplCopyWith(
    _$BatchImpl value,
    $Res Function(_$BatchImpl) then,
  ) = __$$BatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String instituteId,
    String? courseId,
    String name,
    DateTime? startDate,
    DateTime? endDate,
    String status,
    List<BatchStudent>? students,
    List<BatchFaculty>? faculty,
  });
}

/// @nodoc
class __$$BatchImplCopyWithImpl<$Res>
    extends _$BatchCopyWithImpl<$Res, _$BatchImpl>
    implements _$$BatchImplCopyWith<$Res> {
  __$$BatchImplCopyWithImpl(
    _$BatchImpl _value,
    $Res Function(_$BatchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? instituteId = null,
    Object? courseId = freezed,
    Object? name = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? status = null,
    Object? students = freezed,
    Object? faculty = freezed,
  }) {
    return _then(
      _$BatchImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        instituteId: null == instituteId
            ? _value.instituteId
            : instituteId // ignore: cast_nullable_to_non_nullable
                  as String,
        courseId: freezed == courseId
            ? _value.courseId
            : courseId // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        students: freezed == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<BatchStudent>?,
        faculty: freezed == faculty
            ? _value._faculty
            : faculty // ignore: cast_nullable_to_non_nullable
                  as List<BatchFaculty>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchImpl implements _Batch {
  const _$BatchImpl({
    required this.id,
    required this.instituteId,
    this.courseId,
    required this.name,
    this.startDate,
    this.endDate,
    this.status = 'ACTIVE',
    final List<BatchStudent>? students,
    final List<BatchFaculty>? faculty,
  }) : _students = students,
       _faculty = faculty;

  factory _$BatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchImplFromJson(json);

  @override
  final String id;
  @override
  final String instituteId;
  @override
  final String? courseId;
  @override
  final String name;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey()
  final String status;
  final List<BatchStudent>? _students;
  @override
  List<BatchStudent>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BatchFaculty>? _faculty;
  @override
  List<BatchFaculty>? get faculty {
    final value = _faculty;
    if (value == null) return null;
    if (_faculty is EqualUnmodifiableListView) return _faculty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Batch(id: $id, instituteId: $instituteId, courseId: $courseId, name: $name, startDate: $startDate, endDate: $endDate, status: $status, students: $students, faculty: $faculty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instituteId, instituteId) ||
                other.instituteId == instituteId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            const DeepCollectionEquality().equals(other._faculty, _faculty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    instituteId,
    courseId,
    name,
    startDate,
    endDate,
    status,
    const DeepCollectionEquality().hash(_students),
    const DeepCollectionEquality().hash(_faculty),
  );

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchImplCopyWith<_$BatchImpl> get copyWith =>
      __$$BatchImplCopyWithImpl<_$BatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchImplToJson(this);
  }
}

abstract class _Batch implements Batch {
  const factory _Batch({
    required final String id,
    required final String instituteId,
    final String? courseId,
    required final String name,
    final DateTime? startDate,
    final DateTime? endDate,
    final String status,
    final List<BatchStudent>? students,
    final List<BatchFaculty>? faculty,
  }) = _$BatchImpl;

  factory _Batch.fromJson(Map<String, dynamic> json) = _$BatchImpl.fromJson;

  @override
  String get id;
  @override
  String get instituteId;
  @override
  String? get courseId;
  @override
  String get name;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String get status;
  @override
  List<BatchStudent>? get students;
  @override
  List<BatchFaculty>? get faculty;

  /// Create a copy of Batch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchImplCopyWith<_$BatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchStudent _$BatchStudentFromJson(Map<String, dynamic> json) {
  return _BatchStudent.fromJson(json);
}

/// @nodoc
mixin _$BatchStudent {
  String get batchId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  DateTime get enrolledAt => throw _privateConstructorUsedError;

  /// Serializes this BatchStudent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchStudentCopyWith<BatchStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchStudentCopyWith<$Res> {
  factory $BatchStudentCopyWith(
    BatchStudent value,
    $Res Function(BatchStudent) then,
  ) = _$BatchStudentCopyWithImpl<$Res, BatchStudent>;
  @useResult
  $Res call({String batchId, String studentId, DateTime enrolledAt});
}

/// @nodoc
class _$BatchStudentCopyWithImpl<$Res, $Val extends BatchStudent>
    implements $BatchStudentCopyWith<$Res> {
  _$BatchStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? studentId = null,
    Object? enrolledAt = null,
  }) {
    return _then(
      _value.copyWith(
            batchId: null == batchId
                ? _value.batchId
                : batchId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            enrolledAt: null == enrolledAt
                ? _value.enrolledAt
                : enrolledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchStudentImplCopyWith<$Res>
    implements $BatchStudentCopyWith<$Res> {
  factory _$$BatchStudentImplCopyWith(
    _$BatchStudentImpl value,
    $Res Function(_$BatchStudentImpl) then,
  ) = __$$BatchStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String batchId, String studentId, DateTime enrolledAt});
}

/// @nodoc
class __$$BatchStudentImplCopyWithImpl<$Res>
    extends _$BatchStudentCopyWithImpl<$Res, _$BatchStudentImpl>
    implements _$$BatchStudentImplCopyWith<$Res> {
  __$$BatchStudentImplCopyWithImpl(
    _$BatchStudentImpl _value,
    $Res Function(_$BatchStudentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? studentId = null,
    Object? enrolledAt = null,
  }) {
    return _then(
      _$BatchStudentImpl(
        batchId: null == batchId
            ? _value.batchId
            : batchId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        enrolledAt: null == enrolledAt
            ? _value.enrolledAt
            : enrolledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchStudentImpl implements _BatchStudent {
  const _$BatchStudentImpl({
    required this.batchId,
    required this.studentId,
    required this.enrolledAt,
  });

  factory _$BatchStudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchStudentImplFromJson(json);

  @override
  final String batchId;
  @override
  final String studentId;
  @override
  final DateTime enrolledAt;

  @override
  String toString() {
    return 'BatchStudent(batchId: $batchId, studentId: $studentId, enrolledAt: $enrolledAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchStudentImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.enrolledAt, enrolledAt) ||
                other.enrolledAt == enrolledAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, batchId, studentId, enrolledAt);

  /// Create a copy of BatchStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchStudentImplCopyWith<_$BatchStudentImpl> get copyWith =>
      __$$BatchStudentImplCopyWithImpl<_$BatchStudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchStudentImplToJson(this);
  }
}

abstract class _BatchStudent implements BatchStudent {
  const factory _BatchStudent({
    required final String batchId,
    required final String studentId,
    required final DateTime enrolledAt,
  }) = _$BatchStudentImpl;

  factory _BatchStudent.fromJson(Map<String, dynamic> json) =
      _$BatchStudentImpl.fromJson;

  @override
  String get batchId;
  @override
  String get studentId;
  @override
  DateTime get enrolledAt;

  /// Create a copy of BatchStudent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchStudentImplCopyWith<_$BatchStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BatchFaculty _$BatchFacultyFromJson(Map<String, dynamic> json) {
  return _BatchFaculty.fromJson(json);
}

/// @nodoc
mixin _$BatchFaculty {
  String get batchId => throw _privateConstructorUsedError;
  String get facultyId => throw _privateConstructorUsedError;
  DateTime get assignedAt => throw _privateConstructorUsedError;

  /// Serializes this BatchFaculty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BatchFaculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BatchFacultyCopyWith<BatchFaculty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatchFacultyCopyWith<$Res> {
  factory $BatchFacultyCopyWith(
    BatchFaculty value,
    $Res Function(BatchFaculty) then,
  ) = _$BatchFacultyCopyWithImpl<$Res, BatchFaculty>;
  @useResult
  $Res call({String batchId, String facultyId, DateTime assignedAt});
}

/// @nodoc
class _$BatchFacultyCopyWithImpl<$Res, $Val extends BatchFaculty>
    implements $BatchFacultyCopyWith<$Res> {
  _$BatchFacultyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BatchFaculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? facultyId = null,
    Object? assignedAt = null,
  }) {
    return _then(
      _value.copyWith(
            batchId: null == batchId
                ? _value.batchId
                : batchId // ignore: cast_nullable_to_non_nullable
                      as String,
            facultyId: null == facultyId
                ? _value.facultyId
                : facultyId // ignore: cast_nullable_to_non_nullable
                      as String,
            assignedAt: null == assignedAt
                ? _value.assignedAt
                : assignedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BatchFacultyImplCopyWith<$Res>
    implements $BatchFacultyCopyWith<$Res> {
  factory _$$BatchFacultyImplCopyWith(
    _$BatchFacultyImpl value,
    $Res Function(_$BatchFacultyImpl) then,
  ) = __$$BatchFacultyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String batchId, String facultyId, DateTime assignedAt});
}

/// @nodoc
class __$$BatchFacultyImplCopyWithImpl<$Res>
    extends _$BatchFacultyCopyWithImpl<$Res, _$BatchFacultyImpl>
    implements _$$BatchFacultyImplCopyWith<$Res> {
  __$$BatchFacultyImplCopyWithImpl(
    _$BatchFacultyImpl _value,
    $Res Function(_$BatchFacultyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BatchFaculty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batchId = null,
    Object? facultyId = null,
    Object? assignedAt = null,
  }) {
    return _then(
      _$BatchFacultyImpl(
        batchId: null == batchId
            ? _value.batchId
            : batchId // ignore: cast_nullable_to_non_nullable
                  as String,
        facultyId: null == facultyId
            ? _value.facultyId
            : facultyId // ignore: cast_nullable_to_non_nullable
                  as String,
        assignedAt: null == assignedAt
            ? _value.assignedAt
            : assignedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BatchFacultyImpl implements _BatchFaculty {
  const _$BatchFacultyImpl({
    required this.batchId,
    required this.facultyId,
    required this.assignedAt,
  });

  factory _$BatchFacultyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatchFacultyImplFromJson(json);

  @override
  final String batchId;
  @override
  final String facultyId;
  @override
  final DateTime assignedAt;

  @override
  String toString() {
    return 'BatchFaculty(batchId: $batchId, facultyId: $facultyId, assignedAt: $assignedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatchFacultyImpl &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.facultyId, facultyId) ||
                other.facultyId == facultyId) &&
            (identical(other.assignedAt, assignedAt) ||
                other.assignedAt == assignedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, batchId, facultyId, assignedAt);

  /// Create a copy of BatchFaculty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BatchFacultyImplCopyWith<_$BatchFacultyImpl> get copyWith =>
      __$$BatchFacultyImplCopyWithImpl<_$BatchFacultyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatchFacultyImplToJson(this);
  }
}

abstract class _BatchFaculty implements BatchFaculty {
  const factory _BatchFaculty({
    required final String batchId,
    required final String facultyId,
    required final DateTime assignedAt,
  }) = _$BatchFacultyImpl;

  factory _BatchFaculty.fromJson(Map<String, dynamic> json) =
      _$BatchFacultyImpl.fromJson;

  @override
  String get batchId;
  @override
  String get facultyId;
  @override
  DateTime get assignedAt;

  /// Create a copy of BatchFaculty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BatchFacultyImplCopyWith<_$BatchFacultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceLog _$AttendanceLogFromJson(Map<String, dynamic> json) {
  return _AttendanceLog.fromJson(json);
}

/// @nodoc
mixin _$AttendanceLog {
  String get id => throw _privateConstructorUsedError;
  String get batchId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // PRESENT, ABSENT, LATE, EXCUSED
  String? get markedBy => throw _privateConstructorUsedError;

  /// Serializes this AttendanceLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceLogCopyWith<AttendanceLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceLogCopyWith<$Res> {
  factory $AttendanceLogCopyWith(
    AttendanceLog value,
    $Res Function(AttendanceLog) then,
  ) = _$AttendanceLogCopyWithImpl<$Res, AttendanceLog>;
  @useResult
  $Res call({
    String id,
    String batchId,
    String studentId,
    String date,
    String status,
    String? markedBy,
  });
}

/// @nodoc
class _$AttendanceLogCopyWithImpl<$Res, $Val extends AttendanceLog>
    implements $AttendanceLogCopyWith<$Res> {
  _$AttendanceLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? batchId = null,
    Object? studentId = null,
    Object? date = null,
    Object? status = null,
    Object? markedBy = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            batchId: null == batchId
                ? _value.batchId
                : batchId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            markedBy: freezed == markedBy
                ? _value.markedBy
                : markedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceLogImplCopyWith<$Res>
    implements $AttendanceLogCopyWith<$Res> {
  factory _$$AttendanceLogImplCopyWith(
    _$AttendanceLogImpl value,
    $Res Function(_$AttendanceLogImpl) then,
  ) = __$$AttendanceLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String batchId,
    String studentId,
    String date,
    String status,
    String? markedBy,
  });
}

/// @nodoc
class __$$AttendanceLogImplCopyWithImpl<$Res>
    extends _$AttendanceLogCopyWithImpl<$Res, _$AttendanceLogImpl>
    implements _$$AttendanceLogImplCopyWith<$Res> {
  __$$AttendanceLogImplCopyWithImpl(
    _$AttendanceLogImpl _value,
    $Res Function(_$AttendanceLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? batchId = null,
    Object? studentId = null,
    Object? date = null,
    Object? status = null,
    Object? markedBy = freezed,
  }) {
    return _then(
      _$AttendanceLogImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        batchId: null == batchId
            ? _value.batchId
            : batchId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        markedBy: freezed == markedBy
            ? _value.markedBy
            : markedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceLogImpl implements _AttendanceLog {
  const _$AttendanceLogImpl({
    required this.id,
    required this.batchId,
    required this.studentId,
    required this.date,
    required this.status,
    this.markedBy,
  });

  factory _$AttendanceLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceLogImplFromJson(json);

  @override
  final String id;
  @override
  final String batchId;
  @override
  final String studentId;
  @override
  final String date;
  @override
  final String status;
  // PRESENT, ABSENT, LATE, EXCUSED
  @override
  final String? markedBy;

  @override
  String toString() {
    return 'AttendanceLog(id: $id, batchId: $batchId, studentId: $studentId, date: $date, status: $status, markedBy: $markedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.batchId, batchId) || other.batchId == batchId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.markedBy, markedBy) ||
                other.markedBy == markedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, batchId, studentId, date, status, markedBy);

  /// Create a copy of AttendanceLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceLogImplCopyWith<_$AttendanceLogImpl> get copyWith =>
      __$$AttendanceLogImplCopyWithImpl<_$AttendanceLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceLogImplToJson(this);
  }
}

abstract class _AttendanceLog implements AttendanceLog {
  const factory _AttendanceLog({
    required final String id,
    required final String batchId,
    required final String studentId,
    required final String date,
    required final String status,
    final String? markedBy,
  }) = _$AttendanceLogImpl;

  factory _AttendanceLog.fromJson(Map<String, dynamic> json) =
      _$AttendanceLogImpl.fromJson;

  @override
  String get id;
  @override
  String get batchId;
  @override
  String get studentId;
  @override
  String get date;
  @override
  String get status; // PRESENT, ABSENT, LATE, EXCUSED
  @override
  String? get markedBy;

  /// Create a copy of AttendanceLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceLogImplCopyWith<_$AttendanceLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopStudent _$TopStudentFromJson(Map<String, dynamic> json) {
  return _TopStudent.fromJson(json);
}

/// @nodoc
mixin _$TopStudent {
  String get studentId => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;
  int get completedCourses => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;

  /// Serializes this TopStudent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopStudentCopyWith<TopStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStudentCopyWith<$Res> {
  factory $TopStudentCopyWith(
    TopStudent value,
    $Res Function(TopStudent) then,
  ) = _$TopStudentCopyWithImpl<$Res, TopStudent>;
  @useResult
  $Res call({
    String studentId,
    String studentName,
    int completedCourses,
    double averageScore,
  });
}

/// @nodoc
class _$TopStudentCopyWithImpl<$Res, $Val extends TopStudent>
    implements $TopStudentCopyWith<$Res> {
  _$TopStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentName = null,
    Object? completedCourses = null,
    Object? averageScore = null,
  }) {
    return _then(
      _value.copyWith(
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentName: null == studentName
                ? _value.studentName
                : studentName // ignore: cast_nullable_to_non_nullable
                      as String,
            completedCourses: null == completedCourses
                ? _value.completedCourses
                : completedCourses // ignore: cast_nullable_to_non_nullable
                      as int,
            averageScore: null == averageScore
                ? _value.averageScore
                : averageScore // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TopStudentImplCopyWith<$Res>
    implements $TopStudentCopyWith<$Res> {
  factory _$$TopStudentImplCopyWith(
    _$TopStudentImpl value,
    $Res Function(_$TopStudentImpl) then,
  ) = __$$TopStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String studentId,
    String studentName,
    int completedCourses,
    double averageScore,
  });
}

/// @nodoc
class __$$TopStudentImplCopyWithImpl<$Res>
    extends _$TopStudentCopyWithImpl<$Res, _$TopStudentImpl>
    implements _$$TopStudentImplCopyWith<$Res> {
  __$$TopStudentImplCopyWithImpl(
    _$TopStudentImpl _value,
    $Res Function(_$TopStudentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentName = null,
    Object? completedCourses = null,
    Object? averageScore = null,
  }) {
    return _then(
      _$TopStudentImpl(
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentName: null == studentName
            ? _value.studentName
            : studentName // ignore: cast_nullable_to_non_nullable
                  as String,
        completedCourses: null == completedCourses
            ? _value.completedCourses
            : completedCourses // ignore: cast_nullable_to_non_nullable
                  as int,
        averageScore: null == averageScore
            ? _value.averageScore
            : averageScore // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TopStudentImpl implements _TopStudent {
  const _$TopStudentImpl({
    required this.studentId,
    required this.studentName,
    this.completedCourses = 0,
    this.averageScore = 0.0,
  });

  factory _$TopStudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopStudentImplFromJson(json);

  @override
  final String studentId;
  @override
  final String studentName;
  @override
  @JsonKey()
  final int completedCourses;
  @override
  @JsonKey()
  final double averageScore;

  @override
  String toString() {
    return 'TopStudent(studentId: $studentId, studentName: $studentName, completedCourses: $completedCourses, averageScore: $averageScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStudentImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.completedCourses, completedCourses) ||
                other.completedCourses == completedCourses) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    studentId,
    studentName,
    completedCourses,
    averageScore,
  );

  /// Create a copy of TopStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopStudentImplCopyWith<_$TopStudentImpl> get copyWith =>
      __$$TopStudentImplCopyWithImpl<_$TopStudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopStudentImplToJson(this);
  }
}

abstract class _TopStudent implements TopStudent {
  const factory _TopStudent({
    required final String studentId,
    required final String studentName,
    final int completedCourses,
    final double averageScore,
  }) = _$TopStudentImpl;

  factory _TopStudent.fromJson(Map<String, dynamic> json) =
      _$TopStudentImpl.fromJson;

  @override
  String get studentId;
  @override
  String get studentName;
  @override
  int get completedCourses;
  @override
  double get averageScore;

  /// Create a copy of TopStudent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopStudentImplCopyWith<_$TopStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
