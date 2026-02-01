import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'dart:async';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../../shared/widgets/debug_panel.dart';
import 'bloc/auth_bloc.dart';

class OtpScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> _controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  bool _isLoading = false;
  int _resendTimer = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
    _focusNodes[0].requestFocus();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_resendTimer > 0) {
        setState(() => _resendTimer--);
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () => setState(() => _isLoading = true),
          otpSent: (phone) {
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('New OTP sent successfully!')),
            );
          },
          needsRoleSelection: (user) {
            setState(() => _isLoading = false);
            _clearOtpInputs();
            // Navigate to role selection
            context.go('/role-selection');
          },
          authenticated: (user) {
            setState(() => _isLoading = false);
            // User already has a role, go to home
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Welcome back, ${user.fullName}!')),
            );
            _clearOtpInputs();
            // Navigate based on role
            if (user.role.toLowerCase() == 'artist') {
              context.go('/artist/home');
            } else if (user.role.toLowerCase() == 'customer') {
              context.go('/customer/home');
            } else if (user.role.toLowerCase() == 'admin') {
              context.go('/admin/dashboard');
            } else {
              // Fallback: go to role selection if role is unknown
              context.go('/role-selection');
            }
          },
          unauthenticated: () => setState(() => _isLoading = false),
          error: (message) {
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: AppColors.error,
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
          body: Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSpacing.lg),

                      Text('Enter OTP', style: AppTypography.displaySmall),

                      const SizedBox(height: AppSpacing.sm),

                      Text(
                        'We sent a code to ${widget.phoneNumber}',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),

                      const SizedBox(height: AppSpacing.xxl),

                      // OTP input boxes
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(6, (index) => _buildOtpBox(index)),
                      ),

                      const SizedBox(height: AppSpacing.lg),

                      // Resend button
                      Center(
                        child: _resendTimer > 0
                            ? Text(
                                'Resend code in ${_resendTimer}s',
                                style: AppTypography.bodyMedium.copyWith(
                                  color: AppColors.textDisabled,
                                ),
                              )
                            : TextButton(
                                onPressed: _handleResend,
                                child: const Text('Resend OTP'),
                              ),
                      ),

                      const Spacer(),

                      // Verify button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _isLoading ? null : _handleVerify,
                          child: _isLoading
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      AppColors.white,
                                    ),
                                  ),
                                )
                              : const Text('Verify'),
                        ),
                      ),

                      const SizedBox(height: AppSpacing.md),
                    ],
                  ),
                ),
              ),
              // Debug Panel
              const DebugPanel(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOtpBox(int index) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: AppTypography.headlineMedium,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: AppColors.grey100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: (value) {
          if (value.isNotEmpty && index < 5) {
            _focusNodes[index + 1].requestFocus();
          } else if (value.isEmpty && index > 0) {
            _focusNodes[index - 1].requestFocus();
          }

          // Auto verify when all 6 digits entered
          if (index == 5 && value.isNotEmpty) {
            _handleVerify();
          }
        },
      ),
    );
  }

  Future<void> _handleVerify() async {
    final otp = _controllers.map((c) => c.text).join();
    if (otp.length != 6) {
      _showError('Please enter all 6 digits');
      return;
    }

    HapticFeedback.mediumImpact();
    context.read<AuthBloc>().add(
      AuthEvent.verifyOtp(widget.phoneNumber, otp),
    );
  }

  void _clearOtpInputs() {
    for (final c in _controllers) {
      c.clear();
    }
    if (_focusNodes.isNotEmpty) {
      _focusNodes[0].requestFocus();
    }
  }

  Future<void> _handleResend() async {
    setState(() {
      _resendTimer = 30;
    });
    _startTimer();

    HapticFeedback.lightImpact();
    context.read<AuthBloc>().add(AuthEvent.login(widget.phoneNumber));
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: AppColors.error),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }
}
