import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';
import '../../bloc/commissions/staff_commission_bloc.dart';
import 'package:intl/intl.dart';

class StudioCommissionScreen extends StatefulWidget {
  final String studioId;

  const StudioCommissionScreen({super.key, required this.studioId});

  @override
  State<StudioCommissionScreen> createState() => _StudioCommissionScreenState();
}

class _StudioCommissionScreenState extends State<StudioCommissionScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StaffCommissionBloc>().add(StaffCommissionEvent.fetchCommissions(widget.studioId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Commissions'),
        backgroundColor: Colors.blueGrey[800],
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<StaffCommissionBloc, StaffCommissionState>(
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
            commissionsLoaded: (commissions) => _buildCommissionsList(commissions),
            orElse: () => const Center(child: Text('Loading commission logs...')),
          );
        },
      ),
    );
  }

  Widget _buildCommissionsList(List commissions) {
    if (commissions.isEmpty) {
      return const Center(child: Text('No commissions logged yet.'));
    }

    final pending = commissions.where((c) => c['status'] == 'PENDING').toList();
    final paid = commissions.where((c) => c['status'] == 'PAID').toList();

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            labelColor: AppColors.primary,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Paid'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildListView(pending),
                _buildListView(paid),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(List items) {
    if (items.isEmpty) return const Center(child: Text('Empty'));

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final comm = items[index];
        final amount = comm['amount'] ?? 0.0;
        final date = DateTime.parse(comm['created_at']);
        final isPending = comm['status'] == 'PENDING';

        return Card(
          elevation: 2,
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: isPending ? Colors.orange[100] : Colors.green[100],
              child: Icon(
                isPending ? Icons.pending_actions : Icons.check_circle_outline,
                color: isPending ? Colors.orange : Colors.green,
              ),
            ),
            title: Text('Commission: ₹$amount', style: AppTypography.titleMedium),
            subtitle: Text('ID: ${comm['id'].toString().substring(0, 8)} • ${DateFormat.yMMMd().format(date)}'),
            trailing: isPending
                ? ElevatedButton(
                    onPressed: () => _confirmPayment(comm['id']),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    child: const Text('Pay', style: TextStyle(color: Colors.white)),
                  )
                : const Text('Paid', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          ),
        );
      },
    );
  }

  void _confirmPayment(String commId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Settlement'),
        content: const Text('Are you sure you want to mark this commission as paid?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              context.read<StaffCommissionBloc>().add(StaffCommissionEvent.markPaid(commId, widget.studioId));
              Navigator.pop(context);
            },
            child: const Text('Settle'),
          ),
        ],
      ),
    );
  }
}
