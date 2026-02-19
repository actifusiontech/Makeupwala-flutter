import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';
import '../bloc/wallet_bloc.dart';
import '../bloc/wallet_event.dart';
import '../bloc/wallet_state.dart';
import '../../auth/bloc/auth_bloc.dart';
import '../../auth/bloc/auth_state.dart';

class BankLinkingScreen extends StatefulWidget {
  const BankLinkingScreen({super.key});

  @override
  State<BankLinkingScreen> createState() => _BankLinkingScreenState();
}

class _BankLinkingScreenState extends State<BankLinkingScreen> {
  final _formKey = GlobalKey<FormState>();
  
  // Controllers
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _contactNameController = TextEditingController();
  final _panController = TextEditingController();
  final _accountNumberController = TextEditingController();
  final _ifscController = TextEditingController();
  final _accountNameController = TextEditingController();
  
  String _businessType = 'individual';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Link Bank Account'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: BlocListener<WalletBloc, WalletState>(
        listener: (context, state) {
          state.maybeWhen(
            bankLinkSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bank account linked successfully!')),
              );
              Navigator.pop(context);
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Verification Failed: $message')),
              );
            },
            orElse: () {},
          );
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Onboarding Details',
                  style: AppTypography.titleLarge,
                ),
                const SizedBox(height: AppSpacing.sm),
                const Text(
                  'These details are required for Razorpay KYC and direct chargeback handling.',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: AppSpacing.lg),

                // Business Info
                _buildTextField(_businessNameController, 'Legal Business Name', 'Enter name as per PAN'),
                const SizedBox(height: AppSpacing.md),
                DropdownButtonFormField<String>(
                  value: _businessType,
                  decoration: const InputDecoration(labelText: 'Business Type'),
                  items: [
                    'individual',
                    'proprietorship',
                    'partnership',
                    'llp',
                    'private_limited'
                  ].map((type) => DropdownMenuItem(
                    value: type,
                    child: Text(type.toUpperCase()),
                  )).toList(),
                  onChanged: (val) => setState(() => _businessType = val!),
                ),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_panController, 'PAN Number', 'Enter 10-digit PAN'),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_emailController, 'Business Email', 'Email for Razorpay notifications'),
                
                const SizedBox(height: AppSpacing.xl),
                Text('Bank Details', style: AppTypography.titleLarge),
                const SizedBox(height: AppSpacing.md),
                
                _buildTextField(_accountNameController, 'Account Holder Name', 'Name as per Bank Record'),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_accountNumberController, 'Account Number', 'Valid Bank Account Number'),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_ifscController, 'IFSC Code', '11-digit IFSC code'),
                
                const SizedBox(height: AppSpacing.xxl),
                
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: BlocBuilder<WalletBloc, WalletState>(
                    builder: (context, state) {
                      final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);
                      return ElevatedButton(
                        onPressed: isLoading ? null : _submit,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        child: isLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : const Text('Verify & Link Account', style: TextStyle(fontSize: 16)),
                      );
                    },
                  ),
                ),
                const SizedBox(height: AppSpacing.xl),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, String hint) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) return 'This field is required';
        return null;
      },
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final authState = context.read<AuthBloc>().state;
      final user = authState.maybeWhen(authenticated: (u) => u, orElse: () => null);
      
      context.read<WalletBloc>().add(WalletEvent.linkBank(
        email: _emailController.text,
        phone: user?.phoneNumber ?? _phoneController.text,
        legalBusinessName: _businessNameController.text,
        businessType: _businessType,
        contactName: _contactNameController.text.isEmpty ? _businessNameController.text : _contactNameController.text,
        pan: _panController.text,
        bankAccountNumber: _accountNumberController.text,
        bankIfsc: _ifscController.text,
        bankAccountName: _accountNameController.text,
      ));
    }
  }
}
