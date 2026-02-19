import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/planner_repository.dart';
import '../bloc/planner_bloc.dart';
import '../bloc/planner_event.dart';
import '../bloc/planner_state.dart';

class PlannerLogisticsScreen extends StatefulWidget {
  final String bookingId;
  final PlannerRepository repository;

  const PlannerLogisticsScreen({
    super.key,
    required this.bookingId,
    required this.repository,
  });

  @override
  State<PlannerLogisticsScreen> createState() => _PlannerLogisticsScreenState();
}

class _PlannerLogisticsScreenState extends State<PlannerLogisticsScreen> {
  late Future<List<dynamic>> _logisticsFuture;

  @override
  void initState() {
    super.initState();
    _refreshLogistics();
  }

  void _refreshLogistics() {
    setState(() {
      _logisticsFuture = widget.repository.getTravelLogistics(widget.bookingId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlannerBloc(repository: widget.repository),
      child: BlocListener<PlannerBloc, PlannerState>(
        listener: (context, state) {
          state.maybeWhen(
            actionSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
              _refreshLogistics();
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Artist Logistics'),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: _refreshLogistics,
              ),
            ],
          ),
          body: FutureBuilder<List<dynamic>>(
            future: _logisticsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              final list = snapshot.data ?? [];
              if (list.isEmpty) {
                return const Center(child: Text('No travel logistics found for this event.'));
              }

              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final item = list[index];
                  return _LogisticsCard(
                    item: item,
                    bookingId: widget.bookingId,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _LogisticsCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final String bookingId;

  const _LogisticsCard({required this.item, required this.bookingId});

  @override
  Widget build(BuildContext context) {
    final visaStatus = item['visa_status'] ?? 'Not Required';
    final flightStatus = item['flight_status'] ?? 'Not Booked';
    
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue[100],
                  child: const Icon(Icons.person, color: Colors.blue),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['artist_name'] ?? 'Professional Artist', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(item['role'] ?? 'Makeup Artist', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _StatusItem(
                  label: 'VISA',
                  status: visaStatus,
                  icon: Icons.badge,
                  onTap: () => _updateStatus(context, 'visa'),
                ),
                _StatusItem(
                  label: 'FLIGHT',
                  status: flightStatus,
                  icon: Icons.flight_takeoff,
                  onTap: () => _updateStatus(context, 'flight'),
                ),
                _StatusItem(
                  label: 'KIT',
                  status: item['kit_status'] ?? 'Ready',
                  icon: Icons.luggage,
                  onTap: () => _updateStatus(context, 'kit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _updateStatus(BuildContext context, String type) {
    // Show update dialog
    showDialog(
      context: context,
      builder: (dialogContext) => _UpdateStatusDialog(
        type: type,
        onUpdate: (value) {
          context.read<PlannerBloc>().add(PlannerEvent.updateLogisticsStatus(
            bookingId,
            item['id'] ?? 'unknown',
            type,
            value,
          ));
        },
      ),
    );
  }
}

class _StatusItem extends StatelessWidget {
  final String label;
  final String status;
  final IconData icon;
  final VoidCallback onTap;

  const _StatusItem({
    required this.label,
    required this.status,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 10, fontWeight: FontWeight.bold)),
          const SizedBox(height: 2),
          Text(status, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue)),
        ],
      ),
    );
  }
}

class _UpdateStatusDialog extends StatefulWidget {
  final String type;
  final Function(String) onUpdate;

  const _UpdateStatusDialog({required this.type, required this.onUpdate});

  @override
  State<_UpdateStatusDialog> createState() => _UpdateStatusDialogState();
}

class _UpdateStatusDialogState extends State<_UpdateStatusDialog> {
  String _selectedValue = '';

  @override
  void initState() {
    super.initState();
    _selectedValue = _getOptions().first;
  }

  List<String> _getOptions() {
    switch (widget.type) {
      case 'visa':
        return ['Not Required', 'Pending', 'Approved', 'Rejected'];
      case 'flight':
        return ['Not Booked', 'Booked', 'Checked In'];
      case 'kit':
        return ['Ready', 'In Transit', 'Arrived', 'Missing Items'];
      default:
        return ['Pending', 'Completed'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Update ${widget.type.toUpperCase()} Status'),
      content: DropdownButtonFormField<String>(
        value: _selectedValue,
        items: _getOptions().map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
        onChanged: (v) => setState(() => _selectedValue = v!),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        ElevatedButton(
          onPressed: () {
            widget.onUpdate(_selectedValue);
            Navigator.pop(context);
          },
          child: const Text('Update'),
        ),
      ],
    );
  }
}
