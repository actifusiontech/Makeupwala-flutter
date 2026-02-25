import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class AcademyGradingScreen extends StatefulWidget {
  final String batchId;
  final String studentId;

  const AcademyGradingScreen({
    super.key,
    required this.batchId,
    required this.studentId,
  });

  @override
  State<AcademyGradingScreen> createState() => _AcademyGradingScreenState();
}

class _AcademyGradingScreenState extends State<AcademyGradingScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EducationBloc>().add(EducationEvent.fetchStudentPracticalScores(widget.batchId, widget.studentId));
  }

  void _showAddScoreDialog() {
    final taskController = TextEditingController();
    final scoreController = TextEditingController();
    final maxScoreController = TextEditingController(text: '100');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Evaluate Practical Task'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: taskController,
                decoration: const InputDecoration(labelText: 'Task Name (e.g. Bridal Makeup)'),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: scoreController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Score'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: maxScoreController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(labelText: 'Max Score'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final score = double.tryParse(scoreController.text) ?? 0.0;
              final maxScore = double.tryParse(maxScoreController.text) ?? 100.0;

              if (taskController.text.isNotEmpty) {
                context.read<EducationBloc>().add(
                  EducationEvent.submitPracticalScore(widget.batchId, widget.studentId, {
                    'student_id': widget.studentId,
                    'batch_id': widget.batchId,
                    'task_name': taskController.text,
                    'score': score,
                    'max_score': maxScore,
                  }),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Submit Score'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Grading'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<EducationBloc, EducationState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            actionSuccess: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

          return Stack(
            children: [
              _buildScoresList(state),
              if (isLoading) const Center(child: CircularProgressIndicator()),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddScoreDialog,
        icon: const Icon(Icons.grading),
        label: const Text('Grade Task'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildScoresList(EducationState state) {
    return state.maybeWhen(
      practicalScoresLoaded: (scores) {
        if (scores.isEmpty) {
          return const Center(child: Text('No scores recorded yet.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: scores.length,
          itemBuilder: (context, index) {
            final score = scores[index];
            final percent = (score['score'] ?? 0) / (score['max_score'] ?? 100);
            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              elevation: 2,
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: percent,
                      backgroundColor: Colors.grey[200],
                      color: percent >= 0.8 ? Colors.green : (percent >= 0.5 ? Colors.orange : Colors.red),
                    ),
                    Text(
                      '${(percent * 100).toInt()}%',
                      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                title: Text(score['task_name'] ?? 'Task', style: AppTypography.titleMedium),
                subtitle: Text('Score: ${score['score']} / ${score['max_score']}'),
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Loading grades...')),
    );
  }
}
