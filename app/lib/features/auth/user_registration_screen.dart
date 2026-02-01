import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/auth_bloc.dart';

class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({super.key});

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController(); // Added
  bool _isLoading = false;

  // Luxury Gold & Rose Palette
  static const Color _kDarkGold = Color(0xFFC5A028);
  static const Color _kTextDark = Color(0xFF2C2C2C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Bright Full Screen Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/login_bg_bright.png',
              fit: BoxFit.cover,
            ),
          ),

          // 2. Light Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.0),
                    Colors.white.withOpacity(0.3),
                    Colors.white.withOpacity(0.9),
                    Colors.white,
                  ],
                  stops: const [0.0, 0.5, 0.8, 1.0],
                ),
              ),
            ),
          ),

          // 3. Content
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
                
                // Content Sheet
                Container(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 30,
                        offset: const Offset(0, -10),
                      ),
                    ],
                    border: Border(
                      top: BorderSide(color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Join Us',
                          style: GoogleFonts.playfairDisplay(
                            color: _kTextDark,
                            fontSize: 32,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                         Text(
                          'Create your beauty profile',
                          style: GoogleFonts.lato(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xl),
                        
                        _buildInput('FULL NAME', _nameController, TextInputType.name),
                        const SizedBox(height: AppSpacing.md),
                        _buildInput('EMAIL ADDRESS', _emailController, TextInputType.emailAddress),
                        const SizedBox(height: AppSpacing.md),
                        _buildInput('PHONE NUMBER', _phoneController, TextInputType.phone),
                        const SizedBox(height: AppSpacing.md),
                        _buildInput('PASSWORD', _passwordController, TextInputType.visiblePassword, obscureText: true),
                        
                        const SizedBox(height: AppSpacing.xl),
                        
                        SizedBox(
                          height: 56,
                          child: ElevatedButton(
                            onPressed: _isLoading ? null : _handleRegister,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _kTextDark,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                            ),
                            child: _isLoading
                                ? const CircularProgressIndicator(color: Colors.white)
                                : Text('CREATE ACCOUNT', style: GoogleFonts.lato(fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(String label, TextEditingController controller, TextInputType type, {bool obscureText = false}) {
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
          obscureText: obscureText,
          style: GoogleFonts.playfairDisplay(color: _kTextDark, fontSize: 18),
          cursorColor: _kDarkGold,
          decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: _kDarkGold, width: 2)),
            contentPadding: EdgeInsets.symmetric(vertical: 8),
            isDense: true,
          ),
          validator: (value) => value!.isEmpty ? 'Required' : null,
        ),
      ],
    );
  }

  void _handleRegister() {
    if (_formKey.currentState!.validate()) {
      HapticFeedback.mediumImpact();
      context.read<AuthBloc>().add(AuthEvent.register(
        fullName: _nameController.text,
        email: _emailController.text,
        phone: _phoneController.text,
        password: _passwordController.text,
        role: 'customer', // Default to customer
      ));
    }
  }
}
