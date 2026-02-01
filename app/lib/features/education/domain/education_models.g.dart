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
      logoUrl: json['logo_url'] as String?,
      website: json['website'] as String?,
      address: json['address'] as String?,
      isVerified: json['is_verified'] as bool? ?? false,
    );

Map<String, dynamic> _$$InstituteImplToJson(_$InstituteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logo_url': instance.logoUrl,
      'website': instance.website,
      'address': instance.address,
      'is_verified': instance.isVerified,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
  id: json['id'] as String,
  instituteId: json['institute_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  thumbnailUrl: json['thumbnail_url'] as String?,
  category: json['category'] as String?,
  feeAmount: (json['fee_amount'] as num?)?.toDouble() ?? 0.0,
  durationWeeks: (json['duration_weeks'] as num?)?.toInt() ?? 0,
  level: json['level'] as String? ?? 'beginner',
  lessons: (json['lessons'] as List<dynamic>?)
      ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'institute_id': instance.instituteId,
      'title': instance.title,
      'description': instance.description,
      'thumbnail_url': instance.thumbnailUrl,
      'category': instance.category,
      'fee_amount': instance.feeAmount,
      'duration_weeks': instance.durationWeeks,
      'level': instance.level,
      'lessons': instance.lessons,
    };

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
  id: json['id'] as String,
  courseId: json['course_id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  videoUrl: json['video_url'] as String,
  contentText: json['content_text'] as String?,
  sequenceOrder: (json['sequence_order'] as num).toInt(),
  isPreview: json['is_preview'] as bool? ?? false,
  isCompleted: json['is_completed'] as bool? ?? false,
);

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'title': instance.title,
      'description': instance.description,
      'video_url': instance.videoUrl,
      'content_text': instance.contentText,
      'sequence_order': instance.sequenceOrder,
      'is_preview': instance.isPreview,
      'is_completed': instance.isCompleted,
    };

_$EnrollmentImpl _$$EnrollmentImplFromJson(Map<String, dynamic> json) =>
    _$EnrollmentImpl(
      id: json['id'] as String,
      courseId: json['course_id'] as String,
      studentId: json['student_id'] as String,
      status: json['status'] as String? ?? 'enrolled',
      progressPercentage: (json['progress_percentage'] as num?)?.toInt() ?? 0,
      enrolledAt: DateTime.parse(json['enrolled_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnrollmentImplToJson(_$EnrollmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'student_id': instance.studentId,
      'status': instance.status,
      'progress_percentage': instance.progressPercentage,
      'enrolled_at': instance.enrolledAt.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'course': instance.course,
    };

_$PlacementListingImpl _$$PlacementListingImplFromJson(
  Map<String, dynamic> json,
) => _$PlacementListingImpl(
  id: json['id'] as String,
  instituteId: json['institute_id'] as String,
  title: json['title'] as String,
  companyName: json['company_name'] as String,
  location: json['location'] as String?,
  description: json['description'] as String?,
  stipendAmount: (json['stipend_amount'] as num?)?.toDouble(),
  listingType: json['listing_type'] as String? ?? 'job',
  isActive: json['is_active'] as bool? ?? true,
);

Map<String, dynamic> _$$PlacementListingImplToJson(
  _$PlacementListingImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'institute_id': instance.instituteId,
  'title': instance.title,
  'company_name': instance.companyName,
  'location': instance.location,
  'description': instance.description,
  'stipend_amount': instance.stipendAmount,
  'listing_type': instance.listingType,
  'is_active': instance.isActive,
};

_$BatchImpl _$$BatchImplFromJson(Map<String, dynamic> json) => _$BatchImpl(
  id: json['id'] as String,
  instituteId: json['institute_id'] as String,
  courseId: json['course_id'] as String?,
  name: json['name'] as String,
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
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
      'institute_id': instance.instituteId,
      'course_id': instance.courseId,
      'name': instance.name,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'status': instance.status,
      'students': instance.students,
      'faculty': instance.faculty,
    };

_$BatchStudentImpl _$$BatchStudentImplFromJson(Map<String, dynamic> json) =>
    _$BatchStudentImpl(
      batchId: json['batch_id'] as String,
      studentId: json['student_id'] as String,
      enrolledAt: DateTime.parse(json['enrolled_at'] as String),
    );

Map<String, dynamic> _$$BatchStudentImplToJson(_$BatchStudentImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchId,
      'student_id': instance.studentId,
      'enrolled_at': instance.enrolledAt.toIso8601String(),
    };

_$BatchFacultyImpl _$$BatchFacultyImplFromJson(Map<String, dynamic> json) =>
    _$BatchFacultyImpl(
      batchId: json['batch_id'] as String,
      facultyId: json['faculty_id'] as String,
      assignedAt: DateTime.parse(json['assigned_at'] as String),
    );

Map<String, dynamic> _$$BatchFacultyImplToJson(_$BatchFacultyImpl instance) =>
    <String, dynamic>{
      'batch_id': instance.batchId,
      'faculty_id': instance.facultyId,
      'assigned_at': instance.assignedAt.toIso8601String(),
    };

_$AttendanceLogImpl _$$AttendanceLogImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceLogImpl(
      id: json['id'] as String,
      batchId: json['batch_id'] as String,
      studentId: json['student_id'] as String,
      date: json['date'] as String,
      status: json['status'] as String,
      markedBy: json['marked_by'] as String?,
    );

Map<String, dynamic> _$$AttendanceLogImplToJson(_$AttendanceLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'batch_id': instance.batchId,
      'student_id': instance.studentId,
      'date': instance.date,
      'status': instance.status,
      'marked_by': instance.markedBy,
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
