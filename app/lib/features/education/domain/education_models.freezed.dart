// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Institute {

 String get id; String get name; String? get description; String? get logoUrl; String? get website; String? get address; bool get isVerified;
/// Create a copy of Institute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstituteCopyWith<Institute> get copyWith => _$InstituteCopyWithImpl<Institute>(this as Institute, _$identity);

  /// Serializes this Institute to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Institute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.website, website) || other.website == website)&&(identical(other.address, address) || other.address == address)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,logoUrl,website,address,isVerified);

@override
String toString() {
  return 'Institute(id: $id, name: $name, description: $description, logoUrl: $logoUrl, website: $website, address: $address, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $InstituteCopyWith<$Res>  {
  factory $InstituteCopyWith(Institute value, $Res Function(Institute) _then) = _$InstituteCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String? logoUrl, String? website, String? address, bool isVerified
});




}
/// @nodoc
class _$InstituteCopyWithImpl<$Res>
    implements $InstituteCopyWith<$Res> {
  _$InstituteCopyWithImpl(this._self, this._then);

  final Institute _self;
  final $Res Function(Institute) _then;

/// Create a copy of Institute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? logoUrl = freezed,Object? website = freezed,Object? address = freezed,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Institute].
extension InstitutePatterns on Institute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Institute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Institute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Institute value)  $default,){
final _that = this;
switch (_that) {
case _Institute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Institute value)?  $default,){
final _that = this;
switch (_that) {
case _Institute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String? logoUrl,  String? website,  String? address,  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Institute() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.logoUrl,_that.website,_that.address,_that.isVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String? logoUrl,  String? website,  String? address,  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _Institute():
return $default(_that.id,_that.name,_that.description,_that.logoUrl,_that.website,_that.address,_that.isVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  String? logoUrl,  String? website,  String? address,  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _Institute() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.logoUrl,_that.website,_that.address,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Institute implements Institute {
  const _Institute({required this.id, required this.name, this.description, this.logoUrl, this.website, this.address, this.isVerified = false});
  factory _Institute.fromJson(Map<String, dynamic> json) => _$InstituteFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String? logoUrl;
@override final  String? website;
@override final  String? address;
@override@JsonKey() final  bool isVerified;

/// Create a copy of Institute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstituteCopyWith<_Institute> get copyWith => __$InstituteCopyWithImpl<_Institute>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstituteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Institute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.website, website) || other.website == website)&&(identical(other.address, address) || other.address == address)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,logoUrl,website,address,isVerified);

@override
String toString() {
  return 'Institute(id: $id, name: $name, description: $description, logoUrl: $logoUrl, website: $website, address: $address, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$InstituteCopyWith<$Res> implements $InstituteCopyWith<$Res> {
  factory _$InstituteCopyWith(_Institute value, $Res Function(_Institute) _then) = __$InstituteCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String? logoUrl, String? website, String? address, bool isVerified
});




}
/// @nodoc
class __$InstituteCopyWithImpl<$Res>
    implements _$InstituteCopyWith<$Res> {
  __$InstituteCopyWithImpl(this._self, this._then);

  final _Institute _self;
  final $Res Function(_Institute) _then;

/// Create a copy of Institute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? logoUrl = freezed,Object? website = freezed,Object? address = freezed,Object? isVerified = null,}) {
  return _then(_Institute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Course {

 String get id; String get instituteId; String get title; String? get description; String? get thumbnailUrl; String? get category; double get feeAmount; int get durationWeeks; String get level; List<Lesson>? get lessons;
/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseCopyWith<Course> get copyWith => _$CourseCopyWithImpl<Course>(this as Course, _$identity);

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Course&&(identical(other.id, id) || other.id == id)&&(identical(other.instituteId, instituteId) || other.instituteId == instituteId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.durationWeeks, durationWeeks) || other.durationWeeks == durationWeeks)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.lessons, lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instituteId,title,description,thumbnailUrl,category,feeAmount,durationWeeks,level,const DeepCollectionEquality().hash(lessons));

@override
String toString() {
  return 'Course(id: $id, instituteId: $instituteId, title: $title, description: $description, thumbnailUrl: $thumbnailUrl, category: $category, feeAmount: $feeAmount, durationWeeks: $durationWeeks, level: $level, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class $CourseCopyWith<$Res>  {
  factory $CourseCopyWith(Course value, $Res Function(Course) _then) = _$CourseCopyWithImpl;
@useResult
$Res call({
 String id, String instituteId, String title, String? description, String? thumbnailUrl, String? category, double feeAmount, int durationWeeks, String level, List<Lesson>? lessons
});




}
/// @nodoc
class _$CourseCopyWithImpl<$Res>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._self, this._then);

  final Course _self;
  final $Res Function(Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? instituteId = null,Object? title = null,Object? description = freezed,Object? thumbnailUrl = freezed,Object? category = freezed,Object? feeAmount = null,Object? durationWeeks = null,Object? level = null,Object? lessons = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instituteId: null == instituteId ? _self.instituteId : instituteId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,feeAmount: null == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as double,durationWeeks: null == durationWeeks ? _self.durationWeeks : durationWeeks // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,lessons: freezed == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<Lesson>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Course].
extension CoursePatterns on Course {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Course value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Course() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Course value)  $default,){
final _that = this;
switch (_that) {
case _Course():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Course value)?  $default,){
final _that = this;
switch (_that) {
case _Course() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String instituteId,  String title,  String? description,  String? thumbnailUrl,  String? category,  double feeAmount,  int durationWeeks,  String level,  List<Lesson>? lessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.instituteId,_that.title,_that.description,_that.thumbnailUrl,_that.category,_that.feeAmount,_that.durationWeeks,_that.level,_that.lessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String instituteId,  String title,  String? description,  String? thumbnailUrl,  String? category,  double feeAmount,  int durationWeeks,  String level,  List<Lesson>? lessons)  $default,) {final _that = this;
switch (_that) {
case _Course():
return $default(_that.id,_that.instituteId,_that.title,_that.description,_that.thumbnailUrl,_that.category,_that.feeAmount,_that.durationWeeks,_that.level,_that.lessons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String instituteId,  String title,  String? description,  String? thumbnailUrl,  String? category,  double feeAmount,  int durationWeeks,  String level,  List<Lesson>? lessons)?  $default,) {final _that = this;
switch (_that) {
case _Course() when $default != null:
return $default(_that.id,_that.instituteId,_that.title,_that.description,_that.thumbnailUrl,_that.category,_that.feeAmount,_that.durationWeeks,_that.level,_that.lessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Course implements Course {
  const _Course({required this.id, required this.instituteId, required this.title, this.description, this.thumbnailUrl, this.category, this.feeAmount = 0.0, this.durationWeeks = 0, this.level = 'beginner', final  List<Lesson>? lessons}): _lessons = lessons;
  factory _Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

@override final  String id;
@override final  String instituteId;
@override final  String title;
@override final  String? description;
@override final  String? thumbnailUrl;
@override final  String? category;
@override@JsonKey() final  double feeAmount;
@override@JsonKey() final  int durationWeeks;
@override@JsonKey() final  String level;
 final  List<Lesson>? _lessons;
@override List<Lesson>? get lessons {
  final value = _lessons;
  if (value == null) return null;
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseCopyWith<_Course> get copyWith => __$CourseCopyWithImpl<_Course>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Course&&(identical(other.id, id) || other.id == id)&&(identical(other.instituteId, instituteId) || other.instituteId == instituteId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.feeAmount, feeAmount) || other.feeAmount == feeAmount)&&(identical(other.durationWeeks, durationWeeks) || other.durationWeeks == durationWeeks)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instituteId,title,description,thumbnailUrl,category,feeAmount,durationWeeks,level,const DeepCollectionEquality().hash(_lessons));

@override
String toString() {
  return 'Course(id: $id, instituteId: $instituteId, title: $title, description: $description, thumbnailUrl: $thumbnailUrl, category: $category, feeAmount: $feeAmount, durationWeeks: $durationWeeks, level: $level, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) _then) = __$CourseCopyWithImpl;
@override @useResult
$Res call({
 String id, String instituteId, String title, String? description, String? thumbnailUrl, String? category, double feeAmount, int durationWeeks, String level, List<Lesson>? lessons
});




}
/// @nodoc
class __$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(this._self, this._then);

  final _Course _self;
  final $Res Function(_Course) _then;

/// Create a copy of Course
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? instituteId = null,Object? title = null,Object? description = freezed,Object? thumbnailUrl = freezed,Object? category = freezed,Object? feeAmount = null,Object? durationWeeks = null,Object? level = null,Object? lessons = freezed,}) {
  return _then(_Course(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instituteId: null == instituteId ? _self.instituteId : instituteId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,feeAmount: null == feeAmount ? _self.feeAmount : feeAmount // ignore: cast_nullable_to_non_nullable
as double,durationWeeks: null == durationWeeks ? _self.durationWeeks : durationWeeks // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String,lessons: freezed == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<Lesson>?,
  ));
}


}


/// @nodoc
mixin _$Lesson {

 String get id; String get courseId; String get title; String? get description; String get videoUrl; String? get contentText; int get sequenceOrder; bool get isPreview; bool get isCompleted;
/// Create a copy of Lesson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonCopyWith<Lesson> get copyWith => _$LessonCopyWithImpl<Lesson>(this as Lesson, _$identity);

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lesson&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&(identical(other.sequenceOrder, sequenceOrder) || other.sequenceOrder == sequenceOrder)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,title,description,videoUrl,contentText,sequenceOrder,isPreview,isCompleted);

@override
String toString() {
  return 'Lesson(id: $id, courseId: $courseId, title: $title, description: $description, videoUrl: $videoUrl, contentText: $contentText, sequenceOrder: $sequenceOrder, isPreview: $isPreview, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $LessonCopyWith<$Res>  {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) _then) = _$LessonCopyWithImpl;
@useResult
$Res call({
 String id, String courseId, String title, String? description, String videoUrl, String? contentText, int sequenceOrder, bool isPreview, bool isCompleted
});




}
/// @nodoc
class _$LessonCopyWithImpl<$Res>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._self, this._then);

  final Lesson _self;
  final $Res Function(Lesson) _then;

/// Create a copy of Lesson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? title = null,Object? description = freezed,Object? videoUrl = null,Object? contentText = freezed,Object? sequenceOrder = null,Object? isPreview = null,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,sequenceOrder: null == sequenceOrder ? _self.sequenceOrder : sequenceOrder // ignore: cast_nullable_to_non_nullable
as int,isPreview: null == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Lesson].
extension LessonPatterns on Lesson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lesson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lesson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lesson value)  $default,){
final _that = this;
switch (_that) {
case _Lesson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lesson value)?  $default,){
final _that = this;
switch (_that) {
case _Lesson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String courseId,  String title,  String? description,  String videoUrl,  String? contentText,  int sequenceOrder,  bool isPreview,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lesson() when $default != null:
return $default(_that.id,_that.courseId,_that.title,_that.description,_that.videoUrl,_that.contentText,_that.sequenceOrder,_that.isPreview,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String courseId,  String title,  String? description,  String videoUrl,  String? contentText,  int sequenceOrder,  bool isPreview,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _Lesson():
return $default(_that.id,_that.courseId,_that.title,_that.description,_that.videoUrl,_that.contentText,_that.sequenceOrder,_that.isPreview,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String courseId,  String title,  String? description,  String videoUrl,  String? contentText,  int sequenceOrder,  bool isPreview,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _Lesson() when $default != null:
return $default(_that.id,_that.courseId,_that.title,_that.description,_that.videoUrl,_that.contentText,_that.sequenceOrder,_that.isPreview,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lesson implements Lesson {
  const _Lesson({required this.id, required this.courseId, required this.title, this.description, required this.videoUrl, this.contentText, required this.sequenceOrder, this.isPreview = false, this.isCompleted = false});
  factory _Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

@override final  String id;
@override final  String courseId;
@override final  String title;
@override final  String? description;
@override final  String videoUrl;
@override final  String? contentText;
@override final  int sequenceOrder;
@override@JsonKey() final  bool isPreview;
@override@JsonKey() final  bool isCompleted;

/// Create a copy of Lesson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonCopyWith<_Lesson> get copyWith => __$LessonCopyWithImpl<_Lesson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lesson&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&(identical(other.sequenceOrder, sequenceOrder) || other.sequenceOrder == sequenceOrder)&&(identical(other.isPreview, isPreview) || other.isPreview == isPreview)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,title,description,videoUrl,contentText,sequenceOrder,isPreview,isCompleted);

@override
String toString() {
  return 'Lesson(id: $id, courseId: $courseId, title: $title, description: $description, videoUrl: $videoUrl, contentText: $contentText, sequenceOrder: $sequenceOrder, isPreview: $isPreview, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$LessonCopyWith(_Lesson value, $Res Function(_Lesson) _then) = __$LessonCopyWithImpl;
@override @useResult
$Res call({
 String id, String courseId, String title, String? description, String videoUrl, String? contentText, int sequenceOrder, bool isPreview, bool isCompleted
});




}
/// @nodoc
class __$LessonCopyWithImpl<$Res>
    implements _$LessonCopyWith<$Res> {
  __$LessonCopyWithImpl(this._self, this._then);

  final _Lesson _self;
  final $Res Function(_Lesson) _then;

/// Create a copy of Lesson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? title = null,Object? description = freezed,Object? videoUrl = null,Object? contentText = freezed,Object? sequenceOrder = null,Object? isPreview = null,Object? isCompleted = null,}) {
  return _then(_Lesson(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,videoUrl: null == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,sequenceOrder: null == sequenceOrder ? _self.sequenceOrder : sequenceOrder // ignore: cast_nullable_to_non_nullable
as int,isPreview: null == isPreview ? _self.isPreview : isPreview // ignore: cast_nullable_to_non_nullable
as bool,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Enrollment {

 String get id; String get courseId; String get studentId; String get status; int get progressPercentage; DateTime get enrolledAt; DateTime? get completedAt; Course? get course;
/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentCopyWith<Enrollment> get copyWith => _$EnrollmentCopyWithImpl<Enrollment>(this as Enrollment, _$identity);

  /// Serializes this Enrollment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Enrollment&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressPercentage, progressPercentage) || other.progressPercentage == progressPercentage)&&(identical(other.enrolledAt, enrolledAt) || other.enrolledAt == enrolledAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.course, course) || other.course == course));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,studentId,status,progressPercentage,enrolledAt,completedAt,course);

@override
String toString() {
  return 'Enrollment(id: $id, courseId: $courseId, studentId: $studentId, status: $status, progressPercentage: $progressPercentage, enrolledAt: $enrolledAt, completedAt: $completedAt, course: $course)';
}


}

/// @nodoc
abstract mixin class $EnrollmentCopyWith<$Res>  {
  factory $EnrollmentCopyWith(Enrollment value, $Res Function(Enrollment) _then) = _$EnrollmentCopyWithImpl;
@useResult
$Res call({
 String id, String courseId, String studentId, String status, int progressPercentage, DateTime enrolledAt, DateTime? completedAt, Course? course
});


$CourseCopyWith<$Res>? get course;

}
/// @nodoc
class _$EnrollmentCopyWithImpl<$Res>
    implements $EnrollmentCopyWith<$Res> {
  _$EnrollmentCopyWithImpl(this._self, this._then);

  final Enrollment _self;
  final $Res Function(Enrollment) _then;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? studentId = null,Object? status = null,Object? progressPercentage = null,Object? enrolledAt = null,Object? completedAt = freezed,Object? course = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,progressPercentage: null == progressPercentage ? _self.progressPercentage : progressPercentage // ignore: cast_nullable_to_non_nullable
as int,enrolledAt: null == enrolledAt ? _self.enrolledAt : enrolledAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,
  ));
}
/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// Adds pattern-matching-related methods to [Enrollment].
extension EnrollmentPatterns on Enrollment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Enrollment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Enrollment value)  $default,){
final _that = this;
switch (_that) {
case _Enrollment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Enrollment value)?  $default,){
final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String courseId,  String studentId,  String status,  int progressPercentage,  DateTime enrolledAt,  DateTime? completedAt,  Course? course)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
return $default(_that.id,_that.courseId,_that.studentId,_that.status,_that.progressPercentage,_that.enrolledAt,_that.completedAt,_that.course);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String courseId,  String studentId,  String status,  int progressPercentage,  DateTime enrolledAt,  DateTime? completedAt,  Course? course)  $default,) {final _that = this;
switch (_that) {
case _Enrollment():
return $default(_that.id,_that.courseId,_that.studentId,_that.status,_that.progressPercentage,_that.enrolledAt,_that.completedAt,_that.course);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String courseId,  String studentId,  String status,  int progressPercentage,  DateTime enrolledAt,  DateTime? completedAt,  Course? course)?  $default,) {final _that = this;
switch (_that) {
case _Enrollment() when $default != null:
return $default(_that.id,_that.courseId,_that.studentId,_that.status,_that.progressPercentage,_that.enrolledAt,_that.completedAt,_that.course);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Enrollment implements Enrollment {
  const _Enrollment({required this.id, required this.courseId, required this.studentId, this.status = 'enrolled', this.progressPercentage = 0, required this.enrolledAt, this.completedAt, this.course});
  factory _Enrollment.fromJson(Map<String, dynamic> json) => _$EnrollmentFromJson(json);

@override final  String id;
@override final  String courseId;
@override final  String studentId;
@override@JsonKey() final  String status;
@override@JsonKey() final  int progressPercentage;
@override final  DateTime enrolledAt;
@override final  DateTime? completedAt;
@override final  Course? course;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnrollmentCopyWith<_Enrollment> get copyWith => __$EnrollmentCopyWithImpl<_Enrollment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnrollmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Enrollment&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.progressPercentage, progressPercentage) || other.progressPercentage == progressPercentage)&&(identical(other.enrolledAt, enrolledAt) || other.enrolledAt == enrolledAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.course, course) || other.course == course));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,studentId,status,progressPercentage,enrolledAt,completedAt,course);

@override
String toString() {
  return 'Enrollment(id: $id, courseId: $courseId, studentId: $studentId, status: $status, progressPercentage: $progressPercentage, enrolledAt: $enrolledAt, completedAt: $completedAt, course: $course)';
}


}

