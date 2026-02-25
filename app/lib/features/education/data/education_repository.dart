import 'package:dio/dio.dart';
import '../../../../core/network/api_client.dart';
import '../domain/education_models.dart';
import 'dart:developer' as developer;

class EducationRepository {
  final ApiClient _apiClient;

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
      final response = await _apiClient.dio.get('/education/my-courses');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch my courses: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<void> logAttendance(String batchId, String studentId, String date, String status) async {
    try {
      await _apiClient.dio.post('/education/batches/$batchId/attendance', data: {
        'student_id': studentId,
        'date': date,
        'status': status,
      });
    } catch (e) {
      developer.log('❌ Failed to log attendance: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getAttendanceLogs(String batchId, String date) async {
    try {
      final response = await _apiClient.dio.get('/education/batches/$batchId/attendance', queryParameters: {'date': date});
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch attendance logs: $e', name: 'EducationRepository');
      return [];
    }
  }
    
  Future<Map<String, dynamic>> getBatchDetails(String batchId) async {
    try {
      final response = await _apiClient.dio.get('/education/batches/$batchId');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch batch details: $e', name: 'EducationRepository');
      return {};
    }
  }

  Future<List<dynamic>> getBatches([String? instituteId]) async {
    try {
      final path = instituteId != null ? '/admin/education/institutes/$instituteId/batches' : '/education/batches';
      final response = await _apiClient.dio.get(path);
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch batches: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<dynamic> getMyInstitute() async {
    try {
      final response = await _apiClient.dio.get('/education/institutes/me');
      return response.data as Map<String, dynamic>?;
    } catch (e) {
      developer.log('⚠️ Failed to fetch my institute: $e', name: 'EducationRepository');
      return null;
    }
  }

  Future<void> createCourse(Map<String, dynamic> courseData) async {
    try {
      await _apiClient.dio.post('/education/courses', data: courseData);
    } catch (e) {
      developer.log('❌ Failed to create course: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getStudents(String instituteId) async {
    try {
      final response = await _apiClient.dio.get('/education/institutes/$instituteId/students');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch students: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<void> verifyStudent(String enrollmentId, bool approved) async {
    try {
      await _apiClient.dio.patch('/education/enrollments/$enrollmentId/verify', data: {
        'status': approved ? 'approved' : 'rejected',
      });
    } catch (e) {
      developer.log('❌ Failed to verify student: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<void> postPlacement(Map<String, dynamic> placementData) async {
    try {
      await _apiClient.dio.post('/education/placements', data: placementData);
    } catch (e) {
      developer.log('❌ Failed to post placement: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  // Fees Management
  Future<void> createFeeStructure(String instituteId, Map<String, dynamic> feeData) async {
    try {
      await _apiClient.dio.post('/admin/education/institutes/$instituteId/fees', data: feeData);
    } catch (e) {
      developer.log('❌ Failed to create fee structure: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getFeeStructures(String instituteId) async {
    try {
      final response = await _apiClient.dio.get('/admin/education/institutes/$instituteId/fees');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch fee structures: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<void> recordFeePayment(Map<String, dynamic> paymentData) async {
    try {
      await _apiClient.dio.post('/admin/education/fees/pay', data: paymentData);
    } catch (e) {
      developer.log('❌ Failed to record fee payment: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getStudentFeePayments(String instituteId, String studentId) async {
    try {
      final response = await _apiClient.dio.get('/admin/education/institutes/$instituteId/students/$studentId/fees');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch student fee payments: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<List<dynamic>> getAllInstituteFeePayments(String instituteId) async {
    try {
      final response = await _apiClient.dio.get('/education/institutes/$instituteId/all-fees');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch all institute fee payments: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<void> grantScholarship(String enrollmentId, double discountAmount) async {
    try {
      await _apiClient.dio.post('/admin/education/enrollments/$enrollmentId/scholarship', data: {
        'enrollment_id': enrollmentId,
        'discount_amount': discountAmount,
      });
    } catch (e) {
      developer.log('❌ Failed to grant scholarship: $e', name: 'EducationRepository');
      rethrow;
    }
  }
  
  // Leads CRM
  Future<void> createStudentLead(String instituteId, Map<String, dynamic> leadData) async {
    try {
      await _apiClient.dio.post('/admin/education/institutes/$instituteId/leads', data: leadData);
    } catch (e) {
      developer.log('❌ Failed to create lead: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> getStudentLeads(String instituteId) async {
    try {
      final response = await _apiClient.dio.get('/admin/education/institutes/$instituteId/leads');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch leads: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<void> updateStudentLeadStatus(String leadId, String status) async {
    try {
      await _apiClient.dio.patch('/admin/education/leads/$leadId/status', data: {'status': status});
    } catch (e) {
      developer.log('❌ Failed to update lead status: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  // Certificates
  Future<Map<String, dynamic>> issueCertificate(String enrollmentId) async {
    try {
      final response = await _apiClient.dio.post('/admin/education/enrollments/$enrollmentId/certificate');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      developer.log('❌ Failed to issue certificate: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  // Grading
  Future<void> submitPracticalScore(String batchId, String studentId, Map<String, dynamic> scoreData) async {
    try {
      await _apiClient.dio.post('/admin/education/batches/$batchId/students/$studentId/scores', data: scoreData);
    } catch (e) {
      developer.log('❌ Failed to submit score: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<dynamic>> fetchStudentPracticalScores(String batchId, String studentId) async {
    try {
      final response = await _apiClient.dio.get('/admin/education/batches/$batchId/students/$studentId/scores');
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch scores: $e', name: 'EducationRepository');
      return [];
    }
  }

  // Placements
  Future<List<dynamic>> fetchPlacementListings(String? instituteId) async {
    try {
      final path = instituteId != null ? '/admin/education/institutes/$instituteId/placements' : '/admin/education/placements';
      final response = await _apiClient.dio.get(path);
      return response.data as List<dynamic>;
    } catch (e) {
      developer.log('⚠️ Failed to fetch placements: $e', name: 'EducationRepository');
      return [];
    }
  }

  Future<void> createPlacementListing(String instituteId, Map<String, dynamic> listingData) async {
    try {
      await _apiClient.dio.post('/admin/education/institutes/$instituteId/placements', data: listingData);
    } catch (e) {
      developer.log('❌ Failed to create placement: $e', name: 'EducationRepository');
      rethrow;
    }
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

  Future<void> addLesson(String courseId, Map<String, dynamic> lessonData) async {
    try {
      await _apiClient.dio.post('/education/courses/$courseId/lessons', data: lessonData);
    } catch (e) {
      developer.log('❌ Failed to add lesson: $e', name: 'EducationRepository');
      rethrow;
    }
  }

  Future<List<TopStudent>> getLeaderboard() async {
    // Mock data for compilation fix
    return [
      const TopStudent(studentId: '1', studentName: 'Alice', completedCourses: 5),
      const TopStudent(studentId: '2', studentName: 'Bob', completedCourses: 3),
      const TopStudent(studentId: '3', studentName: 'Charlie', completedCourses: 2),
      const TopStudent(studentId: '4', studentName: 'Diana', completedCourses: 1),
    ];
  }
}
