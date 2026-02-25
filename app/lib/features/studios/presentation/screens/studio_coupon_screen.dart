import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/marketing/studio_coupon_bloc.dart';

class StudioCouponScreen extends StatefulWidget {
  final String studioId;

  const StudioCouponScreen({super.key, required this.studioId});

  @override
  State<StudioCouponScreen> createState() => _StudioCouponScreenState();
}

class _StudioCouponScreenState extends State<StudioCouponScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StudioCouponBloc>().add(StudioCouponEvent.fetchCoupons(widget.studioId));
  }

  void _showAddCouponDialog() {
    final codeController = TextEditingController();
    final valueController = TextEditingController();
    String discountType = 'PERCENTAGE';

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Create New Coupon'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: codeController,
                  decoration: const InputDecoration(labelText: 'Coupon Code (e.g. FESTIVE20)'),
                  textCapitalization: TextCapitalization.characters,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: discountType,
                  decoration: const InputDecoration(labelText: 'Discount Type'),
                  items: const [
                    DropdownMenuItem(value: 'PERCENTAGE', child: Text('Percentage (%)')),
                    DropdownMenuItem(value: 'FIXED', child: Text('Fixed Amount (₹)')),
                  ],
                  onChanged: (val) => setDialogState(() => discountType = val!),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: valueController,
                  decoration: const InputDecoration(labelText: 'Value'),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
            ElevatedButton(
              onPressed: () {
                final value = double.tryParse(valueController.text) ?? 0.0;
                context.read<StudioCouponBloc>().add(
                  StudioCouponEvent.createCoupon(widget.studioId, {
                    'code': codeController.text,
                    'discount_type': discountType,
                    'value': value,
                    'expiry_date': DateTime.now().add(const Duration(days: 30)).toIso8601String(),
                  }),
                );
                Navigator.pop(context);
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupons & Marketing'),
        backgroundColor: Colors.purple[700],
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<StudioCouponBloc, StudioCouponState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            couponsLoaded: (coupons) => _buildContentView(coupons),
            orElse: () => const Center(child: Text('Loading marketing tools...')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddCouponDialog,
        icon: const Icon(Icons.add),
        label: const Text('New Coupon'),
        backgroundColor: Colors.purple[700],
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildContentView(List coupons) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      children: [
        _buildRemindersCard(),
        const SizedBox(height: AppSpacing.xl),
        Text('Active Coupons', style: AppTypography.titleLarge),
        const SizedBox(height: AppSpacing.md),
        if (coupons.isEmpty)
          const Center(child: Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0),
            child: Text('No coupons created yet.'),
          ))
        else
          ...coupons.map((c) => _buildCouponCard(c)),
      ],
    );
  }

  Widget _buildRemindersCard() {
    return Card(
      color: Colors.purple[50],
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: Colors.purple[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            const Icon(Icons.notifications_active_outlined, size: 48, color: Colors.purple),
            const SizedBox(height: AppSpacing.md),
            Text(
              'Automated Re-booking Reminders',
              style: AppTypography.titleMedium.copyWith(color: Colors.purple[900]),
            ),
            const SizedBox(height: 8),
            const Text(
              'Notify customers who haven\'t visited in 30 days. Send them a nudge to book their next appointment.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<StudioCouponBloc>().add(StudioCouponEvent.triggerReminders(widget.studioId));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: const Text('Trigger Reminders Now', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCouponCard(dynamic coupon) {
    final code = coupon['code'] ?? 'UNK';
    final type = coupon['discount_type'] ?? 'PERCENTAGE';
    final value = coupon['value'] ?? 0;
    final suffix = type == 'PERCENTAGE' ? '%' : ' OFF';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const Icon(Icons.confirmation_num_outlined, color: Colors.purple),
        title: Text(code, style: const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
        subtitle: Text('$value$suffix - Active'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14),
      ),
    );
  }
}
