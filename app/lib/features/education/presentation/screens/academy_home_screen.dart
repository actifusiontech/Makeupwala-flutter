import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';
// Event and State are parts of Bloc, so they are imported via the Bloc file.
import 'package:google_fonts/google_fonts.dart';

import 'package:app/features/education/bloc/education_bloc.dart';
import 'package:app/features/education/bloc/education_event.dart';
import 'package:app/features/education/bloc/education_state.dart';
import 'create_course_screen.dart';
import 'verify_student_screen.dart';
import 'student_management_screen.dart';
import 'academy_post_placement_screen.dart';
import 'academy_menu_screen.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:app/shared/widgets/global_persona_switcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
          const AcademyMenuScreen(),
        ];

        return Scaffold(
          appBar: AppBar(
            title: Text('Academy Director', style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold)),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            actions: [
              const GlobalPersonaSwitcher(),
              PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert),
                onSelected: (value) {
                  switch (value) {
                    case 'profile':
                      context.push('/profile');
                      break;
                    case 'settings':
                      context.push('/profile/edit');
                      break;
                    case 'faqs':
                      context.push('/complaints');
                      break;
                    case 'logout':
                      context.read<AuthBloc>().add(const AuthEvent.logout());
                      break;
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'profile',
                    child: ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text('My Profile'),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'settings',
                    child: ListTile(
                      leading: Icon(Icons.settings_outlined),
                      title: Text('Settings'),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: 'faqs',
                    child: ListTile(
                      leading: Icon(Icons.help_outline),
                      title: Text('FAQs & Support'),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem<String>(
                    value: 'logout',
                    child: ListTile(
                      leading: Icon(Icons.logout, color: AppColors.error),
                      title: Text('Logout', style: TextStyle(color: AppColors.error)),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ],
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
              BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), activeIcon: Icon(Icons.dashboard), label: 'Dashboard'),
              BottomNavigationBarItem(icon: Icon(Icons.auto_stories_outlined), activeIcon: Icon(Icons.book), label: 'Courses'),
              BottomNavigationBarItem(icon: Icon(Icons.people_outline), activeIcon: Icon(Icons.people), label: 'Students'),
              BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), activeIcon: Icon(Icons.menu), label: 'Menu'),
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
          loading: () => SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            child: Column(
              children: [
                ShimmerLoaders.listTile(),
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    Expanded(child: ShimmerLoaders.artistCard()), 
                    const SizedBox(width: 8),
                    Expanded(child: ShimmerLoaders.artistCard()),
                  ],
                ),
                ShimmerLoaders.listTile(),
                ShimmerLoaders.listTile(),
              ],
            ),
          ),
          dashboardLoaded: (stats, institute) {
            final students = stats?['students_count']?.toString() ?? '0';
            final batches = stats?['batches_count']?.toString() ?? '0';
            final revenue = stats?['revenue']?.toString() ?? '0';

            return RefreshIndicator(
              onRefresh: () async {
                context.read<EducationBloc>().add(const EducationEvent.fetchDashboard());
              },
              child: ListView(
                padding: const EdgeInsets.all(AppSpacing.screenPadding),
                children: [
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Premium Academy Hero Header
                  _buildAcademyHeroHeader(institute?.name ?? "Director"),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  Text('Academy Overview', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: AppSpacing.sm),
                  
                  Row(
                    children: [
                      Expanded(child: _StatCard(title: 'Active Students', value: students, icon: FontAwesomeIcons.userGraduate, color: Colors.blue)),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(child: _StatCard(title: 'Active Batches', value: batches, icon: FontAwesomeIcons.layerGroup, color: Colors.orange)),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Row(
                    children: [
                      Expanded(child: _StatCard(title: 'Placements', value: '12', icon: FontAwesomeIcons.briefcase, color: Colors.green)),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(child: _StatCard(title: 'Revenue', value: '₹$revenue', icon: FontAwesomeIcons.indianRupeeSign, color: Colors.purple)),
                    ],
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),
                  const SizedBox(height: AppSpacing.xl),
                  Text('Director\'s Toolbox', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: AppSpacing.md),
                  
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: AppSpacing.md,
                    crossAxisSpacing: AppSpacing.md,
                    childAspectRatio: 1.4,
                    children: [
                      _buildAcademyActionCard(
                        context,
                        'New Course',
                        FontAwesomeIcons.fileCirclePlus,
                        Colors.teal,
                        () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreateCourseScreen())),
                      ),
                      _buildAcademyActionCard(
                        context,
                        'Verify Student',
                        FontAwesomeIcons.userCheck,
                        Colors.blue,
                        () {
                          if (institute?.id != null) {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => VerifyStudentScreen(instituteId: institute!.id)));
                          }
                        },
                      ),
                      _buildAcademyActionCard(
                        context,
                        'Placements',
                        FontAwesomeIcons.briefcase,
                        Colors.indigo,
                        () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AcademyPostPlacementScreen())),
                      ),
                      _buildAcademyActionCard(
                        context,
                        'Certificates',
                        FontAwesomeIcons.certificate,
                        Colors.amber,
                        () {}, // Add functionality later
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          error: (msg) => _buildErrorState(context, msg),
          orElse: () {
            context.read<EducationBloc>().add(const EducationEvent.fetchDashboard());
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
    );
  }

  Widget _buildErrorState(BuildContext context, String msg) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.grey),
          const SizedBox(height: 16),
          Text('Failed to load dashboard', style: AppTypography.titleMedium),
          const SizedBox(height: 8),
          Text(msg, style: AppTypography.labelMedium.copyWith(color: Colors.grey)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<EducationBloc>().add(const EducationEvent.fetchDashboard()),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildAcademyHeroHeader(String name) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        image: const DecorationImage(
          image: AssetImage('assets/images/hero_academy.png'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.teal.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Academy Director',
                  style: TextStyle(
                    color: Colors.tealAccent.withOpacity(0.8),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ).animate().fadeIn().slideX(begin: -0.2),
                const SizedBox(height: 4),
                Text(
                  'Welcome, $name',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ).animate().fadeIn(delay: 200.ms),
                const SizedBox(height: AppSpacing.md),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white30),
                  ),
                  child: const Text(
                    'MASTERCLASS SEASON',
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ).animate().fadeIn(delay: 400.ms).scale(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAcademyActionCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
          border: Border.all(color: AppColors.grey100),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: FaIcon(icon, color: color, size: 20),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: AppTypography.labelLarge.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        border: Border.all(color: AppColors.grey100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FaIcon(icon, color: color, size: 16),
          const SizedBox(height: 12),
          Text(
            value,
            style: GoogleFonts.outfit(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
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
          loading: () => ListView.builder(
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount: 5,
            itemBuilder: (_, __) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: ShimmerLoaders.bookingCard(), // Suited for course items
            ),
          ),
          coursesLoaded: (list) {
            if (list.isEmpty) {
              return const Center(child: Text('No courses found. Create one!'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final course = list[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.teal.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.book, color: Colors.teal),
                    ),
                    title: Text(course['title'] ?? 'Untitled Course', style: AppTypography.titleMedium),
                    subtitle: Text(course['description'] ?? 'No description', maxLines: 2, overflow: TextOverflow.ellipsis),
                    trailing: Text(
                      course['price'] != null ? '₹${course['price']}' : 'Free',
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
                    ),
                  ),
                );
              },
            );
          },
          error: (msg) => Center(child: Text('Error: $msg')),
          orElse: () {
            context.read<EducationBloc>().add(const EducationEvent.fetchCourses());
            return ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.md),
              itemCount: 5,
              itemBuilder: (_, __) => ShimmerLoaders.bookingCard(),
            );
          },
        );
      },
    );
  }
}
