import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';

class PlannerOnboardingScreen extends StatefulWidget {
  const PlannerOnboardingScreen({super.key});

  @override
  State<PlannerOnboardingScreen> createState() => _PlannerOnboardingScreenState();
}

class _PlannerOnboardingScreenState extends State<PlannerOnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _agencyController = TextEditingController();
  final _locationController = TextEditingController();

  bool _isLoading = false;

  @override
  void dispose() {
    _agencyController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    
    // Simulate API call to update user profile with "Agency Name"
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() => _isLoading = false);
      context.go('/planner/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Planner Setup')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Wedding Planner Details', style: AppTypography.headlineMedium),
              const SizedBox(height: AppSpacing.lg),

              CustomTextField(
                controller: _agencyController,
                label: 'Agency Name',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                controller: _locationController,
                label: 'Base Location',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),

              const SizedBox(height: AppSpacing.xl),

              CustomButton(
                text: 'Start Planning',
                isLoading: _isLoading,
                onPressed: _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
