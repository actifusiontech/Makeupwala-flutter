import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_event.freezed.dart';

@freezed
class EducationEvent with _$EducationEvent {
  const factory EducationEvent.fetchDashboard() = _FetchDashboard;
  const factory EducationEvent.fetchCourses() = _FetchCourses;
  const factory EducationEvent.fetchStudents(String instituteId) = _FetchStudents;
  const factory EducationEvent.createCourse(Map<String, dynamic> courseData) = _CreateCourse;
  const factory EducationEvent.addLesson(String courseId, Map<String, dynamic> lessonData) = _AddLesson;
  const factory EducationEvent.verifyStudent(String enrollmentId, bool approved) = _VerifyStudent;
  const factory EducationEvent.postPlacement(Map<String, dynamic> placementData) = _PostPlacement;
}
