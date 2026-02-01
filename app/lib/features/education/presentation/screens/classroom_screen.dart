import 'package:flutter/material.dart';
import '../../domain/education_models.dart';
import '../widgets/course_card.dart';
import 'lesson_player_screen.dart';
import 'package:app/shared/theme/app_colors.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({super.key});

  @override
  State<ClassroomScreen> createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildEnrolledTab(),
          _buildExploreTab(),
        ],
      ),
    );
  }

  Widget _buildEnrolledTab() {
    // Mock data for Phase 9 Classroom
    final enrollments = [
      Enrollment(
        id: '1',
        courseId: 'c1',
        studentId: 's1',
        progressPercentage: 85,
        enrolledAt: DateTime.now(),
        course: Course(
          id: 'c1',
          instituteId: 'i1',
          title: 'Advanced Bridal Artistry',
          category: 'Makeup',
          thumbnailUrl: 'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=800',
        ),
      ),
      Enrollment(
        id: '2',
        courseId: 'c2',
        studentId: 's1',
        progressPercentage: 42,
        enrolledAt: DateTime.now(),
        course: Course(
          id: 'c2',
          instituteId: 'i1',
          title: 'Basic Grooming 101',
          category: 'General',
          thumbnailUrl: 'https://images.unsplash.com/photo-1512496011931-a2c38827c4c7?w=800',
        ),
      ),
    ];

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator(color: Color(0xFFFF6B6B)));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: enrollments.length,
      itemBuilder: (context, index) {
        final enrollment = enrollments[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CourseCard(
            course: enrollment.course!,
            enrollment: enrollment,
            onTap: () {
              // Navigate to Lesson Player
              // Assuming first lesson for now, or course structure would handle last played
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LessonPlayerScreen(
                    course: enrollment.course!,
                    enrollment: enrollment,
                    initialLesson: const Lesson(
                        id: 'l1', courseId: 'c1', title: 'Intro', sequenceOrder: 1, videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'), // Mock lesson or fetch real one
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildExploreTab() {
    final courses = [
      const Course(
        id: 'c3',
        instituteId: 'i2',
        title: 'Professional Hair Styling',
        category: 'Hair',
        feeAmount: 18000,
        thumbnailUrl: 'https://images.unsplash.com/photo-1562322140-8baeececf3df?w=800',
      ),
      const Course(
        id: 'c4',
        instituteId: 'i3',
        title: 'Nail Art Masterclass',
        category: 'Nails',
        feeAmount: 8500,
        thumbnailUrl: 'https://images.unsplash.com/photo-1604654894610-df4906821603?w=800',
      ),
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CourseCard(
            course: course,
            onTap: () {
              // Navigate to Course Enrollment
            },
          ),
        );
      },
    );
  }
}
