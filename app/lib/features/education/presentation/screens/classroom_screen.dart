import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/education_models.dart';
import '../widgets/course_card.dart';
import 'lesson_player_screen.dart';
import 'package:app/shared/theme/app_colors.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadData();
  }

  void _loadData() {
    context.read<EducationBloc>().add(const EducationEvent.fetchCourses());
    // In a real student app, we'd also fetch enrollments. 
    // fetchCourses currently returns all for MVP, but repository.getMyCourses uses /my-courses.
    // Let's assume global courses for now or refetch based on tab.
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'My Classroom',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: const Color(0xFFFF6B6B),
          unselectedLabelColor: AppColors.slate,
          indicatorColor: const Color(0xFFFF6B6B),
          indicatorWeight: 3,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          tabs: const [
            Tab(text: 'ENROLLED COURSES'),
            Tab(text: 'EXPLORE NEW'),
          ],
        ),
      ),
      body: BlocBuilder<EducationBloc, EducationState>(
        builder: (context, state) {
          return TabBarView(
            controller: _tabController,
            children: [
              _buildEnrolledTab(state),
              _buildExploreTab(state),
            ],
          );
        },
      ),
    );
  }

  Widget _buildEnrolledTab(EducationState state) {
    return state.maybeWhen(
      loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFFFF6B6B))),
      coursesLoaded: (courses) {
        if (courses.isEmpty) {
          return const Center(child: Text('You are not enrolled in any courses yet.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final courseData = courses[index];
            final course = Course.fromJson(courseData);
            // Mock enrollment for UI structure
            final enrollment = Enrollment(
              id: course.id,
              courseId: course.id,
              studentId: 'me',
              progressPercentage: 0,
              enrolledAt: DateTime.now(),
              course: course,
            );
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CourseCard(
                course: course,
                enrollment: enrollment,
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonPlayerScreen(
                        course: course,
                        enrollment: enrollment,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Loading your courses...')),
    );
  }

  Widget _buildExploreTab(EducationState state) {
    return state.maybeWhen(
      loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFFFF6B6B))),
      coursesLoaded: (courses) {
        return ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            final courseData = courses[index];
            final course = Course.fromJson(courseData);
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CourseCard(
                course: course,
                onTap: () {
                   // Enrollment logic or details
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('Enrolling in ${course.title}...')),
                   );
                },
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Exploring new courses...')),
    );
  }
}
