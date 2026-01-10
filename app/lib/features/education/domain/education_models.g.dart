// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Institute _$InstituteFromJson(Map<String, dynamic> json) => _Institute(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  logoUrl: json['logoUrl'] as String?,
  website: json['website'] as String?,
  address: json['address'] as String?,
  isVerified: json['isVerified'] as bool? ?? false,
);

Map<String, dynamic> _$InstituteToJson(_Institute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'website': instance.website,
      'address': instance.address,
      'isVerified': instance.isVerified,
    };

_Course _$CourseFromJson(Map<String, dynamic> json) => _Course(
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

Map<String, dynamic> _$CourseToJson(_Course instance) => <String, dynamic>{
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

_Lesson _$LessonFromJson(Map<String, dynamic> json) => _Lesson(
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

Map<String, dynamic> _$LessonToJson(_Lesson instance) => <String, dynamic>{
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

_Enrollment _$EnrollmentFromJson(Map<String, dynamic> json) => _Enrollment(
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

Map<String, dynamic> _$EnrollmentToJson(_Enrollment instance) =>
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

_PlacementListing _$PlacementListingFromJson(Map<String, dynamic> json) =>
    _PlacementListing(
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

Map<String, dynamic> _$PlacementListingToJson(_PlacementListing instance) =>
    <String, dynamic>{
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

_Batch _$BatchFromJson(Map<String, dynamic> json) => _Batch(
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

Map<String, dynamic> _$BatchToJson(_Batch instance) => <String, dynamic>{
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

_BatchStudent _$BatchStudentFromJson(Map<String, dynamic> json) =>
    _BatchStudent(
      batchId: json['batchId'] as String,
      studentId: json['studentId'] as String,
      enrolledAt: DateTime.parse(json['enrolledAt'] as String),
    );

Map<String, dynamic> _$BatchStudentToJson(_BatchStudent instance) =>
    <String, dynamic>{
      'batchId': instance.batchId,
      'studentId': instance.studentId,
      'enrolledAt': instance.enrolledAt.toIso8601String(),
    };

_BatchFaculty _$BatchFacultyFromJson(Map<String, dynamic> json) =>
    _BatchFaculty(
      batchId: json['batchId'] as String,
      facultyId: json['facultyId'] as String,
      assignedAt: DateTime.parse(json['assignedAt'] as String),
    );

Map<String, dynamic> _$BatchFacultyToJson(_BatchFaculty instance) =>
    <String, dynamic>{
      'batchId': instance.batchId,
      'facultyId': instance.facultyId,
      'assignedAt': instance.assignedAt.toIso8601String(),
    };

_AttendanceLog _$AttendanceLogFromJson(Map<String, dynamic> json) =>
    _AttendanceLog(
      id: json['id'] as String,
      batchId: json['batchId'] as String,
      studentId: json['studentId'] as String,
      date: json['date'] as String,
      status: json['status'] as String,
      markedBy: json['markedBy'] as String?,
    );

Map<String, dynamic> _$AttendanceLogToJson(_AttendanceLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'batchId': instance.batchId,
      'studentId': instance.studentId,
      'date': instance.date,
      'status': instance.status,
      'markedBy': instance.markedBy,
    };

_TopStudent _$TopStudentFromJson(Map<String, dynamic> json) => _TopStudent(
  studentId: json['student_id'] as String,
  studentName: json['student_name'] as String,
  completedCourses: (json['completed_courses'] as num?)?.toInt() ?? 0,
  averageScore: (json['average_score'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$TopStudentToJson(_TopStudent instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'student_name': instance.studentName,
      'completed_courses': instance.completedCourses,
      'average_score': instance.averageScore,
    };
