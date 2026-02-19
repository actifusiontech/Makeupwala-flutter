import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../data/education_repository.dart';
import '../../../../core/network/api_client.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';

class CoursesListScreen extends StatefulWidget {
  const CoursesListScreen({super.key});

  @override
  State<CoursesListScreen> createState() => _CoursesListScreenState();
}

class _CoursesListScreenState extends State<CoursesListScreen> {
  late Future<List<dynamic>> _coursesFuture;
  final EducationRepository _repository = EducationRepository(ApiClient());

  @override
  void initState() {
    super.initState();
    _coursesFuture = _repository.getCourses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Beauty Skills'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: _coursesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.teal));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No courses available yet.'));
          }

          final courses = snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              final course = courses[index];
              return Card(
                elevation: 3,
                margin: const EdgeInsets.only(bottom: 16),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.teal[50], borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.school, color: Colors.teal),
                  ),
                  title: Text(course['title'] ?? 'Untitled Course', style: AppTypography.titleMedium),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const SizedBox(height: 4),
                       Text(course['description'] ?? '', maxLines: 2, overflow: TextOverflow.ellipsis),
                       const SizedBox(height: 8),
                       Row(
                         children: [
                           const Icon(Icons.timer, size: 14, color: Colors.grey),
                           const SizedBox(width: 4),
                           Text(course['duration'] ?? 'Self-paced', style: AppTypography.caption),
                           const SizedBox(width: 16),
                           Text(course['price'] != null ? '₹${course['price']}' : 'Free', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.teal)),
                           const Spacer(),
                           IconButton(
                             onPressed: () => context.push('/education/courses/${course['id']}/add-lesson'),
                             icon: const Icon(Icons.add_circle_outline, color: Colors.teal),
                             tooltip: 'Add Lesson',
                           ),
                         ],
                       )
                    ],
                  ),
                  onTap: () {
                    // Navigate to details (future scope) or show enroll dialog
                    _showEnrollDialog(context, course);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showEnrollDialog(BuildContext context, dynamic course) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Enroll in ${course['title']}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(course['description'] ?? ''),
            const SizedBox(height: 16),
            Text('Price: ₹${course['price'] ?? 0}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            const Text('Confirm to secure your spot.', style: TextStyle(color: Colors.grey)),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
            onPressed: () async {
              Navigator.pop(context); // Close dialog first
              try {
                // Assuming course object has institute_id
                final instituteId = course['institute_id'] ?? ''; 
                if (instituteId.isEmpty) {
                   throw Exception("Invalid Course Data");
                }
                await _repository.enrollStudent(course['id'], instituteId);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('🎉 Enrollment Successful!')));
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enrollment Failed: $e')));
                }
              }
            },
            child: const Text('Confirm Payment'),
          ),
        ],
      ),
    );
  }
}
