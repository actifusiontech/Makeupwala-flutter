import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bloc/auth_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isLoading = false;

  // Luxury Gold & Rose Palette
  static const Color _kDarkGold = Color(0xFFC5A028);
  static const Color _kTextDark = Color(0xFF2C2C2C);

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () => setState(() => _isLoading = true),
          passwordResetSent: () {
            setState(() => _isLoading = false);
            HapticFeedback.mediumImpact();
            _showSuccessDialog();
          },
          error: (message) {
            setState(() => _isLoading = false);
            HapticFeedback.heavyImpact();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: AppColors.error),
            );
          },
          orElse: () => setState(() => _isLoading = false),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              // Background
              Positioned.fill(
                child: Image.asset(
                  'assets/images/login_bg_bright.png',
                  fit: BoxFit.cover,
                ),
              ),

              // Glass Overlay
              Positioned.fill(
                child: Container(
                  color: Colors.white.withOpacity(0.4),
                ),
              ),

              SafeArea(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: _kTextDark),
                        onPressed: () => context.pop(),
                      ),
                    ),
                    const Spacer(),
                    
                    // Content Card
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.screenPadding),
                      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 30,
                            offset: const Offset(0, 10),
                          ),
                        ],
                        border: Border.all(color: Colors.white.withOpacity(0.6)),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Reset Password',
                              style: GoogleFonts.playfairDisplay(
                                color: _kTextDark,
                                fontSize: 32,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Enter your email to receive a recovery link',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: AppSpacing.xxl),
                            
                            _buildInput('EMAIL ADDRESS', _emailController, TextInputType.emailAddress),
                            
                            const SizedBox(height: AppSpacing.xl),
                            
                            SizedBox(
                              height: 56,
                              child: ElevatedButton(
                                onPressed: _isLoading ? null : _handleSubmit,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _kTextDark,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                ),
                                child: _isLoading
                                    ? const CircularProgressIndicator(color: Colors.white)
                                    : Text('SEND LINK', style: GoogleFonts.lato(fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInput(String label, TextEditingController controller, TextInputType type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.lato(
            color: Colors.black38,
            fontSize: 10,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextFormField(
          controller: controller,
          keyboardType: type,
          style: GoogleFonts.playfairDisplay(color: _kTextDark, fontSize: 20),
          cursorColor: _kDarkGold,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: _kDarkGold, width: 2)),
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            isDense: true,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) return 'Required';
            if (!value.contains('@')) return 'Invalid email';
            return null;
          },
        ),
      ],
    );
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      HapticFeedback.mediumImpact();
      context.read<AuthBloc>().add(AuthEvent.forgotPassword(_emailController.text.trim()));
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          'Email Sent',
          style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        content: Text(
          'If an account exists with this email, you will receive a password reset link shortly.',
          style: GoogleFonts.lato(),
          textAlign: TextAlign.center,
        ),
        actions: [
          Center(
            child: TextButton(
              onPressed: () {
                context.pop(); // Close dialog
                context.pop(); // Return to login
              },
              child: Text(
                'BACK TO LOGIN',
                style: GoogleFonts.lato(color: _kDarkGold, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
