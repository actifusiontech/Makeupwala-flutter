import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../shared/widgets/debug_panel.dart';
import 'bloc/auth_bloc.dart';

class PremiumLoginScreen extends StatefulWidget {
  const PremiumLoginScreen({super.key});

  @override
  State<PremiumLoginScreen> createState() => _PremiumLoginScreenState();
}

class _PremiumLoginScreenState extends State<PremiumLoginScreen>
    with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;
  bool _isLoading = false;
  bool _hasError = false;

  // Luxury Gold & Rose Palette
  static const Color _kDarkGold = Color(0xFFC5A028);
  static const Color _kTextDark = Color(0xFF2C2C2C);

  @override
  void initState() {
    super.initState();
    
    // Fade animation for overall screen
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeOut),
    );

    // Slide animation for content
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeOutCubic),
    );
    
    _scaleAnimation = Tween<double>(begin: 0.95, end: 1.0).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeOutBack),
    );

    // Start animations
    _fadeController.forward();
    Future.delayed(const Duration(milliseconds: 100), () {
      _slideController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () => setState(() => _isLoading = true),
          otpSent: (phone) {
            HapticFeedback.lightImpact();
            setState(() => _isLoading = false);
            context.push('/otp', extra: phone);
          },
          needsRoleSelection: (user) {
            setState(() => _isLoading = false);
            context.go('/role-selection');
          },
          authenticated: (user) {
            setState(() => _isLoading = false);
            HapticFeedback.mediumImpact();
            // Navigate based on role
            final role = user.role.toLowerCase();
            if (role == 'artist') {
              context.go('/artist/home');
            } else if (role == 'customer') {
              context.go('/customer/home'); 
            } else if (role == 'admin') {
              context.go('/admin/dashboard');
            } else if (role == 'studio') {
              context.go('/studio/home');
            } else if (role == 'academy') {
              context.go('/academy/home');
            } else if (role == 'planner') {
              context.go('/planner/home');
            } else {
              context.go('/role-selection');
            }
          },
          unauthenticated: () => setState(() => _isLoading = false),
          error: (message) {
            HapticFeedback.heavyImpact();
            setState(() { _isLoading = false; _hasError = true; });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: AppColors.error),
            );
            Future.delayed(const Duration(milliseconds: 300), () {
              if (mounted) setState(() => _hasError = false);
            });
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              // 1. Bright Luxury Background
              // 1. Bright Luxury Background - Fashion Model
              Positioned.fill(
                child: Image.asset(
                  'assets/images/login_bg_model_bright.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.center, // Center face, cropping top white space if needed
                ),
              ),

              // 2. Golden Ambient Glow (Top Center) - Kept for atmosphere
              Positioned(
                top: -150,
                left: 0,
                right: 0,
                height: 500,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.topCenter,
                      radius: 0.8,
                      colors: [
                        const Color(0xFFC5A028).withOpacity(0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),

              // 3. Top Left Logo
              Positioned(
                top: 60, // SafeArea top approximation + padding
                left: 24,
                child: Hero(
                  tag: 'app_logo',
                  child: Container(
                    padding: const EdgeInsets.all(2), // White border effect
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white.withOpacity(0.8), width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/logo_rose_gold_white.png',
                        width: 64, 
                        height: 64,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ).animate().fadeIn(duration: 800.ms).slideX(begin: -0.2, end: 0),
              ),

              // 4. Content
              SafeArea(
                child: Column(
                  children: [
                    const Spacer(),
                    // Centered Brand Section REMOVED to show full image
                    const Spacer(flex: 3),

                    // White Frosted Glass Sheet
                    Container(
                      padding: const EdgeInsets.all(AppSpacing.screenPadding),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9), // Higher opacity for clean look
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFC5A028).withOpacity(0.1), // Golden Shadow
                            blurRadius: 40,
                            offset: const Offset(0, -10),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05), // Depth Shadow
                            blurRadius: 20,
                            offset: const Offset(0, -5),
                          ),
                        ],
                        border: Border(
                          top: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _buildTitleSection(),
                            const SizedBox(height: AppSpacing.xl),
                            
                            _buildPhoneInput(),
                            const SizedBox(height: AppSpacing.lg),
                            
                            _buildContinueButton(),
                            const SizedBox(height: AppSpacing.xl),
                            
                            Row(
                              children: [
                                const Expanded(child: Divider(color: Colors.black12)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Text('OR', style: GoogleFonts.lato(color: Colors.black45, fontSize: 12)),
                                ),
                                const Expanded(child: Divider(color: Colors.black12)),
                              ],
                            ),
                            const SizedBox(height: AppSpacing.xl),

                            _buildSocialLogin(),
                            const SizedBox(height: AppSpacing.xl),

                            _buildRegistrationLink(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              const DebugPanel(),
            ],
          ),
        );
      },
    );
  }


  Widget _buildTitleSection() {
    return Column(
      children: [
        Text(
          'Hello Beautiful,',
          textAlign: TextAlign.center,
          style: GoogleFonts.playfairDisplay(
            color: _kTextDark,
            fontSize: 36,
            height: 1.1,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Let\'s find your perfect look',
          style: GoogleFonts.lato(
            color: Colors.black54,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        ),
      ],
    ).animate().fadeIn().slideY(begin: 0.2, end: 0);
  }

  Widget _buildPhoneInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PHONE NUMBER',
          style: GoogleFonts.lato(
            color: Colors.black38,
            fontSize: 11,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _phoneController,
          keyboardType: TextInputType.phone,
          style: GoogleFonts.playfairDisplay(color: _kTextDark, fontSize: 24),
          cursorColor: _kDarkGold,
          onChanged: (_) {
            if (_hasError) setState(() => _hasError = false);
          },
          decoration: InputDecoration(
            hintText: '98765 43210',
            hintStyle: TextStyle(color: Colors.black12),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 12, top: 2),
              child: Text(
                '+91',
                style: GoogleFonts.playfairDisplay(
                  color: Colors.black45,
                  fontSize: 24,
                ),
              ),
            ),
            prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: _kDarkGold, width: 2)),
            errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.error)),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            isDense: true,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) return '';
            if (value.length < 10) return '';
            return null;
          },
        ),
      ],
    ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2, end: 0);
  }

  Widget _buildContinueButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: _isLoading ? null : _handleContinue,
        style: ElevatedButton.styleFrom(
          backgroundColor: _kTextDark, // Chic Black Button
          foregroundColor: Colors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)), // Sharp
        ),
        child: _isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation(Colors.white)),
              )
            : Text(
                'CONTINUE',
                style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
      ),
    ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.3, end: 0);
  }

  Widget _buildSocialLogin() {
    return Center(
      child: _buildSocialButton(
        icon: FontAwesomeIcons.google,
        label: 'Continue with Google',
        onTap: () {
          HapticFeedback.lightImpact();
          context.read<AuthBloc>().add(const AuthEvent.socialLogin('google'));
        },
      ),
    ).animate().fadeIn(delay: 500.ms);
  }

  Widget _buildSocialButton({required IconData icon, required String label, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(icon, color: Colors.black87, size: 18),
            const SizedBox(width: 12),
            Text(
              label,
              style: GoogleFonts.lato(
                color: Colors.black87, 
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegistrationLink() {
    return Center(
      child: TextButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          context.push('/register');
        },
        child: RichText(
          text: TextSpan(
            text: 'Don\'t have an account? ',
            style: GoogleFonts.lato(color: Colors.black54, fontSize: 14),
            children: [
              TextSpan(
                text: 'Register',
                style: GoogleFonts.lato(
                  color: _kDarkGold,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: _kDarkGold,
                ),
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(delay: 700.ms);
  }

  void _handleContinue() {
    if (_formKey.currentState?.validate() ?? false) {
      HapticFeedback.mediumImpact();
      final phone = _phoneController.text.trim();
      context.read<AuthBloc>().add(AuthEvent.login(phone));
    } else {
      HapticFeedback.lightImpact();
    }
  }
}
