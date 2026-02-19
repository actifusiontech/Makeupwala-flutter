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
  const factory EducationState.error(String message) = _Error;
  const factory EducationState.actionSuccess(String message) = _ActionSuccess;
}
