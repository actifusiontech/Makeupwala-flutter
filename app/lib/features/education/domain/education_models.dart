import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_models.freezed.dart';
part 'education_models.g.dart';

@freezed
class Institute with _$Institute {
  const factory Institute({
    required String id,
    required String name,
    String? description,
    String? logoUrl,
    String? website,
    String? address,
    @Default(false) bool isVerified,
  }) = _Institute;

  factory Institute.fromJson(Map<String, dynamic> json) => _$InstituteFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String instituteId,
    required String title,
    String? description,
    String? thumbnailUrl,
    String? category,
    @Default(0.0) double feeAmount,
    @Default(0) int durationWeeks,
    @Default('beginner') String level,
    List<Lesson>? lessons,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    required String courseId,
    required String title,
    String? description,
    required String videoUrl,
    String? contentText,
    required int sequenceOrder,
    @Default(false) bool isPreview,
    @Default(false) bool isCompleted,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

@freezed
class Enrollment with _$Enrollment {
  const factory Enrollment({
    required String id,
    required String courseId,
    required String studentId,
    @Default('enrolled') String status,
    @Default(0) int progressPercentage,
    required DateTime enrolledAt,
    DateTime? completedAt,
    Course? course,
  }) = _Enrollment;

  factory Enrollment.fromJson(Map<String, dynamic> json) => _$EnrollmentFromJson(json);
}

@freezed
class PlacementListing with _$PlacementListing {
  const factory PlacementListing({
    required String id,
    required String instituteId,
    required String title,
    required String companyName,
    String? location,
    String? description,
    double? stipendAmount,
    @Default('job') String listingType,
    @Default(true) bool isActive,
  }) = _PlacementListing;

  factory PlacementListing.fromJson(Map<String, dynamic> json) => _$PlacementListingFromJson(json);
}

@freezed
class Batch with _$Batch {
  const factory Batch({
    required String id,
    required String instituteId,
    String? courseId,
    required String name,
    DateTime? startDate,
    DateTime? endDate,
    @Default('ACTIVE') String status,
    List<BatchStudent>? students,
    List<BatchFaculty>? faculty,
  }) = _Batch;

  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
}

@freezed
class BatchStudent with _$BatchStudent {
  const factory BatchStudent({
    required String batchId,
    required String studentId,
    required DateTime enrolledAt,
  }) = _BatchStudent;

  factory BatchStudent.fromJson(Map<String, dynamic> json) => _$BatchStudentFromJson(json);
}

@freezed
class BatchFaculty with _$BatchFaculty {
  const factory BatchFaculty({
    required String batchId,
    required String facultyId,
    required DateTime assignedAt,
  }) = _BatchFaculty;

  factory BatchFaculty.fromJson(Map<String, dynamic> json) => _$BatchFacultyFromJson(json);
}

@freezed
class AttendanceLog with _$AttendanceLog {
  const factory AttendanceLog({
    required String id,
    required String batchId,
    required String studentId,
    required String date,
    required String status, // PRESENT, ABSENT, LATE, EXCUSED
    String? markedBy,
  }) = _AttendanceLog;

  factory AttendanceLog.fromJson(Map<String, dynamic> json) => _$AttendanceLogFromJson(json);
  factory AttendanceLog.fromJson(Map<String, dynamic> json) => _$AttendanceLogFromJson(json);
}

@freezed
class TopStudent with _$TopStudent {
  // Using explicit annotation to match backend snake_case if global config doesn't cover it
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TopStudent({
    required String studentId,
    required String studentName,
    @Default(0) int completedCourses,
    @Default(0.0) double averageScore,
  }) = _TopStudent;

  factory TopStudent.fromJson(Map<String, dynamic> json) => _$TopStudentFromJson(json);
}

