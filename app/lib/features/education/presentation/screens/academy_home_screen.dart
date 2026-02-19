import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/auth/bloc/auth_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/education_repository.dart';
import '../../../../core/network/api_client.dart';

import '../bloc/education_bloc.dart';
import '../bloc/education_event.dart';
import '../bloc/education_state.dart';
import 'create_course_screen.dart';
import 'verify_student_screen.dart';
import 'student_management_screen.dart';
import 'academy_post_placement_screen.dart';
import 'academy_institute_profile_screen.dart';

class AcademyHomeScreen extends StatefulWidget {
  const AcademyHomeScreen({super.key});

  @override
  State<AcademyHomeScreen> createState() => _AcademyHomeScreenState();
}

class _AcademyHomeScreenState extends State<AcademyHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        final instituteId = state.maybeWhen(
          dashboardLoaded: (stats, inst) => inst?.id,
          studentsLoaded: (students) => students.isNotEmpty ? students.first['institute_id'] : null,
          orElse: () => null,
        );

        final screens = [
          const _AcademyDashboard(),
          const _CoursesList(),
          StudentManagementScreen(instituteId: instituteId),
          const AcademyInstituteProfileScreen(),
        ];

        return Scaffold(
          appBar: AppBar(
            title: Text('Academy Director', style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.logout());
                  context.go('/login');
                },
              ),
            ],
          ),
          body: screens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.teal,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Students'),
              BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Institute'),
            ],
          ),
        );
      },
    );
  }
}

class _AcademyDashboard extends StatelessWidget {
  const _AcademyDashboard();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          dashboardLoaded: (stats, institute) {
            final students = stats['students_count']?.toString() ?? '0';
            final batches = stats['batches_count']?.toString() ?? '0';
            final revenue = stats['revenue']?.toString() ?? '0';

            return RefreshIndicator(
              onRefresh: () async {
                context.read<EducationBloc>().add(const EducationEvent.fetchDashboard());
              },
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.screenPadding),
                children: [
                  Text('Welcome, ${institute?.name ?? "Director"}', style: AppTypography.headlineMedium),
                  const SizedBox(height: AppSpacing.md),
                  
                  Row(
                    children: [
                      Expanded(child: _StatCard(title: 'Active Students', value: students, color: Colors.blue)),
                      const SizedBox(width: 8),
                      Expanded(child: _StatCard(title: 'Placements', value: '0%', color: Colors.green)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(child: _StatCard(title: 'Active Batches', value: batches, color: Colors.orange)),
                      const SizedBox(width: 8),
                      Expanded(child: _StatCard(title: 'Revenue', value: '₹ $revenue', color: Colors.purple)),
                    ],
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),
                  Text('Quick Actions', style: AppTypography.titleLarge),
                  const SizedBox(height: 8),
                  _QuickActionTile(
                    icon: Icons.add_box,
                    color: Colors.teal,
                    title: 'Create New Course',
                    subtitle: 'Launch a new masterclass',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const CreateCourseScreen()));
                    },
                  ),
                  _QuickActionTile(
                    icon: Icons.verified_user,
                    color: Colors.blue,
                    title: 'Verify Student',
                    subtitle: 'Approve enrollment requests',
                    onTap: () {
                      if (institute?.id != null) {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => VerifyStudentScreen(instituteId: institute!.id)));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Institute ID not found. Reload dashboard.')));
                      }
                    },
                  ),
                  _QuickActionTile(
                    icon: Icons.work,
                    color: Colors.indigo,
                    title: 'Post Placement',
                    subtitle: 'Add new job opening',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const AcademyPostPlacementScreen()));
                    },
                  ),
                ],
              ),
            );
          },
          error: (msg) => Center(child: Text('Error: $msg')),
          orElse: () => const Center(child: Text('Failed to load dashboard')),
        );
      },
    );
  }
}

class _QuickActionTile extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _QuickActionTile({
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _StatCard({required this.title, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(title, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
            const SizedBox(height: 8),
            Text(value, style: TextStyle(color: color, fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class _CoursesList extends StatelessWidget {
  const _CoursesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          coursesLoaded: (list) {
            if (list.isEmpty) {
              return const Center(child: Text('No courses found. Create one!'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final course = list[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                  child: ListTile(
                    leading: const Icon(Icons.book, color: Colors.teal),
                    title: Text(course['title'] ?? 'Untitled Course'),
                    subtitle: Text(course['description'] ?? 'No description'),
                    trailing: Text(course['price'] != null ? '₹${course['price']}' : 'Free'),
                  ),
                );
              },
            );
          },
          error: (msg) => Center(child: Text('Error: $msg')),
          orElse: () {
            context.read<EducationBloc>().add(const EducationEvent.fetchCourses());
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }
}
