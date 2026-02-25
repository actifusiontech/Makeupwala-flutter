import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/education_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AcademyMenuScreen extends StatelessWidget {
  const AcademyMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: AppSpacing.md),
                _buildSectionTitle('Institute Details'),
                const SizedBox(height: AppSpacing.md),
                _buildMenuGrid(
                  context,
                  items: [
                    _MenuItem(
                      title: 'Institute Profile',
                      icon: Icons.account_balance_outlined,
                      color: AppColors.primary,
                      route: '/profile', // Placeholder route or specific profile route
                    ),
                    _MenuItem(
                      title: 'Leads Pipeline',
                      icon: Icons.person_search, // Changed icon as per instruction
                      color: Colors.indigo,
                      route: '/action:leads', // Kept original route, logic handles it
                    ),
                    _MenuItem(
                      title: 'Faculty Grading',
                      icon: Icons.grading,
                      color: Colors.deepPurple,
                      route: '/academy/grading/batch_test/student_test',
                    ),
                    _MenuItem(
                      title: 'Job Placements',
                      icon: Icons.work,
                      color: Colors.teal,
                      route: '/academy/placements',
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                _buildSectionTitle('Finance & Plan'),
                const SizedBox(height: AppSpacing.md),
                _buildMenuGrid(
                  context,
                  items: [
                    _MenuItem(
                      title: 'Corporate Subscription',
                      icon: Icons.business_center_outlined,
                      color: Colors.amber[700]!,
                      route: '/subscription',
                    ),
                    _MenuItem(
                      title: 'Wallet & Revenue',
                      icon: Icons.account_balance_wallet_outlined,
                      color: AppColors.success,
                      route: '/wallet',
                    ),
                    _MenuItem(
                      title: 'Fee Management',
                      icon: Icons.receipt_long_outlined,
                      color: Colors.teal,
                      route: '/action:fees', // Will intercept below
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                _buildSectionTitle('Assistance'),
                const SizedBox(height: AppSpacing.md),
                _buildMenuGrid(
                  context,
                  items: [
                    _MenuItem(
                      title: 'Support & Complaints',
                      icon: Icons.support_agent_outlined,
                      color: AppColors.info,
                      route: '/complaints',
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xxl),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: AppTypography.titleMedium.copyWith(
        fontWeight: FontWeight.bold,
        color: AppColors.textSecondary,
        letterSpacing: 0.5,
      ),
    ).animate().fadeIn().slideX();
  }

  Widget _buildMenuGrid(BuildContext context, {required List<_MenuItem> items}) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      childAspectRatio: 1.3,
      children: items.map((item) {
        return GestureDetector(
          onTap: () {
            if (item.route == '/action:fees') {
              // Retrieve the institute ID from bloc
              final instId = context.read<EducationBloc>().state.maybeWhen(
                dashboardLoaded: (_, institute) => institute?.id ?? '',
                orElse: () => ''
              );
              context.push('/academy/fees?instituteId=$instId');
            } else if (item.route == '/action:leads') {
              final instId = context.read<EducationBloc>().state.maybeWhen(
                dashboardLoaded: (_, institute) => institute?.id ?? '',
                orElse: () => ''
              );
              context.push('/academy/leads?instituteId=$instId');
            } else {
              context.push(item.route);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              border: Border.all(color: AppColors.grey100),
              boxShadow: [
                BoxShadow(
                  color: item.color.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: item.color.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(item.icon, color: item.color, size: 28),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: AppTypography.labelMedium.copyWith(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ).animate().scale(duration: 400.ms, curve: Curves.easeOutBack),
        );
      }).toList(),
    );
  }
}

class _MenuItem {
  final String title;
  final IconData icon;
  final Color color;
  final String route;

  _MenuItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.route,
  });
}
