import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../features/auth/bloc/auth_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/brand_bloc.dart';
import '../../bloc/brand_event.dart';
import '../../bloc/brand_state.dart';
import '../../domain/brand_models.dart';
import '../widgets/sales_chart_widget.dart';
import '../widgets/top_products_chart_widget.dart';
import 'add_product_screen.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:ui';

class BrandDashboardScreen extends StatelessWidget {
  const BrandDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('Brand Portal', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () => context.push('/chat'),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              switch (value) {
                case 'profile':
                  context.push('/profile');
                  break;
                case 'settings':
                  context.push('/profile/edit');
                  break;
                case 'faqs':
                  context.push('/complaints');
                  break;
                case 'logout':
                  context.read<AuthBloc>().add(const AuthEvent.logout());
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('My Profile'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem<String>(
                value: 'settings',
                child: ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Settings'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem<String>(
                value: 'faqs',
                child: ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('FAQs & Support'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.logout, color: AppColors.error),
                  title: Text('Logout', style: TextStyle(color: AppColors.error)),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
        ],
      ),
      body: BlocBuilder<BrandBloc, BrandState>(
        builder: (context, state) {
          return state.maybeWhen(
          loading: () => SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              children: [
                ShimmerLoaders.profileHeader(),
                const SizedBox(height: AppSpacing.lg),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: AppSpacing.md,
                  crossAxisSpacing: AppSpacing.md,
                  childAspectRatio: 1.5,
                  children: List.generate(4, (index) => ShimmerLoaders.bookingCard()),
                ),
                const SizedBox(height: AppSpacing.lg),
                ShimmerLoaders.listTile(),
                ShimmerLoaders.listTile(),
              ],
            ),
          ),
            loaded: (metrics, _) {
              if (metrics == null) {
                return const Center(child: Text('No data available'));
              }
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<BrandBloc>().add(const BrandEvent.fetchMetrics());
                },
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBrandHeroHeader("Brand Partner"),
                      const SizedBox(height: AppSpacing.xl),
                      
                      Text('Performance Analytics', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: AppSpacing.md),
                      _buildPremiumMetricsGrid(metrics),
                      const SizedBox(height: AppSpacing.lg),
                      // Sales Chart
                      if (metrics.revenueChart.isNotEmpty)
                        SalesChartWidget(
                          data: metrics.revenueChart,
                          period: 'week',
                        ),
                      const SizedBox(height: AppSpacing.lg),
                      // Top Products Chart
                      if (metrics.topProducts.isNotEmpty)
                        TopProductsChartWidget(products: metrics.topProducts),
                      const SizedBox(height: AppSpacing.lg),
                      const SizedBox(height: AppSpacing.lg),
                      _buildSectionHeader('Quick Actions'),
                      _buildQuickActionsGrid(context),
                      const SizedBox(height: AppSpacing.lg),
                      _buildSectionHeader('Recent Submissions'),
                      _buildRecentSubmissions(metrics.recentSubmissions),
                    ],
                  ),
                ),
              );
            },
            error: (msg) => Center(child: Text('Error: $msg')),
            orElse: () => const SizedBox(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddProductScreen()),
        ),
        icon: const Icon(Icons.add),
        label: const Text('New Product'),
        backgroundColor: AppColors.primary,
      ),
    );
  }

  Widget _buildBrandHeroHeader(String brandName) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        image: const DecorationImage(
          image: AssetImage('assets/images/hero_brand.png'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'LUXURY PARTNER',
                    style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ).animate().fadeIn().scale(),
                const SizedBox(height: 8),
                Text(
                  brandName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.2),
                const SizedBox(height: 4),
                Text(
                  'Global Supply Chain Portal',
                  style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14),
                ).animate().fadeIn(delay: 400.ms),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumMetricsGrid(BrandDashboardMetrics metrics) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      childAspectRatio: 1.5,
      children: [
        _buildPremiumMetricCard(
          title: 'Wholesale Sales',
          value: '₹${metrics.wholesaleSales.toStringAsFixed(0)}',
          subtitle: metrics.wholesaleChange,
          icon: FontAwesomeIcons.buildingColumns,
          color: Colors.blue,
        ),
        _buildPremiumMetricCard(
          title: 'Referral Orders',
          value: metrics.referralOrders.toString(),
          subtitle: metrics.referralChange,
          icon: FontAwesomeIcons.truckArrowRight,
          color: Colors.orange,
        ),
        _buildPremiumMetricCard(
          title: 'Active Curators',
          value: metrics.activeCurators.toString(),
          subtitle: metrics.curatorsChange,
          icon: FontAwesomeIcons.userCheck,
          color: Colors.green,
        ),
        _buildPremiumMetricCard(
          title: 'Review Queue',
          value: metrics.pendingReviews.toString(),
          subtitle: 'Global',
          icon: FontAwesomeIcons.clipboardCheck,
          color: Colors.purple,
        ),
      ],
    );
  }

  Widget _buildQuickActionsGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.sm,
      crossAxisSpacing: AppSpacing.sm,
      childAspectRatio: 1.0,
      children: [
        _buildActionCard(
          context,
          title: 'Orders',
          icon: FontAwesomeIcons.boxOpen,
          color: Colors.blue,
          route: '/orders',
        ),
        _buildActionCard(
          context,
          title: 'My Campaigns',
          icon: FontAwesomeIcons.bullhorn,
          color: Colors.purple,
          route: '/brand-campaigns',
        ),
        _buildActionCard(
          context,
          title: 'Explore',
          icon: FontAwesomeIcons.magnifyingGlassChart,
          color: Colors.teal,
          route: '/campaign-explorer',
        ),
      ],
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required String route,
  }) {
    return GestureDetector(
      onTap: () => context.push(route),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
          border: Border.all(color: AppColors.grey100),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: FaIcon(icon, color: color, size: 20),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTypography.labelMedium.copyWith(fontWeight: FontWeight.bold, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPremiumMetricCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        border: Border.all(color: AppColors.grey100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FaIcon(icon, color: color, size: 16),
              Text(
                subtitle,
                style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                title,
                style: AppTypography.labelSmall.copyWith(color: AppColors.textSecondary),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Text(title, style: AppTypography.titleMedium),
    );
  }

  Widget _buildTopProducts(List<DashboardProduct> products) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            trailing: Text('${product.sales} sales', 
                          style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.secondary)),
          );
        },
      ),
    );
  }

  Widget _buildRecentSubmissions(List<DashboardSubmission> submissions) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: submissions.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final sub = submissions[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.primary.withOpacity(0.1),
              child: Text(sub.artist[0], style: const TextStyle(color: AppColors.primary)),
            ),
            title: Text(sub.artist),
            subtitle: Text(sub.campaign),
            trailing: Text(sub.date, style: AppTypography.bodySmall),
          );
        },
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  const _MetricCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: color, size: 16),
                ),
                Text(subtitle, style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            Text(value, style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(title, style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary, fontSize: 11)),
          ],
        ),
      ),
    );
  }
}
