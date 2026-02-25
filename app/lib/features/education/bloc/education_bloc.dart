import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/education_repository.dart';
import 'education_event.dart';
import 'education_state.dart';
import '../domain/education_models.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final EducationRepository repository;

  EducationBloc({required this.repository}) : super(const EducationState.initial()) {
    on<EducationEvent>((event, emit) async {
      await event.when(
        fetchDashboard: () async {
          emit(const EducationState.loading());
          try {
            final institute = await repository.getMyInstitute();
            if (institute == null) {
              emit(const EducationState.error('No institute found for this account.'));
              return;
            }
            final stats = await repository.getInstituteStats(institute['id']);
            emit(EducationState.dashboardLoaded(
              stats: stats,
              institute: Institute.fromJson(institute),
            ));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchCourses: () async {
          emit(const EducationState.loading());
          try {
            final courses = await repository.getMyCourses();
            emit(EducationState.coursesLoaded(courses));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchStudents: (instituteId) async {
          emit(const EducationState.loading());
          try {
            final students = await repository.getStudents(instituteId);
            emit(EducationState.studentsLoaded(students));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        createCourse: (courseData) async {
          emit(const EducationState.loading());
          try {
            await repository.createCourse(courseData);
            emit(const EducationState.actionSuccess('Course created successfully!'));
            add(const EducationEvent.fetchCourses());
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        verifyStudent: (enrollmentId, approved) async {
          emit(const EducationState.loading());
          try {
            await repository.verifyStudent(enrollmentId, approved);
            emit(EducationState.actionSuccess(approved ? 'Student verified!' : 'Enrollment rejected.'));
            // We might need to refetch students, but we need instituteId.
            // For now, UI can handle refetching if it has the ID.
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        postPlacement: (placementData) async {
          emit(const EducationState.loading());
          try {
            await repository.postPlacement(placementData);
            emit(const EducationState.actionSuccess('Placement posted successfully!'));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        addLesson: (courseId, lessonData) async {
          emit(const EducationState.loading());
          try {
            await repository.addLesson(courseId, lessonData);
            emit(const EducationState.actionSuccess('Lesson added successfully!'));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        createFeeStructure: (instituteId, feeData) async {
          emit(const EducationState.loading());
          try {
            await repository.createFeeStructure(instituteId, feeData);
            emit(const EducationState.actionSuccess('Fee structure created!'));
            add(EducationEvent.fetchFeeStructures(instituteId));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchFeeStructures: (instituteId) async {
          emit(const EducationState.loading());
          try {
            final fees = await repository.getFeeStructures(instituteId);
            emit(EducationState.feeStructuresLoaded(fees));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        recordFeePayment: (paymentData) async {
          emit(const EducationState.loading());
          try {
            await repository.recordFeePayment(paymentData);
            emit(const EducationState.actionSuccess('Payment recorded successfully!'));
            if (paymentData['institute_id'] != null && paymentData['student_id'] != null) {
               add(EducationEvent.fetchStudentFees(paymentData['institute_id'], paymentData['student_id']));
            }
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchStudentFees: (instituteId, studentId) async {
          emit(const EducationState.loading());
          try {
            final payments = await repository.getStudentFeePayments(instituteId, studentId);
            emit(EducationState.studentFeesLoaded(payments));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        grantScholarship: (enrollmentId, discountAmount) async {
          emit(const EducationState.loading());
          try {
            await repository.grantScholarship(enrollmentId, discountAmount);
            emit(const EducationState.actionSuccess('Scholarship granted successfully!'));
            // Refetching students or dashboard can be triggered from UI
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        createStudentLead: (instituteId, leadData) async {
          emit(const EducationState.loading());
          try {
            await repository.createStudentLead(instituteId, leadData);
            emit(const EducationState.actionSuccess('Lead added successfully!'));
            add(EducationEvent.fetchStudentLeads(instituteId));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchStudentLeads: (instituteId) async {
          emit(const EducationState.loading());
          try {
            final leads = await repository.getStudentLeads(instituteId);
            emit(EducationState.studentLeadsLoaded(leads));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        updateStudentLeadStatus: (leadId, status) async {
          emit(const EducationState.loading());
          try {
            await repository.updateStudentLeadStatus(leadId, status);
            emit(const EducationState.actionSuccess('Lead status updated!'));
            // Re-fetch triggers will be handled by UI or we can pass instituteId
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        issueCertificate: (enrollmentId) async {
          emit(const EducationState.loading());
          try {
            final cert = await repository.issueCertificate(enrollmentId);
            emit(EducationState.certificateIssued(cert));
            emit(const EducationState.actionSuccess('Certificate Generated!'));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        submitPracticalScore: (batchId, studentId, scoreData) async {
          emit(const EducationState.loading());
          try {
            await repository.submitPracticalScore(batchId, studentId, scoreData);
            emit(const EducationState.actionSuccess('Score submitted successfully!'));
            add(EducationEvent.fetchStudentPracticalScores(batchId, studentId));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchStudentPracticalScores: (batchId, studentId) async {
          emit(const EducationState.loading());
          try {
            final scores = await repository.fetchStudentPracticalScores(batchId, studentId);
            emit(EducationState.practicalScoresLoaded(scores));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchPlacementListings: (instituteId) async {
          emit(const EducationState.loading());
          try {
            final listings = await repository.fetchPlacementListings(instituteId);
            emit(EducationState.placementListingsLoaded(listings));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        createPlacementListing: (instituteId, listingData) async {
          emit(const EducationState.loading());
          try {
            await repository.createPlacementListing(instituteId, listingData);
            emit(const EducationState.actionSuccess('Placement listing created!'));
            add(EducationEvent.fetchPlacementListings(instituteId));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchBatchDetails: (batchId) async {
          emit(const EducationState.loading());
          try {
            final batch = await repository.getBatchDetails(batchId);
            emit(EducationState.batchDetailsLoaded(batch));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        logAttendance: (batchId, studentId, date, status) async {
          emit(const EducationState.loading());
          try {
            await repository.logAttendance(batchId, studentId, date, status);
            emit(EducationState.actionSuccess('Attendance logged for $date'));
            add(EducationEvent.fetchAttendanceLogs(batchId, date));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchAttendanceLogs: (batchId, date) async {
          emit(const EducationState.loading());
          try {
            final logs = await repository.getAttendanceLogs(batchId, date);
            emit(EducationState.attendanceLogsLoaded(logs));
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
        fetchAllInstituteFees: (instituteId) async {
          emit(const EducationState.loading());
          try {
            final payments = await repository.getAllInstituteFeePayments(instituteId);
            emit(EducationState.studentFeesLoaded(payments)); // Using studentFeesLoaded as a generic payments loaded state for now, or could add generic paymentsLoaded
          } catch (e) {
            emit(EducationState.error(e.toString()));
          }
        },
      );
    });
  }
}
