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
      );
    });
  }
}
