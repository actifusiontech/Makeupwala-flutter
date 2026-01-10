import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'bloc/auth_bloc.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  bool _isLoading = false;

  void _handleRoleSelection(String role) {
    context.read<AuthBloc>().add(AuthEvent.selectRole(role));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () => setState(() => _isLoading = true),
          otpSent: (_) {},
          needsRoleSelection: (_) => setState(() => _isLoading = false),
          authenticated: (user) {
            setState(() => _isLoading = false);
            context.go('/home');
          },
          unauthenticated: () {},
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
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSpacing.xxl),
                  Text(
                    'Choose your role',
                    style: AppTypography.displaySmall,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    'How do you want to use MakeUpWallah?',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  
                  // Customer Card
                  _RoleCard(
                    title: 'I want to book services',
                    subtitle: 'Find makeup artists, book appointments',
                    icon: Icons.face_retouching_natural,
                    color: AppColors.primary,
                    isLoading: _isLoading,
                    onTap: () => _handleRoleSelection('customer'),
                  ),
                  
                  const SizedBox(height: AppSpacing.md),
                  
                  // Artist Card
                  _RoleCard(
                    title: 'I am a Makeup Artist',
                    subtitle: 'List services, manage bookings',
                    icon: Icons.brush,
                    color: AppColors.textPrimary,
                    isLoading: _isLoading,
                    onTap: () => _handleRoleSelection('artist'),
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Brand/Wholesaler Card
                  _RoleCard(
                    title: 'I am a Brand/Wholesaler',
                    subtitle: 'List products, manage inventory',
                    icon: Icons.store,
                    color: Colors.purple,
                    isLoading: _isLoading,
                    onTap: () => _handleRoleSelection('brand'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _RoleCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final bool isLoading;
  final VoidCallback onTap;

  const _RoleCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.isLoading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.grey200),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 32),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.grey400),
          ],
        ),
      ),
    );
  }
}
