import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../bloc/education_bloc.dart';
import '../bloc/education_event.dart';
import '../bloc/education_state.dart';

class CreateCourseScreen extends StatefulWidget {
  const CreateCourseScreen({super.key});

  @override
  State<CreateCourseScreen> createState() => _CreateCourseScreenState();
}

class _CreateCourseScreenState extends State<CreateCourseScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _priceController = TextEditingController();
  String _selectedLevel = 'beginner';

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
        appBar: AppBar(title: const Text('Create New Course')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(labelText: 'Course Title', border: OutlineInputBorder()),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: AppSpacing.md),
                TextFormField(
                  controller: _descController,
                  decoration: const InputDecoration(labelText: 'Description', border: OutlineInputBorder()),
                  maxLines: 4,
                ),
                const SizedBox(height: AppSpacing.md),
                DropdownButtonFormField<String>(
                  value: _selectedLevel,
                  decoration: const InputDecoration(labelText: 'Level', border: OutlineInputBorder()),
                  items: ['beginner', 'intermediate', 'advanced'].map((l) => DropdownMenuItem(value: l, child: Text(l.toUpperCase()))).toList(),
                  onChanged: (v) => setState(() => _selectedLevel = v!),
                ),
                const SizedBox(height: AppSpacing.md),
                TextFormField(
                  controller: _priceController,
                  decoration: const InputDecoration(labelText: 'Price (₹)', border: OutlineInputBorder()),
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
                        context.read<EducationBloc>().add(EducationEvent.createCourse({
                          'title': _titleController.text,
                          'description': _descController.text,
                          'level': _selectedLevel,
                          'price': double.tryParse(_priceController.text) ?? 0.0,
                        }));
                      }
                    },
                    child: const Text('Publish Course'),
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
