import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/auth/bloc/auth_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/planner_repository.dart';
import '../../../../core/network/api_client.dart';

class PlannerHomeScreen extends StatefulWidget {
  const PlannerHomeScreen({super.key});

  @override
  State<PlannerHomeScreen> createState() => _PlannerHomeScreenState();
}

class _PlannerHomeScreenState extends State<PlannerHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      _PlannerDashboard(),
      const Center(child: Text("Squads")),    // Placeholder for Squad Management
      const Center(child: Text("Logistics")), // Placeholder for Travel/Visa
      const Center(child: Text("Escrow")),    // Placeholder for Payments
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Wedding Planner', style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
              context.go('/login');
            },
          ),
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Events'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Squads'),
          BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Logistics'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Escrow'),
        ],
      ),
    );
  }
}

class _PlannerDashboard extends StatefulWidget {
  @override
  State<_PlannerDashboard> createState() => _PlannerDashboardState();
}

class _PlannerDashboardState extends State<_PlannerDashboard> {
  late PlannerRepository _repo;
  Future<List<dynamic>>? _bookingsFuture;

  @override
  void initState() {
    super.initState();
    // In real app, use GetIt or Provider
    _repo = PlannerRepository(ApiClient()); // Assuming ApiClient singleton or provider
    _fetchData();
  }

  void _fetchData() {
    setState(() {
      _bookingsFuture = _repo.getMyDestinationBookings();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Active Weddings', style: AppTypography.headlineMedium),
            IconButton(icon: const Icon(Icons.refresh), onPressed: _fetchData),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        
        FutureBuilder<List<dynamic>>(
          future: _bookingsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            final list = snapshot.data ?? [];
            if (list.isEmpty) {
              return const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text("No weddings planned yet. Start a new one!"),
                ),
              );
            }

            return Column(
              children: list.map((item) {
                // item is Map<String, dynamic>
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _WeddingCard(
                    title: "${item['destination_city'] ?? 'Wedding'} Event",
                    date: item['event_start_date']?.toString().split('T')[0] ?? 'TBD',
                    location: item['destination_country'] ?? 'Unknown',
                    status: item['status'] ?? 'Draft',
                    progress: 0.3, // Mock progress for now
                  ),
                );
              }).toList(),
            );
          },
        ),

        const SizedBox(height: AppSpacing.lg),
        Text('Quick Actions', style: AppTypography.titleLarge),
        const SizedBox(height: 8),
        
        Row(
          children: [
             Expanded(
              child: _ActionCard(
                icon: Icons.add_circle,
                color: Colors.pink,
                label: 'New Wedding',
                onTap: () {
                   context.push('/planner/create-logistics').then((_) => _fetchData());
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _ActionCard(
                icon: Icons.person_add,
                color: Colors.blue,
                label: 'Add Artists',
                onTap: () {},
              ),
            ),
             const SizedBox(width: 12),
            Expanded(
              child: _ActionCard(
                icon: Icons.description,
                color: Colors.green,
                label: 'Visa Docs',
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _WeddingCard extends StatelessWidget {
  final String title;
  final String date;
  final String location;
  final String status;
  final double progress;

  const _WeddingCard({
    required this.title,
    required this.date,
    required this.location,
    required this.status,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(color: Colors.orange[100], borderRadius: BorderRadius.circular(8)),
                  child: Text(status, style: TextStyle(color: Colors.orange[800], fontSize: 12)),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                Text(date, style: const TextStyle(color: Colors.grey)),
                const SizedBox(width: 16),
                const Icon(Icons.location_on, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                Text(location, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(value: progress, backgroundColor: Colors.grey[200], color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  final VoidCallback onTap;

  const _ActionCard({required this.icon, required this.color, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.grey[50], // White background
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
