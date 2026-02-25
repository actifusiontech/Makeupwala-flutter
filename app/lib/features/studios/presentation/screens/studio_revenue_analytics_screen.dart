import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/analytics/revenue_analytics_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';

class StudioRevenueAnalyticsScreen extends StatefulWidget {
  final String studioId;

  const StudioRevenueAnalyticsScreen({super.key, required this.studioId});

  @override
  State<StudioRevenueAnalyticsScreen> createState() => _StudioRevenueAnalyticsScreenState();
}

class _StudioRevenueAnalyticsScreenState extends State<StudioRevenueAnalyticsScreen> {
  String _currentTimeframe = 'monthly';

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    context.read<RevenueAnalyticsBloc>().add(
      RevenueAnalyticsEvent.fetchAnalytics(widget.studioId, timeframe: _currentTimeframe),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Revenue Analytics'),
        backgroundColor: AppColors.success,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _fetchData,
          ),
        ],
      ),
      body: BlocBuilder<RevenueAnalyticsBloc, RevenueAnalyticsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text('Error: $message')),
            loaded: (report) => _buildReportView(report),
            orElse: () => const Center(child: Text('Initializing...')),
          );
        },
      ),
    );
  }

  Widget _buildReportView(Map<String, dynamic> report) {
    final totalRevenue = report['total_revenue'] ?? 0.0;
    final byService = (report['by_service'] as List?) ?? [];
    final byArtist = (report['by_artist'] as List?) ?? [];

    return RefreshIndicator(
      onRefresh: () async => _fetchData(),
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        children: [
          _buildTimeframePicker(),
          const SizedBox(height: AppSpacing.xl),
          _buildTotalRevenueCard(totalRevenue),
          const SizedBox(height: AppSpacing.xxl),
          _buildSectionHeader('Revenue by Service'),
          const SizedBox(height: AppSpacing.md),
          _buildServiceBreakdown(byService),
          const SizedBox(height: AppSpacing.xxl),
          _buildSectionHeader('Top Performing Artists'),
          const SizedBox(height: AppSpacing.md),
          _buildArtistBreakdown(byArtist),
          const SizedBox(height: AppSpacing.xxxl),
        ],
      ),
    );
  }

  Widget _buildTimeframePicker() {
    return SegmentedButton<String>(
      segments: const [
        ButtonSegment(value: 'daily', label: Text('Daily'), icon: Icon(Icons.today)),
        ButtonSegment(value: 'weekly', label: Text('Weekly'), icon: Icon(Icons.view_week)),
        ButtonSegment(value: 'monthly', label: Text('Monthly'), icon: Icon(Icons.calendar_month)),
      ],
      selected: {_currentTimeframe},
      onSelectionChanged: (value) {
        setState(() {
          _currentTimeframe = value.first;
          _fetchData();
        });
      },
    );
  }

  Widget _buildTotalRevenueCard(dynamic total) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.success, Colors.green[800]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        boxShadow: [
          BoxShadow(
            color: AppColors.success.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total Revenue Generated',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 8),
          Text(
            '₹${total.toStringAsFixed(2)}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.trending_up, color: Colors.white, size: 14),
                SizedBox(width: 4),
                Text('Growth Stable', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(begin: 0.1);
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildServiceBreakdown(List byService) {
    if (byService.isEmpty) return const Text('No service data available');
    
    return Column(
      children: byService.map((s) {
        final name = s['service'] ?? 'Unknown';
        final rev = s['revenue'] ?? 0.0;
        final count = s['count'] ?? 0;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Icons.spa_outlined)),
            title: Text(name),
            subtitle: Text('$count sessions'),
            trailing: Text('₹$rev', style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.success)),
          ),
        ).animate().fadeIn().slideX();
      }).toList(),
    );
  }

  Widget _buildArtistBreakdown(List byArtist) {
    if (byArtist.isEmpty) return const Text('No artist data available');

    return Column(
      children: byArtist.map((a) {
        final name = a['artist_name'] ?? 'Artist';
        final rev = a['revenue'] ?? 0.0;
        final count = a['count'] ?? 0;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person_pin)),
            title: Text(name),
            subtitle: Text('$count bookings managed'),
            trailing: Text('₹$rev', style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary)),
          ),
        ).animate().fadeIn().slideX(delay: 100.ms);
      }).toList(),
    );
  }
}
