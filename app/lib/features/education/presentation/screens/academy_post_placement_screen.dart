import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/education_bloc.dart';
import '../bloc/education_event.dart';
import '../bloc/education_state.dart';

class AcademyPostPlacementScreen extends StatefulWidget {
  const AcademyPostPlacementScreen({super.key});

  @override
  State<AcademyPostPlacementScreen> createState() => _AcademyPostPlacementScreenState();
}

class _AcademyPostPlacementScreenState extends State<AcademyPostPlacementScreen> {
  final _formKey = GlobalKey<FormState>();
  final _roleController = TextEditingController();
  final _companyController = TextEditingController();
  final _locationController = TextEditingController();
  final _salaryController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _roleController.dispose();
    _companyController.dispose();
    _locationController.dispose();
    _salaryController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      context.read<EducationBloc>().add(EducationEvent.postPlacement(
        role: _roleController.text,
        company: _companyController.text,
        location: _locationController.text,
        salaryRange: _salaryController.text,
        description: _descriptionController.text,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post New Placement'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: BlocListener<EducationBloc, EducationState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
              Navigator.pop(context);
            },
            error: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _roleController,
                  decoration: const InputDecoration(labelText: 'Job Role (e.g. Senior Makeup Artist)', border: OutlineInputBorder()),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _companyController,
                  decoration: const InputDecoration(labelText: 'Company/Studio Name', border: OutlineInputBorder()),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: 'Location', border: OutlineInputBorder()),
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _salaryController,
                  decoration: const InputDecoration(labelText: 'Salary Range (Optional)', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(labelText: 'Job Description', border: OutlineInputBorder()),
                  maxLines: 4,
                  validator: (v) => v!.isEmpty ? 'Required' : null,
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _submit,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
                    child: const Text('Post Opening', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
