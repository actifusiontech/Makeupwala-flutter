import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/wallet_bloc.dart';
import '../../bloc/wallet_event.dart';
import '../../bloc/wallet_state.dart';
import '../../../auth/bloc/auth_bloc.dart';

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
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.primary, AppColors.primaryDark],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
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
                _buildHeader(
                  'Onboarding Details',
                  'Required for Razorpay KYC and secure payouts.',
                ),
                const SizedBox(height: AppSpacing.lg),

                // Business Info
                _buildTextField(_businessNameController, 'Legal Business Name', 'Enter name as per PAN', Icons.business_outlined),
                const SizedBox(height: AppSpacing.md),
                DropdownButtonFormField<String>(
                  value: _businessType,
                  decoration: InputDecoration(
                    labelText: 'Business Type',
                    prefixIcon: const Icon(Icons.category_outlined, color: AppColors.primary, size: 20),
                    filled: true,
                    fillColor: AppColors.grey50,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                  ),
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
                _buildTextField(_panController, 'PAN Number', '10-digit PAN', Icons.credit_card_outlined),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_emailController, 'Business Email', 'Email for notifications', Icons.email_outlined),
                
                const SizedBox(height: AppSpacing.xl),
                _buildHeader('Bank Details', 'Enter the account where you want to receive funds.'),
                const SizedBox(height: AppSpacing.md),
                
                _buildTextField(_accountNameController, 'Account Holder Name', 'Name as per Bank Record', Icons.person_outline),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_accountNumberController, 'Account Number', 'Valid Bank Account Number', Icons.account_balance_outlined),
                const SizedBox(height: AppSpacing.md),
                _buildTextField(_ifscController, 'IFSC Code', '11-digit IFSC code', Icons.code_rounded),
                
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

  Widget _buildHeader(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTypography.headlineSmall.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(subtitle, style: AppTypography.bodySmall.copyWith(color: AppColors.grey500)),
        const Divider(height: 32),
      ],
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, String hint, [IconData? icon]) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: icon != null ? Icon(icon, color: AppColors.primary, size: 20) : null,
        filled: true,
        fillColor: AppColors.grey50,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        labelStyle: const TextStyle(color: AppColors.grey600),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) return 'Required';
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
        phone: user?.phone ?? _phoneController.text,
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
