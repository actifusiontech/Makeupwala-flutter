import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/education_models.dart';

part 'education_state.freezed.dart';

@freezed
class EducationState with _$EducationState {
  const factory EducationState.initial() = _Initial;
  const factory EducationState.loading() = _Loading;
  const factory EducationState.dashboardLoaded({
    required Map<String, dynamic> stats,
    Institute? institute,
  }) = _DashboardLoaded;
  const factory EducationState.coursesLoaded(List<dynamic> courses) = _CoursesLoaded;
  const factory EducationState.studentsLoaded(List<dynamic> students) = _StudentsLoaded;
  const factory EducationState.feeStructuresLoaded(List<dynamic> feeStructures) = _FeeStructuresLoaded;
  const factory EducationState.studentFeesLoaded(List<dynamic> feePayments) = _StudentFeesLoaded;
  const factory EducationState.studentLeadsLoaded(List<dynamic> leads) = _StudentLeadsLoaded;
  const factory EducationState.certificateIssued(Map<String, dynamic> certificate) = _CertificateIssued;
  const factory EducationState.practicalScoresLoaded(List<dynamic> scores) = _PracticalScoresLoaded;
  const factory EducationState.placementListingsLoaded(List<dynamic> listings) = _PlacementListingsLoaded;
  const factory EducationState.attendanceLogsLoaded(List<dynamic> logs) = _AttendanceLogsLoaded;
  const factory EducationState.batchDetailsLoaded(Map<String, dynamic> batch) = _BatchDetailsLoaded;
  const factory EducationState.error(String message) = _Error;
  const factory EducationState.actionSuccess(String message) = _ActionSuccess;
}
