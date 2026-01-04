import 'package:dio/dio.dart';
import '../domain/education_models.dart';

class EducationRepository {
  final Dio _dio;

  EducationRepository(this._dio);

  // Courses
  Future<List<Course>> getCourses({String? category}) async {
    try {
      final response = await _dio.get('/education/courses', queryParameters: {
        if (category != null) 'category': category,
      });
      return (response.data as List).map((e) => Course.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<Course> getCourseDetail(String id) async {
    try {
      final response = await _dio.get('/education/courses/$id');
      return Course.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // Enrollment
  Future<Enrollment> enrollInCourse(String courseId) async {
    try {
      final response = await _dio.post('/education/courses/$courseId/enroll');
      return Enrollment.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<Enrollment>> getMyEnrollments() async {
    try {
      final response = await _dio.get('/education/my-enrollments');
      return (response.data as List).map((e) => Enrollment.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  // Progress
  Future<void> completeLesson(String enrollmentId, String lessonId) async {
    try {
      await _dio.post('/education/enrollments/$enrollmentId/lessons/$lessonId/complete');
    } catch (e) {
      rethrow;
    }
  }

  // Placements
  Future<List<PlacementListing>> getPlacements({String? instituteId}) async {
    try {
      final response = await _dio.get('/education/placements', queryParameters: {
        if (instituteId != null) 'institute_id': instituteId,
      });
      return (response.data as List).map((e) => PlacementListing.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  // Institute Operations - Batches
  Future<List<Batch>> getBatches(String instituteId) async {
    try {
      final response = await _dio.get('/education/batches', queryParameters: {
        'institute_id': instituteId,
      });
      return (response.data as List).map((e) => Batch.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  // Institute Operations - Attendance
  Future<void> markAttendance(String batchId, List<Map<String, dynamic>> logs) async {
    try {
      await _dio.post('/education/batches/$batchId/attendance', data: logs);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<AttendanceLog>> getAttendance(String batchId, String date) async {
    try {
      final response = await _dio.get('/education/batches/$batchId/attendance', queryParameters: {
        'date': date,
      });
      return (response.data as List).map((e) => AttendanceLog.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
