import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/membership/studio_membership_bloc.dart';
import 'package:intl/intl.dart';

class StudioMembershipScreen extends StatefulWidget {
  final String studioId;

  const StudioMembershipScreen({super.key, required this.studioId});

  @override
  State<StudioMembershipScreen> createState() => _StudioMembershipScreenState();
}

class _StudioMembershipScreenState extends State<StudioMembershipScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StudioMembershipBloc>().add(StudioMembershipEvent.fetchPlans(widget.studioId));
  }

  void _showAddPlanDialog() {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    final priceController = TextEditingController();
    final durationController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Membership Plan'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Plan Name (e.g. Gold)'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(labelText: 'Price (₹)'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: durationController,
                decoration: const InputDecoration(labelText: 'Duration (Days)'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final price = double.tryParse(priceController.text) ?? 0.0;
              final duration = int.tryParse(durationController.text) ?? 30;
              context.read<StudioMembershipBloc>().add(
                StudioMembershipEvent.createPlan(widget.studioId, {
                  'name': nameController.text,
                  'description': descController.text,
                  'price': price,
                  'duration_days': duration,
                  'is_active': true,
                }),
              );
              Navigator.pop(context);
            },
            child: const Text('Create Plan'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memberships & Plans'),
        backgroundColor: Colors.amber[700],
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<StudioMembershipBloc, StudioMembershipState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

          return Stack(
            children: [
              _buildPlansList(state),
              if (isLoading) const Center(child: CircularProgressIndicator()),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddPlanDialog,
        icon: const Icon(Icons.add),
        label: const Text('New Plan'),
        backgroundColor: Colors.amber[700],
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildPlansList(StudioMembershipState state) {
    return state.maybeWhen(
      plansLoaded: (plans) {
        if (plans.isEmpty) {
          return const Center(child: Text('No membership plans created yet.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: plans.length,
          itemBuilder: (context, index) {
            final plan = plans[index];
            final price = plan['price'] ?? 0.0;
            final duration = plan['duration_days'] ?? 0;

            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber[100],
                  child: const Icon(Icons.card_membership, color: Colors.amber),
                ),
                title: Text(plan['name'], style: AppTypography.titleMedium),
                subtitle: Text('${plan['description']}\n₹$price • $duration Days'),
                trailing: const Icon(Icons.chevron_right),
                isThreeLine: true,
                onTap: () {
                  // TODO: Membership assignment or details
                },
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Loading Plans...')),
    );
  }
}
