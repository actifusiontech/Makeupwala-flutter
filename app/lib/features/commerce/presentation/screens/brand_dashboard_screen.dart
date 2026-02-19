import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      ),
      body: BlocBuilder<BrandBloc, BrandState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
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
                      _buildHeader(metrics),
                      const SizedBox(height: AppSpacing.lg),
                      _buildMetricsGrid(metrics),
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

  Widget _buildHeader(BrandDashboardMetrics metrics) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome back!', style: AppTypography.titleLarge),
        Text('Here is what\'s happening with your brand today.', 
             style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary)),
      ],
    );
  }

  Widget _buildMetricsGrid(BrandDashboardMetrics metrics) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      childAspectRatio: 1.5,
      children: [
        _MetricCard(
          title: 'Wholesale Sales',
          value: '₹${metrics.wholesaleSales.toStringAsFixed(0)}',
          subtitle: metrics.wholesaleChange,
          icon: Icons.monetization_on,
          color: Colors.blue,
        ),
        _MetricCard(
          title: 'Referral Orders',
          value: metrics.referralOrders.toString(),
          subtitle: metrics.referralChange,
          icon: Icons.shopping_bag,
          color: Colors.orange,
        ),
        _MetricCard(
          title: 'Active Curators',
          value: metrics.activeCurators.toString(),
          subtitle: metrics.curatorsChange,
          icon: Icons.people,
          color: Colors.green,
        ),
        _MetricCard(
          title: 'Pending Reviews',
          value: metrics.pendingReviews.toString(),
          subtitle: 'Applications',
          icon: Icons.rate_review,
          color: Colors.purple,
        ),
      ],
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
              Icon(icon, color: color, size: 20),
              Text(subtitle, style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value, style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
              Text(title, style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary)),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
