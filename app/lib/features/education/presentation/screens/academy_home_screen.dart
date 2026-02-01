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

class AcademyHomeScreen extends StatefulWidget {
  const AcademyHomeScreen({super.key});

  @override
  State<AcademyHomeScreen> createState() => _AcademyHomeScreenState();
}

class _AcademyHomeScreenState extends State<AcademyHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      _AcademyDashboard(),
      _AcademyDashboard(),
      const _CoursesList(),   // Real Data
      const Center(child: Text("Students")),  // Placeholder
      const Center(child: Text("Profile")),   // Placeholder
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
  }
}

class _AcademyDashboard extends StatefulWidget {
  @override
  State<_AcademyDashboard> createState() => _AcademyDashboardState();
}

class _AcademyDashboardState extends State<_AcademyDashboard> {
  late EducationRepository _repo;
  Future<Map<String, dynamic>>? _dataFuture;

  @override
  void initState() {
    super.initState();
    _repo = EducationRepository(ApiClient());
    _loadData();
  }

  void _loadData() {
    // Chained fetch: Get Institute -> Get Stats
    _dataFuture = _repo.getMyInstitute().then((inst) async {
       if (inst == null) return {};
       final stats = await _repo.getInstituteStats(inst['id']);
       return {
         'institute': inst,
         'stats': stats,
       };
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: _dataFuture,
      builder: (context, snapshot) {
         final data = snapshot.data ?? {};
         final stats = data['stats'] as Map<String, dynamic>? ?? {};
         
         final students = stats['students_count']?.toString() ?? '0';
         final batches = stats['batches_count']?.toString() ?? '0';
         final revenue = stats['revenue']?.toString() ?? '0';

         return ListView(
          padding: const EdgeInsets.all(AppSpacing.screenPadding),
          children: [
            Text('Institute Overview', style: AppTypography.headlineMedium),
            const SizedBox(height: AppSpacing.md),
            
            Row(
              children: [
                Expanded(child: _StatCard(title: 'Active Students', value: students, color: Colors.blue)),
                const SizedBox(width: 8),
                Expanded(child: _StatCard(title: 'Placements', value: '0%', color: Colors.green)), // Pending
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
            ListTile(
              leading: const Icon(Icons.add_box, color: Colors.teal),
              title: const Text('Create New Course'),
              subtitle: const Text('Launch a new masterclass'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.verified_user, color: Colors.blue),
              title: const Text('Verify Student'),
              subtitle: const Text('Approve enrollment requests'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.work, color: Colors.indigo),
              title: const Text('Post Placement'),
              subtitle: const Text('Add new job opening'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ],
        );
      }
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

class _CoursesList extends StatefulWidget {
  const _CoursesList();

  @override
  State<_CoursesList> createState() => _CoursesListState();
}

class _CoursesListState extends State<_CoursesList> {
  late EducationRepository _repo;
  Future<List<dynamic>>? _coursesFuture;

  @override
  void initState() {
    super.initState();
    _repo = EducationRepository(ApiClient());
    _coursesFuture = _repo.getMyCourses();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _coursesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        final list = snapshot.data ?? [];
        if (list.isEmpty) {
          return const Center(child: Text('No courses found. Create one!'));
        }
        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final course = list[index];
            return ListTile(
              leading: const Icon(Icons.book, color: Colors.teal),
              title: Text(course['title'] ?? 'Untitled Course'),
              subtitle: Text(course['description'] ?? 'No description'),
              trailing: Text(course['price'] != null ? '₹${course['price']}' : 'Free'),
            );
          },
        );
      },
    );
  }
}
