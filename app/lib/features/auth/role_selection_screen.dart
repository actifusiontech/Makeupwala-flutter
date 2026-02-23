import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
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
          phoneVerified: (_) => setState(() => _isLoading = false),
          needsRegistration: (_) => setState(() => _isLoading = false),
          authenticated: (user) {
            setState(() => _isLoading = false);
            switch (user.role) {
              case 'artist':
                context.go('/artist/onboarding');
                break;
              case 'brand':
                context.go('/brand/home');
                break;
              case 'studio':
                // For now, we assume role selection implies need to onboard.
                // In a real app, we'd check if they already have a studio.
                context.go('/studio/onboarding');
                break;
              case 'academy':
                context.go('/academy/onboarding');
                break;
              case 'planner':
                context.go('/planner/onboarding');
                break;
              case 'customer':
              default:
                context.go('/customer/home');
                break;
            }
          },
          unauthenticated: () => setState(() => _isLoading = false),
          passwordResetSent: () => setState(() => _isLoading = false),
          passwordResetSuccess: () => setState(() => _isLoading = false),
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
                  
                  const SizedBox(height: AppSpacing.md),

                  // Studio/Parlour Card
                  _RoleCard(
                    title: 'I am a Beauty Parlour',
                    subtitle: 'Manage seats, bookings & team',
                    icon: Icons.chair,
                    color: Colors.pink,
                    isLoading: _isLoading,
                    onTap: () => _handleRoleSelection('studio'),
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Academy Card
                  _RoleCard(
                    title: 'I run a Makeup Academy',
                    subtitle: 'Manage courses, students & placements',
                    icon: Icons.school,
                    color: Colors.teal,
                    isLoading: _isLoading,
                    onTap: () => _handleRoleSelection('academy'),
                  ),

                  const SizedBox(height: AppSpacing.md),

                  // Wedding Planner Card
                  _RoleCard(
                    title: 'I am a Wedding Planner',
                    subtitle: 'Organize destination weddings & squads',
                    icon: Icons.flight_takeoff,
                    color: Colors.deepOrange,
                    isLoading: _isLoading,
                    onTap: () => _handleRoleSelection('planner'),
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
