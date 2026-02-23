import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ArtistMenuScreen extends StatelessWidget {
  const ArtistMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Artist Portal'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildSectionTitle('Account & Identity'),
                const SizedBox(height: AppSpacing.md),
                _buildMenuGrid(
                  context,
                  items: [
                    _MenuItem(
                      title: 'My Profile',
                      icon: Icons.person_outline,
                      color: AppColors.primary,
                      route: '/profile',
                    ),
                    _MenuItem(
                      title: 'Portfolio Management',
                      icon: Icons.photo_library_outlined,
                      color: Colors.purple,
                      route: '/profile', // In reality, maybe a specific portfolio route
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                _buildSectionTitle('Revenue & Growth'),
                const SizedBox(height: AppSpacing.md),
                _buildMenuGrid(
                  context,
                  items: [
                    _MenuItem(
                      title: 'Premium Subscription',
                      icon: Icons.workspace_premium_outlined,
                      color: Colors.amber[700]!,
                      route: '/subscription',
                    ),
                    _MenuItem(
                      title: 'Wallet & Earnings',
                      icon: Icons.account_balance_wallet_outlined,
                      color: AppColors.success,
                      route: '/wallet',
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xl),
                _buildSectionTitle('Help & Security'),
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
                    _MenuItem(
                      title: 'SOS Contacts',
                      icon: Icons.health_and_safety_outlined,
                      color: AppColors.error,
                      route: '/safety/contacts',
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
          onTap: () => context.push(item.route),
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
