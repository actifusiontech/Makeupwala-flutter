import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'bloc/auth_bloc.dart';

enum UserRole { customer, artist }

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          otpSent: (phoneNumber) {},
          needsRoleSelection: (user) {},
          authenticated: (user) {
            // Navigate based on role after selection
            if (user.role == 'artist') {
              context.go('/artist/home');
            } else if (user.role == 'customer') {
              context.go('/customer/home');
            }
          },
          unauthenticated: () => context.go('/login'),
          error: (message) {
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
        final isLoading = state.maybeMap(
          loading: (_) => true,
          orElse: () => false,
        );

        return Scaffold(
          backgroundColor: AppColors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                children: [
                  const SizedBox(height: AppSpacing.xxl),

                  Text('Join as', style: AppTypography.displaySmall),

                  const SizedBox(height: AppSpacing.sm),

                  Text(
                    'Choose how you want to use Makeupwala',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: AppSpacing.xxl),

                  // Role cards
                  Expanded(
                    child: ListView(
                      children: [
                        _RoleCard(
                          role: UserRole.customer,
                          title: 'Customer',
                          description: 'Find and book talented makeup artists',
                          icon: Icons.search_rounded,
                          color: AppColors.primary,
                          isEnabled: !isLoading,
                          onTap: () => _handleRoleSelection(
                              context, UserRole.customer),
                        ),
                        const SizedBox(height: AppSpacing.lg),
                        _RoleCard(
                          role: UserRole.artist,
                          title: 'Artist',
                          description:
                              'Showcase your skills and grow your business',
                          icon: Icons.brush_rounded,
                          color: AppColors.info,
                          isEnabled: !isLoading,
                          onTap: () =>
                              _handleRoleSelection(context, UserRole.artist),
                        ),
                      ],
                    ),
                  ),

                  // Loading indicator
                  if (isLoading)
                    const Padding(
                      padding: EdgeInsets.all(AppSpacing.md),
                      child: CircularProgressIndicator(),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _handleRoleSelection(BuildContext context, UserRole role) {
    // Send role selection to backend via Auth Bloc
    final roleString = role == UserRole.customer ? 'customer' : 'artist';
    context.read<AuthBloc>().add(AuthEvent.selectRole(roleString));
  }
}

class _RoleCard extends StatelessWidget {
  final UserRole role;
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final bool isEnabled;
  final VoidCallback onTap;

  const _RoleCard({
    required this.role,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.isEnabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isEnabled ? 1.0 : 0.5,
      child: InkWell(
        onTap: isEnabled ? onTap : null,
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        child: Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: color.withOpacity(0.05),
            border: Border.all(color: color.withOpacity(0.2), width: 2),
            borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
          ),
          child: Row(
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 32, color: color),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTypography.titleLarge.copyWith(color: color),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      description,
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded, color: color, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
