import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_animate/flutter_animate.dart';

class StudioMenuScreen extends StatelessWidget {
  const StudioMenuScreen({super.key});

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
                _buildSectionTitle('Studio Operations'),
                const SizedBox(height: AppSpacing.md),
                _buildMenuGrid(
                  context,
                  items: [
                    _MenuItem(
                      title: 'Studio Profile',
                      icon: Icons.store_outlined,
                      color: AppColors.primary,
                      route: '/profile', // Placeholder route or specific profile route
                    ),
                    _MenuItem(
                      title: 'Customer Directory',
                      icon: Icons.people_outline,
                      color: Colors.pinkAccent,
                      route: '/studio/customers',
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
                      title: 'Business Memberships',
                      icon: Icons.card_membership_outlined,
                      color: Colors.amber[800]!,
                      route: '/studio/memberships',
                    ),
                    _MenuItem(
                      title: 'Revenue Analytics',
                      icon: Icons.analytics_outlined,
                      color: AppColors.success,
                      route: '/studio/analytics',
                    ),
                    _MenuItem(
                      title: 'Marketing & Coupons',
                      icon: Icons.campaign_outlined,
                      color: Colors.purple[800]!,
                      route: '/studio/marketing',
                    ),
                    _MenuItem(
                      title: 'Staff Commissions',
                      icon: Icons.payments_outlined,
                      color: Colors.blueGrey[800]!,
                      route: '/studio/commissions',
                    ),
                    _MenuItem(
                      title: 'Unified Dashboard',
                      icon: Icons.auto_graph_outlined,
                      color: Colors.indigo[900]!,
                      route: '/studio/unified-empire',
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
