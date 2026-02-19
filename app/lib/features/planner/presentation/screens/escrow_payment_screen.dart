import 'package:flutter/material.dart';
import '../data/planner_repository.dart';

class EscrowPaymentScreen extends StatefulWidget {
  final String bookingId;
  final PlannerRepository repository;

  const EscrowPaymentScreen({
    super.key,
    required this.bookingId,
    required this.repository,
  });

  @override
  State<EscrowPaymentScreen> createState() => _EscrowPaymentScreenState();
}

class _EscrowPaymentScreenState extends State<EscrowPaymentScreen> {
  late Future<Map<String, dynamic>> _escrowFuture;

  @override
  void initState() {
    super.initState();
    _refreshEscrow();
  }

  void _refreshEscrow() {
    setState(() {
      _escrowFuture = widget.repository.getEscrowStatus(widget.bookingId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escrow Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshEscrow,
          ),
        ],
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _escrowFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final data = snapshot.data ?? {};
          if (data.isEmpty) {
            return const Center(child: Text('Escrow details not available.'));
          }

          final total = (data['total_escrow_amount'] ?? 0.0).toDouble();
          final released = (data['released_amount'] ?? 0.0).toDouble();
          final pending = total - released;
          
          final milestones = data['milestones'] as List<dynamic>? ?? [];

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _SummaryCard(
                title: 'Total Escrow',
                amount: total,
                color: Colors.blue,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _SummaryCard(
                      title: 'Released',
                      amount: released,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _SummaryCard(
                      title: 'Pending',
                      amount: pending,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text('Payment milestones', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(height: 12),
              if (milestones.isEmpty)
                const Text('No milestones defined.', style: TextStyle(color: Colors.grey)),
              
              ...milestones.map((m) => _MilestoneTile(
                title: m['title'] ?? 'Milestone',
                amount: (m['amount'] ?? 0.0).toDouble(),
                status: m['status'] ?? 'Pending',
                isCompleted: m['status'] == 'Released',
              )),
            ],
          );
        },
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String title;
  final double amount;
  final Color color;

  const _SummaryCard({required this.title, required this.amount, required this.color});

  @override
  Widget build(BuildContext context) {
    // Handling double precision for display
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(title, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
            const SizedBox(height: 8),
            Text('₹${amount.toStringAsFixed(0)}', style: TextStyle(color: color, fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

class _MilestoneTile extends StatelessWidget {
  final String title;
  final double amount;
  final String status;
  final bool isCompleted;

  const _MilestoneTile({
    required this.title,
    required this.amount,
    required this.status,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
        color: isCompleted ? Colors.green : Colors.grey,
      ),
      title: Text(title),
      subtitle: Text('₹${amount.toStringAsFixed(0)}'),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: isCompleted ? Colors.green[50] : Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          status,
          style: TextStyle(
            color: isCompleted ? Colors.green[800] : Colors.grey[800],
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
