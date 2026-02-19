import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class AddLessonScreen extends StatefulWidget {
  final String courseId;

  const AddLessonScreen({super.key, required this.courseId});

  @override
  State<AddLessonScreen> createState() => _AddLessonScreenState();
}

class _AddLessonScreenState extends State<AddLessonScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _videoUrlController = TextEditingController();
  final _sequenceController = TextEditingController(); // Or auto-increment logic in backend

  @override
  Widget build(BuildContext context) {
    return BlocListener<EducationBloc, EducationState>(
      listener: (context, state) {
        state.maybeWhen(
          actionSuccess: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
            Navigator.pop(context);
          },
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Add Lesson')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Lesson Title', border: OutlineInputBorder()),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: AppSpacing.md),
                TextFormField(
                  controller: _descController,
                  decoration: const InputDecoration(labelText: 'Description', border: OutlineInputBorder()),
                  maxLines: 4,
                ),
                const SizedBox(height: AppSpacing.md),
                TextFormField(
                  controller: _videoUrlController,
                  decoration: const InputDecoration(labelText: 'Video URL (YouTube/Vimeo)', border: OutlineInputBorder()),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: AppSpacing.md),
                TextFormField(
                  controller: _sequenceController,
                  decoration: const InputDecoration(labelText: 'Sequence Order (e.g., 1, 2)', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: AppSpacing.lg),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<EducationBloc>().add(EducationEvent.addLesson(
                          widget.courseId,
                          {
                            'title': _titleController.text,
                            'description': _descController.text,
                            'video_url': _videoUrlController.text,
                            'sequence_order': int.tryParse(_sequenceController.text) ?? 1,
                          },
                        ));
                      }
                    },
                    child: const Text('Add Lesson'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
