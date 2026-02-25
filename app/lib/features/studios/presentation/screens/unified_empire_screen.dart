import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/unified/unified_empire_bloc.dart';

class UnifiedEmpireScreen extends StatefulWidget {
  final String studioId;
  final String instituteId;

  const UnifiedEmpireScreen({
    super.key,
    required this.studioId,
    required this.instituteId,
  });

  @override
  State<UnifiedEmpireScreen> createState() => _UnifiedEmpireScreenState();
}

class _UnifiedEmpireScreenState extends State<UnifiedEmpireScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UnifiedEmpireBloc>().add(UnifiedEmpireEvent.fetchStats(
      studioId: widget.studioId,
      instituteId: widget.instituteId,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Unified Empire Dashboard'),
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => context.read<UnifiedEmpireBloc>().add(UnifiedEmpireEvent.fetchStats(
              studioId: widget.studioId,
              instituteId: widget.instituteId,
            )),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: BlocBuilder<UnifiedEmpireBloc, UnifiedEmpireState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text('Error: $message')),
            loaded: (studioStats, academyStats) => _buildDashboard(studioStats, academyStats),
          );
        },
      ),
    );
  }

  Widget _buildDashboard(Map<String, dynamic> studio, Map<String, dynamic> academy) {
    final studioRevenue = studio['revenue_today']?.toDouble() ?? 0.0;
    final academyRevenue = academy['revenue']?.toDouble() ?? 0.0;
    final totalRevenue = studioRevenue + academyRevenue;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildGrandTotalHeader(totalRevenue),
          const SizedBox(height: AppSpacing.lg),
          Text('Business Units', style: AppTypography.headlineSmall),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              Expanded(child: _buildEmpireCard(
                title: 'Professional Studio',
                subtitle: 'Daily Operations',
                metrics: [
                  _Metric('Revenue Today', '₹$studioRevenue'),
                  _Metric('Bookings', '${studio['bookings_today']}'),
                  _Metric('Active Seats', '${studio['active_seats']}'),
                ],
                color: Colors.pink[700]!,
                icon: Icons.brush_outlined,
              )),
              const SizedBox(width: AppSpacing.md),
              Expanded(child: _buildEmpireCard(
                title: 'Training Academy',
                subtitle: 'Enrollment Metrics',
                metrics: [
                  _Metric('Total Revenue', '₹$academyRevenue'),
                  _Metric('Active Students', '${academy['students_count']}'),
                  _Metric('Batches', '${academy['batches_count']}'),
                ],
                color: Colors.teal[700]!,
                icon: Icons.school_outlined,
              )),
            ],
          ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.1),
          const SizedBox(height: AppSpacing.xl),
          _buildQuickActions(),
        ],
      ),
    );
  }

  Widget _buildGrandTotalHeader(double total) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo[900]!, Colors.indigo[600]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.indigo.withOpacity(0.3), blurRadius: 10, offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        children: [
          const Text('COMBINED REVENUE (ESTIMATED)', style: TextStyle(color: Colors.white70, letterSpacing: 1.2, fontSize: 12)),
          const SizedBox(height: 8),
          Text(
            '₹$total',
            style: AppTypography.displayMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Managing ${DateTime.now().year} Empire',
            style: const TextStyle(color: Colors.white60, fontSize: 14),
          ),
        ],
      ),
    ).animate().scale(delay: 200.ms);
  }

  Widget _buildEmpireCard({
    required String title,
    required String subtitle,
    required List<_Metric> metrics,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(color: color.withOpacity(0.05), blurRadius: 8, offset: const Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 8),
              Expanded(child: Text(title, style: AppTypography.titleMedium?.copyWith(fontWeight: FontWeight.bold))),
            ],
          ),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const Divider(height: 24),
          ...metrics.map((m) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(m.label, style: const TextStyle(fontSize: 12, color: Colors.black54)),
                Text(m.value, style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Empire Actions', style: AppTypography.titleLarge),
        const SizedBox(height: AppSpacing.md),
        _ActionTile(label: 'Global Promotion', icon: Icons.campaign_outlined, color: Colors.orange[800]!),
        _ActionTile(label: 'Staff Payroll Review', icon: Icons.payments_outlined, color: Colors.blue[800]!),
        _ActionTile(label: 'Cross-Unit Discounting', icon: Icons.loyalty_outlined, color: Colors.purple[800]!),
      ],
    );
  }
}

class _Metric {
  final String label;
  final String value;
  _Metric(this.label, this.value);
}

class _ActionTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const _ActionTile({required this.label, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(label),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}
