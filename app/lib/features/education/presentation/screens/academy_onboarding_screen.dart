import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/network/api_client.dart';
import '../../data/education_repository.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';

class AcademyOnboardingScreen extends StatefulWidget {
  const AcademyOnboardingScreen({super.key});

  @override
  State<AcademyOnboardingScreen> createState() => _AcademyOnboardingScreenState();
}

class _AcademyOnboardingScreenState extends State<AcademyOnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _cityController = TextEditingController();

  late EducationRepository _repository;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _repository = EducationRepository(ApiClient());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await _repository.registerInstitute({
        'name': _nameController.text,
        'contact_email': _emailController.text,
        'contact_phone': _phoneController.text,
        'city': _cityController.text,
      });

      if (mounted) {
        context.go('/academy/home');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registration Failed: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register Your Academy')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Start your digital institute', style: AppTypography.headlineMedium),
              const SizedBox(height: AppSpacing.lg),

              CustomTextField(
                controller: _nameController,
                label: 'Academy / Institute Name',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                controller: _cityController,
                label: 'City',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                controller: _emailController,
                label: 'Contact Email',
                keyboardType: TextInputType.emailAddress,
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                controller: _phoneController,
                label: 'Contact Phone',
                keyboardType: TextInputType.phone,
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),

              const SizedBox(height: AppSpacing.xl),

              CustomButton(
                text: 'Create Academy',
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
