import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/planner_repository.dart';
import '../../bloc/planner_bloc.dart';
import '../../bloc/planner_event.dart';
import '../../bloc/planner_state.dart';

class SquadManagementScreen extends StatefulWidget {
  final String bookingId;
  final PlannerRepository repository;

  const SquadManagementScreen({
    super.key,
    required this.bookingId,
    required this.repository,
  });

  @override
  State<SquadManagementScreen> createState() => _SquadManagementScreenState();
}

class _SquadManagementScreenState extends State<SquadManagementScreen> {
  late Future<List<dynamic>> _squadsFuture;

  @override
  void initState() {
    super.initState();
    _refreshSquads();
  }

  void _refreshSquads() {
    setState(() {
      _squadsFuture = widget.repository.getSquads(widget.bookingId);
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
              _refreshSquads();
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Squad Management'),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: _refreshSquads,
              ),
            ],
          ),
          body: FutureBuilder<List<dynamic>>(
            future: _squadsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }

              final squads = snapshot.data ?? [];
              if (squads.isEmpty) {
                return const Center(child: Text('No squads formed for this event yet.'));
              }

              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: squads.length,
                itemBuilder: (context, index) {
                  final squad = squads[index];
                  return _SquadCard(squad: squad);
                },
              );
            },
          ),
          floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
              onPressed: () => _showCreateSquadDialog(context),
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }

  void _showCreateSquadDialog(BuildContext context) {
    final nameController = TextEditingController();
    String selectedRole = 'Makeup Artist';

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Create Squad'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Squad Name (e.g., Bride\'s Team)'),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedRole,
              decoration: const InputDecoration(labelText: 'Primary Role'),
              items: ['Makeup Artist', 'Hair Stylist', 'Draping Artist', 'Assistant']
                  .map((r) => DropdownMenuItem(value: r, child: Text(r)))
                  .toList(),
              onChanged: (v) => selectedRole = v!,
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(dialogContext), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty) {
                context.read<PlannerBloc>().add(PlannerEvent.createSquad(
                  widget.bookingId,
                  nameController.text,
                  selectedRole,
                ));
                Navigator.pop(dialogContext);
              }
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}

class _SquadCard extends StatelessWidget {
  final Map<String, dynamic> squad;

  const _SquadCard({required this.squad});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepOrange[100],
          child: const Icon(Icons.groups, color: Colors.deepOrange),
        ),
        title: Text(squad['name'] ?? 'Makeup Squad', style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${squad['artist_count'] ?? 0} Artists • ${squad['role'] ?? 'General'}'),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
