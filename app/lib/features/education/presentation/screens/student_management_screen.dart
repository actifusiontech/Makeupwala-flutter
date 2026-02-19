import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../bloc/education_bloc.dart';
import '../bloc/education_event.dart';
import '../bloc/education_state.dart';

class StudentManagementScreen extends StatefulWidget {
  final String? instituteId;
  const StudentManagementScreen({super.key, this.instituteId});

  @override
  State<StudentManagementScreen> createState() => _StudentManagementScreenState();
}

class _StudentManagementScreenState extends State<StudentManagementScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.instituteId != null) {
      context.read<EducationBloc>().add(EducationEvent.fetchStudents(widget.instituteId!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Institute Students')),
      body: BlocBuilder<EducationBloc, EducationState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            studentsLoaded: (students) {
              if (students.isEmpty) {
                return const Center(child: Text('No students found.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  return Card(
                    child: ListTile(
                      leading: const CircleAvatar(child: Icon(Icons.person)),
                      title: Text(student['student_name'] ?? 'Unknown Student'),
                      subtitle: Text('Status: ${student['status']?.toUpperCase() ?? "N/A"}'),
                    ),
                  );
                },
              );
            },
            error: (msg) => Center(child: Text('Error: $msg')),
            orElse: () => const Center(child: Text('Please load dashboard first to get Institute ID')),
          );
        },
      ),
    );
  }
}
