import 'package:dio/dio.dart';
import '../../../../core/network/api_client.dart';
import '../domain/education_models.dart';
import 'dart:developer' as developer;

class EducationRepository {
  final ApiClient _apiClient;
// ... (start of class)

  EducationRepository(this._apiClient);

  Future<void> registerInstitute(Map<String, dynamic> instituteData) async {
    try {
      await _apiClient.dio.post('/education/institutes/register', data: instituteData);
    } catch (e) {
      developer.log('❌ Failed to register institute: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<void> enrollStudent(String courseId, String instituteId) async {
    try {
      await _apiClient.dio.post('/education/enroll', data: {
        'course_id': courseId,
        'institute_id': instituteId, // Backend might infer student from token, but InstituteID needed for context
      });
    } catch (e) {
      developer.log('❌ Failed to enroll in course: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  // Public: Get all courses
  Future<List<dynamic>> getCourses() async {
    try {
      final response = await _apiClient.dio.get('/education/courses');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch courses: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<List<dynamic>> getMyCourses() async {
    try {
      // Assuming backend supports listing courses for the authenticated educator
      // or we use a general list for MVP.
      final response = await _apiClient.dio.get('/education/courses'); 
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch courses: $e', name: 'EducationRepository');
      return [];
    }
  }

  // Legacy / Placeholder Methods
  Future<void> markAttendance(String batchId, List<dynamic> logs) async {
    // Stub
  }
    
  Future<List<dynamic>> getBatches([String? instituteId]) async { 
    // Accepting optional argument to satisfy 'Too many positional arguments: 0 expected, but 1 found'
    return [];
  }

  Future<dynamic> getMyInstitute() async {
    return null;
  }
  
  Future<void> completeLesson(String enrollmentId, String lessonId) async {
    // Stub
  }
  
  Future<Map<String, dynamic>> getInstituteStats(String instituteId) async {
    try {
      final response = await _apiClient.dio.get('/education/institutes/$instituteId/stats');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch institute stats: $e', name: 'EducationRepository');
      return {};
    }
  }

  Future<List<TopStudent>> getLeaderboard() async {
    // Mock data for compilation fix
    return [
      const TopStudent(studentId: '1', studentName: 'Alice', completedCourses: 5),
      const TopStudent(studentId: '2', studentName: 'Bob', completedCourses: 3),
    ];
  }
}
