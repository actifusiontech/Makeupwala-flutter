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

  // Fees
  const factory EducationEvent.createFeeStructure(String instituteId, Map<String, dynamic> feeData) = _CreateFeeStructure;
  const factory EducationEvent.fetchFeeStructures(String instituteId) = _FetchFeeStructures;
  const factory EducationEvent.recordFeePayment(Map<String, dynamic> paymentData) = _RecordFeePayment;
  const factory EducationEvent.fetchStudentFees(String instituteId, String studentId) = _FetchStudentFees;
  const factory EducationEvent.grantScholarship(String enrollmentId, double discountAmount) = _GrantScholarship;

  // Leads CRM
  const factory EducationEvent.createStudentLead(String instituteId, Map<String, dynamic> leadData) = _CreateStudentLead;
  const factory EducationEvent.fetchStudentLeads(String instituteId) = _FetchStudentLeads;
  const factory EducationEvent.updateStudentLeadStatus(String leadId, String status) = _UpdateStudentLeadStatus;

  // Certificates
  const factory EducationEvent.issueCertificate(String enrollmentId) = _IssueCertificate;

  // Grading
  const factory EducationEvent.submitPracticalScore(String batchId, String studentId, Map<String, dynamic> scoreData) = _SubmitPracticalScore;
  const factory EducationEvent.fetchStudentPracticalScores(String batchId, String studentId) = _FetchStudentPracticalScores;

  // Placements
  const factory EducationEvent.fetchPlacementListings(String? instituteId) = _FetchPlacementListings;
  const factory EducationEvent.createPlacementListing(String instituteId, Map<String, dynamic> listingData) = _CreatePlacementListing;

  const factory EducationEvent.fetchBatchDetails(String batchId) = _FetchBatchDetails;

  // Attendance (New)
  const factory EducationEvent.logAttendance({
    required String batchId,
    required String studentId,
    required String date,
    required String status,
  }) = _LogAttendance;
  const factory EducationEvent.fetchAttendanceLogs(String batchId, String date) = _FetchAttendanceLogs;

  // Global Fees (New)
  const factory EducationEvent.fetchAllInstituteFees(String instituteId) = _FetchAllInstituteFees;
}
