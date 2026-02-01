// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InstituteImpl _$$InstituteImplFromJson(Map<String, dynamic> json) =>
    _$InstituteImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      logoUrl: json['logoUrl'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$$InstituteImplToJson(_$InstituteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'website': instance.website,
      'address': instance.address,
      'isVerified': instance.isVerified,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
  id: json['id'] as String,
  instituteId: json['instituteId'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  thumbnailUrl: json['thumbnailUrl'] as String?,
  category: json['category'] as String?,
  feeAmount: (json['feeAmount'] as num?)?.toDouble() ?? 0.0,
  durationWeeks: (json['durationWeeks'] as num?)?.toInt() ?? 0,
  level: json['level'] as String? ?? 'beginner',
  lessons: (json['lessons'] as List<dynamic>?)
      ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instituteId': instance.instituteId,
      'title': instance.title,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'category': instance.category,
      'feeAmount': instance.feeAmount,
      'durationWeeks': instance.durationWeeks,
      'level': instance.level,
      'lessons': instance.lessons,
    };

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
  id: json['id'] as String,
  courseId: json['courseId'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  videoUrl: json['videoUrl'] as String,
  contentText: json['contentText'] as String?,
  sequenceOrder: (json['sequenceOrder'] as num).toInt(),
  isPreview: json['isPreview'] as bool? ?? false,
  isCompleted: json['isCompleted'] as bool? ?? false,
);

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'title': instance.title,
      'description': instance.description,
      'videoUrl': instance.videoUrl,
      'contentText': instance.contentText,
      'sequenceOrder': instance.sequenceOrder,
      'isPreview': instance.isPreview,
      'isCompleted': instance.isCompleted,
    };

_$EnrollmentImpl _$$EnrollmentImplFromJson(Map<String, dynamic> json) =>
    _$EnrollmentImpl(
      id: json['id'] as String,
      courseId: json['courseId'] as String,
      studentId: json['studentId'] as String,
      status: json['status'] as String? ?? 'enrolled',
      progressPercentage: (json['progressPercentage'] as num?)?.toInt() ?? 0,
      enrolledAt: DateTime.parse(json['enrolledAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnrollmentImplToJson(_$EnrollmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'studentId': instance.studentId,
      'status': instance.status,
      'progressPercentage': instance.progressPercentage,
      'enrolledAt': instance.enrolledAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'course': instance.course,
    };

_$PlacementListingImpl _$$PlacementListingImplFromJson(
  Map<String, dynamic> json,
) => _$PlacementListingImpl(
  id: json['id'] as String,
  instituteId: json['instituteId'] as String,
  title: json['title'] as String,
  companyName: json['companyName'] as String,
  location: json['location'] as String?,
  description: json['description'] as String?,
  stipendAmount: (json['stipendAmount'] as num?)?.toDouble(),
  listingType: json['listingType'] as String? ?? 'job',
  isActive: json['isActive'] as bool? ?? true,
);

Map<String, dynamic> _$$PlacementListingImplToJson(
  _$PlacementListingImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'instituteId': instance.instituteId,
  'title': instance.title,
  'companyName': instance.companyName,
  'location': instance.location,
  'description': instance.description,
  'stipendAmount': instance.stipendAmount,
  'listingType': instance.listingType,
  'isActive': instance.isActive,
};

_$BatchImpl _$$BatchImplFromJson(Map<String, dynamic> json) => _$BatchImpl(
  id: json['id'] as String,
  instituteId: json['instituteId'] as String,
  courseId: json['courseId'] as String?,
  name: json['name'] as String,
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  status: json['status'] as String? ?? 'ACTIVE',
  students: (json['students'] as List<dynamic>?)
      ?.map((e) => BatchStudent.fromJson(e as Map<String, dynamic>))
      .toList(),
  faculty: (json['faculty'] as List<dynamic>?)
      ?.map((e) => BatchFaculty.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BatchImplToJson(_$BatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instituteId': instance.instituteId,
      'courseId': instance.courseId,
      'name': instance.name,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'status': instance.status,
      'students': instance.students,
      'faculty': instance.faculty,
    };

_$BatchStudentImpl _$$BatchStudentImplFromJson(Map<String, dynamic> json) =>
    _$BatchStudentImpl(
      batchId: json['batchId'] as String,
      studentId: json['studentId'] as String,
      enrolledAt: DateTime.parse(json['enrolledAt'] as String),
    );

Map<String, dynamic> _$$BatchStudentImplToJson(_$BatchStudentImpl instance) =>
    <String, dynamic>{
      'batchId': instance.batchId,
      'studentId': instance.studentId,
      'enrolledAt': instance.enrolledAt.toIso8601String(),
    };

_$BatchFacultyImpl _$$BatchFacultyImplFromJson(Map<String, dynamic> json) =>
    _$BatchFacultyImpl(
      batchId: json['batchId'] as String,
      facultyId: json['facultyId'] as String,
      assignedAt: DateTime.parse(json['assignedAt'] as String),
    );

Map<String, dynamic> _$$BatchFacultyImplToJson(_$BatchFacultyImpl instance) =>
    <String, dynamic>{
      'batchId': instance.batchId,
      'facultyId': instance.facultyId,
      'assignedAt': instance.assignedAt.toIso8601String(),
    };

_$AttendanceLogImpl _$$AttendanceLogImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceLogImpl(
      id: json['id'] as String,
      batchId: json['batchId'] as String,
      studentId: json['studentId'] as String,
      date: json['date'] as String,
      status: json['status'] as String,
      markedBy: json['markedBy'] as String?,
    );

Map<String, dynamic> _$$AttendanceLogImplToJson(_$AttendanceLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'batchId': instance.batchId,
      'studentId': instance.studentId,
      'date': instance.date,
      'status': instance.status,
      'markedBy': instance.markedBy,
    };

_$TopStudentImpl _$$TopStudentImplFromJson(Map<String, dynamic> json) =>
    _$TopStudentImpl(
      studentId: json['student_id'] as String,
      studentName: json['student_name'] as String,
      completedCourses: (json['completed_courses'] as num?)?.toInt() ?? 0,
      averageScore: (json['average_score'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$TopStudentImplToJson(_$TopStudentImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'completed_courses': instance.completedCourses,
      'average_score': instance.averageScore,
    };
