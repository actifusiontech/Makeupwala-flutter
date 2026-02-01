import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/network/api_client.dart';
import '../../data/studio_repository.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';


class StudioOnboardingScreen extends StatefulWidget {
  const StudioOnboardingScreen({super.key});

  @override
  State<StudioOnboardingScreen> createState() => _StudioOnboardingScreenState();
}

class _StudioOnboardingScreenState extends State<StudioOnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _capacityController = TextEditingController();
  final _rateController = TextEditingController();
  
  late StudioRepository _repository;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // In a real app, use dependency injection (GetIt/Provider)
    _repository = StudioRepository(ApiClient());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _cityController.dispose();
    _capacityController.dispose();
    _rateController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await _repository.registerStudio({
        'name': _nameController.text,
        'address': _addressController.text,
        'city': _cityController.text,
        'capacity': int.parse(_capacityController.text),
        'hourly_rate': double.tryParse(_rateController.text) ?? 500.0,
        'facilities': ['AC', 'WiFi', 'Mirrors'], // Default for MVP
      });

      if (mounted) {
        // Navigate to Studio Home on success
        context.go('/studio/home');
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
      appBar: AppBar(title: const Text('Register Your Studio')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Tell us about your parlour', style: AppTypography.headlineMedium),
              const SizedBox(height: AppSpacing.lg),

              CustomTextField(
                controller: _nameController,
                label: 'Studio / Parlour Name',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                controller: _addressController,
                label: 'Full Address',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              CustomTextField(
                controller: _cityController,
                label: 'City',
                validator: (v) => v?.isEmpty == true ? 'Required' : null,
              ),
              const SizedBox(height: AppSpacing.md),

              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: _capacityController,
                      label: 'Seats (Capacity)',
                      keyboardType: TextInputType.number,
                      validator: (v) => v?.isEmpty == true ? 'Required' : null,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: CustomTextField(
                      controller: _rateController,
                      label: 'Hourly Rate (₹)',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppSpacing.xl),

              CustomButton(
                text: 'Register Studio',
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
