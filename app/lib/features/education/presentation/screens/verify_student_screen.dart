import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class VerifyStudentScreen extends StatefulWidget {
  final String instituteId;
  const VerifyStudentScreen({super.key, required this.instituteId});

  @override
  State<VerifyStudentScreen> createState() => _VerifyStudentScreenState();
}

class _VerifyStudentScreenState extends State<VerifyStudentScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EducationBloc>().add(EducationEvent.fetchStudents(widget.instituteId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EducationBloc, EducationState>(
      listener: (context, state) {
        state.maybeWhen(
          actionSuccess: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
            context.read<EducationBloc>().add(EducationEvent.fetchStudents(widget.instituteId));
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Verify Students')),
        body: BlocBuilder<EducationBloc, EducationState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              studentsLoaded: (students) {
                if (students.isEmpty) {
                  return const Center(child: Text('No pending verifications.'));
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    final student = students[index];
                    return Card(
                      child: ListTile(
                        title: Text(student['student_name'] ?? 'Unknown Student'),
                        subtitle: Text('Course: ${student['course_title'] ?? "N/A"}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.check_circle, color: Colors.green),
                              onPressed: () {
                                context.read<EducationBloc>().add(EducationEvent.verifyStudent(student['id'], true));
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.cancel, color: Colors.red),
                              onPressed: () {
                                context.read<EducationBloc>().add(EducationEvent.verifyStudent(student['id'], false));
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (msg) => Center(child: Text('Error: $msg')),
              orElse: () => const Center(child: Text('Failed to load students')),
            );
          },
        ),
      ),
    );
  }
}