/// @nodoc
abstract mixin class _$EnrollmentCopyWith<$Res> implements $EnrollmentCopyWith<$Res> {
  factory _$EnrollmentCopyWith(_Enrollment value, $Res Function(_Enrollment) _then) = __$EnrollmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String courseId, String studentId, String status, int progressPercentage, DateTime enrolledAt, DateTime? completedAt, Course? course
});


@override $CourseCopyWith<$Res>? get course;

}
/// @nodoc
class __$EnrollmentCopyWithImpl<$Res>
    implements _$EnrollmentCopyWith<$Res> {
  __$EnrollmentCopyWithImpl(this._self, this._then);

  final _Enrollment _self;
  final $Res Function(_Enrollment) _then;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? studentId = null,Object? status = null,Object? progressPercentage = null,Object? enrolledAt = null,Object? completedAt = freezed,Object? course = freezed,}) {
  return _then(_Enrollment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,progressPercentage: null == progressPercentage ? _self.progressPercentage : progressPercentage // ignore: cast_nullable_to_non_nullable
as int,enrolledAt: null == enrolledAt ? _self.enrolledAt : enrolledAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,course: freezed == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as Course?,
  ));
}

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseCopyWith<$Res>? get course {
    if (_self.course == null) {
    return null;
  }

  return $CourseCopyWith<$Res>(_self.course!, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}


/// @nodoc
mixin _$PlacementListing {

 String get id; String get instituteId; String get title; String get companyName; String? get location; String? get description; double? get stipendAmount; String get listingType; bool get isActive;
/// Create a copy of PlacementListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlacementListingCopyWith<PlacementListing> get copyWith => _$PlacementListingCopyWithImpl<PlacementListing>(this as PlacementListing, _$identity);

  /// Serializes this PlacementListing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlacementListing&&(identical(other.id, id) || other.id == id)&&(identical(other.instituteId, instituteId) || other.instituteId == instituteId)&&(identical(other.title, title) || other.title == title)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.stipendAmount, stipendAmount) || other.stipendAmount == stipendAmount)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instituteId,title,companyName,location,description,stipendAmount,listingType,isActive);

@override
String toString() {
  return 'PlacementListing(id: $id, instituteId: $instituteId, title: $title, companyName: $companyName, location: $location, description: $description, stipendAmount: $stipendAmount, listingType: $listingType, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $PlacementListingCopyWith<$Res>  {
  factory $PlacementListingCopyWith(PlacementListing value, $Res Function(PlacementListing) _then) = _$PlacementListingCopyWithImpl;
@useResult
$Res call({
 String id, String instituteId, String title, String companyName, String? location, String? description, double? stipendAmount, String listingType, bool isActive
});




}
/// @nodoc
class _$PlacementListingCopyWithImpl<$Res>
    implements $PlacementListingCopyWith<$Res> {
  _$PlacementListingCopyWithImpl(this._self, this._then);

  final PlacementListing _self;
  final $Res Function(PlacementListing) _then;

/// Create a copy of PlacementListing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? instituteId = null,Object? title = null,Object? companyName = null,Object? location = freezed,Object? description = freezed,Object? stipendAmount = freezed,Object? listingType = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instituteId: null == instituteId ? _self.instituteId : instituteId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stipendAmount: freezed == stipendAmount ? _self.stipendAmount : stipendAmount // ignore: cast_nullable_to_non_nullable
as double?,listingType: null == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlacementListing].
extension PlacementListingPatterns on PlacementListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlacementListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlacementListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlacementListing value)  $default,){
final _that = this;
switch (_that) {
case _PlacementListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlacementListing value)?  $default,){
final _that = this;
switch (_that) {
case _PlacementListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String instituteId,  String title,  String companyName,  String? location,  String? description,  double? stipendAmount,  String listingType,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlacementListing() when $default != null:
return $default(_that.id,_that.instituteId,_that.title,_that.companyName,_that.location,_that.description,_that.stipendAmount,_that.listingType,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String instituteId,  String title,  String companyName,  String? location,  String? description,  double? stipendAmount,  String listingType,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _PlacementListing():
return $default(_that.id,_that.instituteId,_that.title,_that.companyName,_that.location,_that.description,_that.stipendAmount,_that.listingType,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String instituteId,  String title,  String companyName,  String? location,  String? description,  double? stipendAmount,  String listingType,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _PlacementListing() when $default != null:
return $default(_that.id,_that.instituteId,_that.title,_that.companyName,_that.location,_that.description,_that.stipendAmount,_that.listingType,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlacementListing implements PlacementListing {
  const _PlacementListing({required this.id, required this.instituteId, required this.title, required this.companyName, this.location, this.description, this.stipendAmount, this.listingType = 'job', this.isActive = true});
  factory _PlacementListing.fromJson(Map<String, dynamic> json) => _$PlacementListingFromJson(json);

@override final  String id;
@override final  String instituteId;
@override final  String title;
@override final  String companyName;
@override final  String? location;
@override final  String? description;
@override final  double? stipendAmount;
@override@JsonKey() final  String listingType;
@override@JsonKey() final  bool isActive;

/// Create a copy of PlacementListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlacementListingCopyWith<_PlacementListing> get copyWith => __$PlacementListingCopyWithImpl<_PlacementListing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlacementListingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlacementListing&&(identical(other.id, id) || other.id == id)&&(identical(other.instituteId, instituteId) || other.instituteId == instituteId)&&(identical(other.title, title) || other.title == title)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.stipendAmount, stipendAmount) || other.stipendAmount == stipendAmount)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instituteId,title,companyName,location,description,stipendAmount,listingType,isActive);

@override
String toString() {
  return 'PlacementListing(id: $id, instituteId: $instituteId, title: $title, companyName: $companyName, location: $location, description: $description, stipendAmount: $stipendAmount, listingType: $listingType, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$PlacementListingCopyWith<$Res> implements $PlacementListingCopyWith<$Res> {
  factory _$PlacementListingCopyWith(_PlacementListing value, $Res Function(_PlacementListing) _then) = __$PlacementListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String instituteId, String title, String companyName, String? location, String? description, double? stipendAmount, String listingType, bool isActive
});




}
/// @nodoc
class __$PlacementListingCopyWithImpl<$Res>
    implements _$PlacementListingCopyWith<$Res> {
  __$PlacementListingCopyWithImpl(this._self, this._then);

  final _PlacementListing _self;
  final $Res Function(_PlacementListing) _then;

/// Create a copy of PlacementListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? instituteId = null,Object? title = null,Object? companyName = null,Object? location = freezed,Object? description = freezed,Object? stipendAmount = freezed,Object? listingType = null,Object? isActive = null,}) {
  return _then(_PlacementListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instituteId: null == instituteId ? _self.instituteId : instituteId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,stipendAmount: freezed == stipendAmount ? _self.stipendAmount : stipendAmount // ignore: cast_nullable_to_non_nullable
as double?,listingType: null == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Batch {

 String get id; String get instituteId; String? get courseId; String get name; DateTime? get startDate; DateTime? get endDate; String get status; List<BatchStudent>? get students; List<BatchFaculty>? get faculty;
/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchCopyWith<Batch> get copyWith => _$BatchCopyWithImpl<Batch>(this as Batch, _$identity);

  /// Serializes this Batch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Batch&&(identical(other.id, id) || other.id == id)&&(identical(other.instituteId, instituteId) || other.instituteId == instituteId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.students, students)&&const DeepCollectionEquality().equals(other.faculty, faculty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instituteId,courseId,name,startDate,endDate,status,const DeepCollectionEquality().hash(students),const DeepCollectionEquality().hash(faculty));

@override
String toString() {
  return 'Batch(id: $id, instituteId: $instituteId, courseId: $courseId, name: $name, startDate: $startDate, endDate: $endDate, status: $status, students: $students, faculty: $faculty)';
}


}

/// @nodoc
abstract mixin class $BatchCopyWith<$Res>  {
  factory $BatchCopyWith(Batch value, $Res Function(Batch) _then) = _$BatchCopyWithImpl;
@useResult
$Res call({
 String id, String instituteId, String? courseId, String name, DateTime? startDate, DateTime? endDate, String status, List<BatchStudent>? students, List<BatchFaculty>? faculty
});




}
/// @nodoc
class _$BatchCopyWithImpl<$Res>
    implements $BatchCopyWith<$Res> {
  _$BatchCopyWithImpl(this._self, this._then);

  final Batch _self;
  final $Res Function(Batch) _then;

/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? instituteId = null,Object? courseId = freezed,Object? name = null,Object? startDate = freezed,Object? endDate = freezed,Object? status = null,Object? students = freezed,Object? faculty = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instituteId: null == instituteId ? _self.instituteId : instituteId // ignore: cast_nullable_to_non_nullable
as String,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,students: freezed == students ? _self.students : students // ignore: cast_nullable_to_non_nullable
as List<BatchStudent>?,faculty: freezed == faculty ? _self.faculty : faculty // ignore: cast_nullable_to_non_nullable
as List<BatchFaculty>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Batch].
extension BatchPatterns on Batch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Batch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Batch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Batch value)  $default,){
final _that = this;
switch (_that) {
case _Batch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Batch value)?  $default,){
final _that = this;
switch (_that) {
case _Batch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String instituteId,  String? courseId,  String name,  DateTime? startDate,  DateTime? endDate,  String status,  List<BatchStudent>? students,  List<BatchFaculty>? faculty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Batch() when $default != null:
return $default(_that.id,_that.instituteId,_that.courseId,_that.name,_that.startDate,_that.endDate,_that.status,_that.students,_that.faculty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String instituteId,  String? courseId,  String name,  DateTime? startDate,  DateTime? endDate,  String status,  List<BatchStudent>? students,  List<BatchFaculty>? faculty)  $default,) {final _that = this;
switch (_that) {
case _Batch():
return $default(_that.id,_that.instituteId,_that.courseId,_that.name,_that.startDate,_that.endDate,_that.status,_that.students,_that.faculty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String instituteId,  String? courseId,  String name,  DateTime? startDate,  DateTime? endDate,  String status,  List<BatchStudent>? students,  List<BatchFaculty>? faculty)?  $default,) {final _that = this;
switch (_that) {
case _Batch() when $default != null:
return $default(_that.id,_that.instituteId,_that.courseId,_that.name,_that.startDate,_that.endDate,_that.status,_that.students,_that.faculty);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Batch implements Batch {
  const _Batch({required this.id, required this.instituteId, this.courseId, required this.name, this.startDate, this.endDate, this.status = 'ACTIVE', final  List<BatchStudent>? students, final  List<BatchFaculty>? faculty}): _students = students,_faculty = faculty;
  factory _Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);

@override final  String id;
@override final  String instituteId;
@override final  String? courseId;
@override final  String name;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override@JsonKey() final  String status;
 final  List<BatchStudent>? _students;
@override List<BatchStudent>? get students {
  final value = _students;
  if (value == null) return null;
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<BatchFaculty>? _faculty;
@override List<BatchFaculty>? get faculty {
  final value = _faculty;
  if (value == null) return null;
  if (_faculty is EqualUnmodifiableListView) return _faculty;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchCopyWith<_Batch> get copyWith => __$BatchCopyWithImpl<_Batch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Batch&&(identical(other.id, id) || other.id == id)&&(identical(other.instituteId, instituteId) || other.instituteId == instituteId)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._students, _students)&&const DeepCollectionEquality().equals(other._faculty, _faculty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instituteId,courseId,name,startDate,endDate,status,const DeepCollectionEquality().hash(_students),const DeepCollectionEquality().hash(_faculty));

@override
String toString() {
  return 'Batch(id: $id, instituteId: $instituteId, courseId: $courseId, name: $name, startDate: $startDate, endDate: $endDate, status: $status, students: $students, faculty: $faculty)';
}


}

/// @nodoc
abstract mixin class _$BatchCopyWith<$Res> implements $BatchCopyWith<$Res> {
  factory _$BatchCopyWith(_Batch value, $Res Function(_Batch) _then) = __$BatchCopyWithImpl;
@override @useResult
$Res call({
 String id, String instituteId, String? courseId, String name, DateTime? startDate, DateTime? endDate, String status, List<BatchStudent>? students, List<BatchFaculty>? faculty
});




}
/// @nodoc
class __$BatchCopyWithImpl<$Res>
    implements _$BatchCopyWith<$Res> {
  __$BatchCopyWithImpl(this._self, this._then);

  final _Batch _self;
  final $Res Function(_Batch) _then;

/// Create a copy of Batch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? instituteId = null,Object? courseId = freezed,Object? name = null,Object? startDate = freezed,Object? endDate = freezed,Object? status = null,Object? students = freezed,Object? faculty = freezed,}) {
  return _then(_Batch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,instituteId: null == instituteId ? _self.instituteId : instituteId // ignore: cast_nullable_to_non_nullable
as String,courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,students: freezed == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<BatchStudent>?,faculty: freezed == faculty ? _self._faculty : faculty // ignore: cast_nullable_to_non_nullable
as List<BatchFaculty>?,
  ));
}


}


/// @nodoc
mixin _$BatchStudent {

 String get batchId; String get studentId; DateTime get enrolledAt;
/// Create a copy of BatchStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchStudentCopyWith<BatchStudent> get copyWith => _$BatchStudentCopyWithImpl<BatchStudent>(this as BatchStudent, _$identity);

  /// Serializes this BatchStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchStudent&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.enrolledAt, enrolledAt) || other.enrolledAt == enrolledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchId,studentId,enrolledAt);

@override
String toString() {
  return 'BatchStudent(batchId: $batchId, studentId: $studentId, enrolledAt: $enrolledAt)';
}


}

/// @nodoc
abstract mixin class $BatchStudentCopyWith<$Res>  {
  factory $BatchStudentCopyWith(BatchStudent value, $Res Function(BatchStudent) _then) = _$BatchStudentCopyWithImpl;
@useResult
$Res call({
 String batchId, String studentId, DateTime enrolledAt
});




}
/// @nodoc
class _$BatchStudentCopyWithImpl<$Res>
    implements $BatchStudentCopyWith<$Res> {
  _$BatchStudentCopyWithImpl(this._self, this._then);

  final BatchStudent _self;
  final $Res Function(BatchStudent) _then;

/// Create a copy of BatchStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? batchId = null,Object? studentId = null,Object? enrolledAt = null,}) {
  return _then(_self.copyWith(
batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,enrolledAt: null == enrolledAt ? _self.enrolledAt : enrolledAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BatchStudent].
extension BatchStudentPatterns on BatchStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BatchStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BatchStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BatchStudent value)  $default,){
final _that = this;
switch (_that) {
case _BatchStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BatchStudent value)?  $default,){
final _that = this;
switch (_that) {
case _BatchStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String batchId,  String studentId,  DateTime enrolledAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BatchStudent() when $default != null:
return $default(_that.batchId,_that.studentId,_that.enrolledAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String batchId,  String studentId,  DateTime enrolledAt)  $default,) {final _that = this;
switch (_that) {
case _BatchStudent():
return $default(_that.batchId,_that.studentId,_that.enrolledAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String batchId,  String studentId,  DateTime enrolledAt)?  $default,) {final _that = this;
switch (_that) {
case _BatchStudent() when $default != null:
return $default(_that.batchId,_that.studentId,_that.enrolledAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BatchStudent implements BatchStudent {
  const _BatchStudent({required this.batchId, required this.studentId, required this.enrolledAt});
  factory _BatchStudent.fromJson(Map<String, dynamic> json) => _$BatchStudentFromJson(json);

@override final  String batchId;
@override final  String studentId;
@override final  DateTime enrolledAt;

/// Create a copy of BatchStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchStudentCopyWith<_BatchStudent> get copyWith => __$BatchStudentCopyWithImpl<_BatchStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchStudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatchStudent&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.enrolledAt, enrolledAt) || other.enrolledAt == enrolledAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchId,studentId,enrolledAt);

@override
String toString() {
  return 'BatchStudent(batchId: $batchId, studentId: $studentId, enrolledAt: $enrolledAt)';
}


}

/// @nodoc
abstract mixin class _$BatchStudentCopyWith<$Res> implements $BatchStudentCopyWith<$Res> {
  factory _$BatchStudentCopyWith(_BatchStudent value, $Res Function(_BatchStudent) _then) = __$BatchStudentCopyWithImpl;
@override @useResult
$Res call({
 String batchId, String studentId, DateTime enrolledAt
});




}
/// @nodoc
class __$BatchStudentCopyWithImpl<$Res>
    implements _$BatchStudentCopyWith<$Res> {
  __$BatchStudentCopyWithImpl(this._self, this._then);

  final _BatchStudent _self;
  final $Res Function(_BatchStudent) _then;

/// Create a copy of BatchStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? batchId = null,Object? studentId = null,Object? enrolledAt = null,}) {
  return _then(_BatchStudent(
batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,enrolledAt: null == enrolledAt ? _self.enrolledAt : enrolledAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$BatchFaculty {

 String get batchId; String get facultyId; DateTime get assignedAt;
/// Create a copy of BatchFaculty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchFacultyCopyWith<BatchFaculty> get copyWith => _$BatchFacultyCopyWithImpl<BatchFaculty>(this as BatchFaculty, _$identity);

  /// Serializes this BatchFaculty to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchFaculty&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.facultyId, facultyId) || other.facultyId == facultyId)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchId,facultyId,assignedAt);

@override
String toString() {
  return 'BatchFaculty(batchId: $batchId, facultyId: $facultyId, assignedAt: $assignedAt)';
}


}

/// @nodoc
abstract mixin class $BatchFacultyCopyWith<$Res>  {
  factory $BatchFacultyCopyWith(BatchFaculty value, $Res Function(BatchFaculty) _then) = _$BatchFacultyCopyWithImpl;
@useResult
$Res call({
 String batchId, String facultyId, DateTime assignedAt
});




}
/// @nodoc
class _$BatchFacultyCopyWithImpl<$Res>
    implements $BatchFacultyCopyWith<$Res> {
  _$BatchFacultyCopyWithImpl(this._self, this._then);

  final BatchFaculty _self;
  final $Res Function(BatchFaculty) _then;

/// Create a copy of BatchFaculty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? batchId = null,Object? facultyId = null,Object? assignedAt = null,}) {
  return _then(_self.copyWith(
batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String,facultyId: null == facultyId ? _self.facultyId : facultyId // ignore: cast_nullable_to_non_nullable
as String,assignedAt: null == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [BatchFaculty].
extension BatchFacultyPatterns on BatchFaculty {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BatchFaculty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BatchFaculty() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BatchFaculty value)  $default,){
final _that = this;
switch (_that) {
case _BatchFaculty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BatchFaculty value)?  $default,){
final _that = this;
switch (_that) {
case _BatchFaculty() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String batchId,  String facultyId,  DateTime assignedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BatchFaculty() when $default != null:
return $default(_that.batchId,_that.facultyId,_that.assignedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String batchId,  String facultyId,  DateTime assignedAt)  $default,) {final _that = this;
switch (_that) {
case _BatchFaculty():
return $default(_that.batchId,_that.facultyId,_that.assignedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String batchId,  String facultyId,  DateTime assignedAt)?  $default,) {final _that = this;
switch (_that) {
case _BatchFaculty() when $default != null:
return $default(_that.batchId,_that.facultyId,_that.assignedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BatchFaculty implements BatchFaculty {
  const _BatchFaculty({required this.batchId, required this.facultyId, required this.assignedAt});
  factory _BatchFaculty.fromJson(Map<String, dynamic> json) => _$BatchFacultyFromJson(json);

@override final  String batchId;
@override final  String facultyId;
@override final  DateTime assignedAt;

/// Create a copy of BatchFaculty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchFacultyCopyWith<_BatchFaculty> get copyWith => __$BatchFacultyCopyWithImpl<_BatchFaculty>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BatchFacultyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatchFaculty&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.facultyId, facultyId) || other.facultyId == facultyId)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batchId,facultyId,assignedAt);

@override
String toString() {
  return 'BatchFaculty(batchId: $batchId, facultyId: $facultyId, assignedAt: $assignedAt)';
}


}

/// @nodoc
abstract mixin class _$BatchFacultyCopyWith<$Res> implements $BatchFacultyCopyWith<$Res> {
  factory _$BatchFacultyCopyWith(_BatchFaculty value, $Res Function(_BatchFaculty) _then) = __$BatchFacultyCopyWithImpl;
@override @useResult
$Res call({
 String batchId, String facultyId, DateTime assignedAt
});




}
/// @nodoc
class __$BatchFacultyCopyWithImpl<$Res>
    implements _$BatchFacultyCopyWith<$Res> {
  __$BatchFacultyCopyWithImpl(this._self, this._then);

  final _BatchFaculty _self;
  final $Res Function(_BatchFaculty) _then;

/// Create a copy of BatchFaculty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? batchId = null,Object? facultyId = null,Object? assignedAt = null,}) {
  return _then(_BatchFaculty(
batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String,facultyId: null == facultyId ? _self.facultyId : facultyId // ignore: cast_nullable_to_non_nullable
as String,assignedAt: null == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$AttendanceLog {

 String get id; String get batchId; String get studentId; String get date; String get status;// PRESENT, ABSENT, LATE, EXCUSED
 String? get markedBy;
/// Create a copy of AttendanceLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceLogCopyWith<AttendanceLog> get copyWith => _$AttendanceLogCopyWithImpl<AttendanceLog>(this as AttendanceLog, _$identity);

  /// Serializes this AttendanceLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLog&&(identical(other.id, id) || other.id == id)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.markedBy, markedBy) || other.markedBy == markedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,batchId,studentId,date,status,markedBy);

@override
String toString() {
  return 'AttendanceLog(id: $id, batchId: $batchId, studentId: $studentId, date: $date, status: $status, markedBy: $markedBy)';
}


}

/// @nodoc
abstract mixin class $AttendanceLogCopyWith<$Res>  {
  factory $AttendanceLogCopyWith(AttendanceLog value, $Res Function(AttendanceLog) _then) = _$AttendanceLogCopyWithImpl;
@useResult
$Res call({
 String id, String batchId, String studentId, String date, String status, String? markedBy
});




}
/// @nodoc
class _$AttendanceLogCopyWithImpl<$Res>
    implements $AttendanceLogCopyWith<$Res> {
  _$AttendanceLogCopyWithImpl(this._self, this._then);

  final AttendanceLog _self;
  final $Res Function(AttendanceLog) _then;

/// Create a copy of AttendanceLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? batchId = null,Object? studentId = null,Object? date = null,Object? status = null,Object? markedBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,markedBy: freezed == markedBy ? _self.markedBy : markedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceLog].
extension AttendanceLogPatterns on AttendanceLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceLog value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceLog value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String batchId,  String studentId,  String date,  String status,  String? markedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceLog() when $default != null:
return $default(_that.id,_that.batchId,_that.studentId,_that.date,_that.status,_that.markedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String batchId,  String studentId,  String date,  String status,  String? markedBy)  $default,) {final _that = this;
switch (_that) {
case _AttendanceLog():
return $default(_that.id,_that.batchId,_that.studentId,_that.date,_that.status,_that.markedBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String batchId,  String studentId,  String date,  String status,  String? markedBy)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceLog() when $default != null:
return $default(_that.id,_that.batchId,_that.studentId,_that.date,_that.status,_that.markedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceLog implements AttendanceLog {
  const _AttendanceLog({required this.id, required this.batchId, required this.studentId, required this.date, required this.status, this.markedBy});
  factory _AttendanceLog.fromJson(Map<String, dynamic> json) => _$AttendanceLogFromJson(json);

@override final  String id;
@override final  String batchId;
@override final  String studentId;
@override final  String date;
@override final  String status;
// PRESENT, ABSENT, LATE, EXCUSED
@override final  String? markedBy;

/// Create a copy of AttendanceLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceLogCopyWith<_AttendanceLog> get copyWith => __$AttendanceLogCopyWithImpl<_AttendanceLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLog&&(identical(other.id, id) || other.id == id)&&(identical(other.batchId, batchId) || other.batchId == batchId)&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.markedBy, markedBy) || other.markedBy == markedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,batchId,studentId,date,status,markedBy);

@override
String toString() {
  return 'AttendanceLog(id: $id, batchId: $batchId, studentId: $studentId, date: $date, status: $status, markedBy: $markedBy)';
}


}

/// @nodoc
abstract mixin class _$AttendanceLogCopyWith<$Res> implements $AttendanceLogCopyWith<$Res> {
  factory _$AttendanceLogCopyWith(_AttendanceLog value, $Res Function(_AttendanceLog) _then) = __$AttendanceLogCopyWithImpl;
@override @useResult
$Res call({
 String id, String batchId, String studentId, String date, String status, String? markedBy
});




}
/// @nodoc
class __$AttendanceLogCopyWithImpl<$Res>
    implements _$AttendanceLogCopyWith<$Res> {
  __$AttendanceLogCopyWithImpl(this._self, this._then);

  final _AttendanceLog _self;
  final $Res Function(_AttendanceLog) _then;

/// Create a copy of AttendanceLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? batchId = null,Object? studentId = null,Object? date = null,Object? status = null,Object? markedBy = freezed,}) {
  return _then(_AttendanceLog(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,batchId: null == batchId ? _self.batchId : batchId // ignore: cast_nullable_to_non_nullable
as String,studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,markedBy: freezed == markedBy ? _self.markedBy : markedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TopStudent {

 String get studentId; String get studentName; int get completedCourses; double get averageScore;
/// Create a copy of TopStudent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopStudentCopyWith<TopStudent> get copyWith => _$TopStudentCopyWithImpl<TopStudent>(this as TopStudent, _$identity);

  /// Serializes this TopStudent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.completedCourses, completedCourses) || other.completedCourses == completedCourses)&&(identical(other.averageScore, averageScore) || other.averageScore == averageScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentName,completedCourses,averageScore);

@override
String toString() {
  return 'TopStudent(studentId: $studentId, studentName: $studentName, completedCourses: $completedCourses, averageScore: $averageScore)';
}


}

/// @nodoc
abstract mixin class $TopStudentCopyWith<$Res>  {
  factory $TopStudentCopyWith(TopStudent value, $Res Function(TopStudent) _then) = _$TopStudentCopyWithImpl;
@useResult
$Res call({
 String studentId, String studentName, int completedCourses, double averageScore
});




}
/// @nodoc
class _$TopStudentCopyWithImpl<$Res>
    implements $TopStudentCopyWith<$Res> {
  _$TopStudentCopyWithImpl(this._self, this._then);

  final TopStudent _self;
  final $Res Function(TopStudent) _then;

/// Create a copy of TopStudent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentId = null,Object? studentName = null,Object? completedCourses = null,Object? averageScore = null,}) {
  return _then(_self.copyWith(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,completedCourses: null == completedCourses ? _self.completedCourses : completedCourses // ignore: cast_nullable_to_non_nullable
as int,averageScore: null == averageScore ? _self.averageScore : averageScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [TopStudent].
extension TopStudentPatterns on TopStudent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopStudent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopStudent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopStudent value)  $default,){
final _that = this;
switch (_that) {
case _TopStudent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopStudent value)?  $default,){
final _that = this;
switch (_that) {
case _TopStudent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String studentId,  String studentName,  int completedCourses,  double averageScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopStudent() when $default != null:
return $default(_that.studentId,_that.studentName,_that.completedCourses,_that.averageScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String studentId,  String studentName,  int completedCourses,  double averageScore)  $default,) {final _that = this;
switch (_that) {
case _TopStudent():
return $default(_that.studentId,_that.studentName,_that.completedCourses,_that.averageScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String studentId,  String studentName,  int completedCourses,  double averageScore)?  $default,) {final _that = this;
switch (_that) {
case _TopStudent() when $default != null:
return $default(_that.studentId,_that.studentName,_that.completedCourses,_that.averageScore);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TopStudent implements TopStudent {
  const _TopStudent({required this.studentId, required this.studentName, this.completedCourses = 0, this.averageScore = 0.0});
  factory _TopStudent.fromJson(Map<String, dynamic> json) => _$TopStudentFromJson(json);

@override final  String studentId;
@override final  String studentName;
@override@JsonKey() final  int completedCourses;
@override@JsonKey() final  double averageScore;

/// Create a copy of TopStudent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopStudentCopyWith<_TopStudent> get copyWith => __$TopStudentCopyWithImpl<_TopStudent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopStudentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopStudent&&(identical(other.studentId, studentId) || other.studentId == studentId)&&(identical(other.studentName, studentName) || other.studentName == studentName)&&(identical(other.completedCourses, completedCourses) || other.completedCourses == completedCourses)&&(identical(other.averageScore, averageScore) || other.averageScore == averageScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,studentId,studentName,completedCourses,averageScore);

@override
String toString() {
  return 'TopStudent(studentId: $studentId, studentName: $studentName, completedCourses: $completedCourses, averageScore: $averageScore)';
}


}

/// @nodoc
abstract mixin class _$TopStudentCopyWith<$Res> implements $TopStudentCopyWith<$Res> {
  factory _$TopStudentCopyWith(_TopStudent value, $Res Function(_TopStudent) _then) = __$TopStudentCopyWithImpl;
@override @useResult
$Res call({
 String studentId, String studentName, int completedCourses, double averageScore
});




}
/// @nodoc
class __$TopStudentCopyWithImpl<$Res>
    implements _$TopStudentCopyWith<$Res> {
  __$TopStudentCopyWithImpl(this._self, this._then);

  final _TopStudent _self;
  final $Res Function(_TopStudent) _then;

/// Create a copy of TopStudent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? studentId = null,Object? studentName = null,Object? completedCourses = null,Object? averageScore = null,}) {
  return _then(_TopStudent(
studentId: null == studentId ? _self.studentId : studentId // ignore: cast_nullable_to_non_nullable
as String,studentName: null == studentName ? _self.studentName : studentName // ignore: cast_nullable_to_non_nullable
as String,completedCourses: null == completedCourses ? _self.completedCourses : completedCourses // ignore: cast_nullable_to_non_nullable
as int,averageScore: null == averageScore ? _self.averageScore : averageScore // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
