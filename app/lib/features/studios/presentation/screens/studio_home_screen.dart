import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/auth/bloc/auth_bloc.dart';
import '../../data/studio_repository.dart';
import '../../../../core/network/api_client.dart';
import 'studio_management_bookings_screen.dart';
import 'studio_seats_screen.dart';
import 'studio_profile_screen.dart';
import '../../data/models/studio_model.dart';

class StudioHomeScreen extends StatefulWidget {
  const StudioHomeScreen({super.key});

  @override
  State<StudioHomeScreen> createState() => _StudioHomeScreenState();
}

class _StudioHomeScreenState extends State<StudioHomeScreen> {
  int _selectedIndex = 0;
  late StudioRepository _repo;
  Future<List<dynamic>>? _studiosFuture;
  Map<String, dynamic> _stats = {};

  @override
  void initState() {
    super.initState();
    _repo = StudioRepository();
    _fetchData();
  }

  void _fetchData() async {
    setState(() {
      _studiosFuture = _repo.getMyStudios();
    });

    final snapshots = await _repo.getMyStudios();
    if (snapshots.isNotEmpty) {
      final id = snapshots.first['id'];
      if (id != null) {
        final stats = await _repo.getStudioStats(id);
        if (mounted) {
          setState(() {
            _stats = stats;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _studiosFuture,
      builder: (context, snapshot) {
        final studioId = (snapshot.hasData && snapshot.data!.isNotEmpty) ? snapshot.data!.first['id'] : null;

        final screens = [
          _StudioDashboard(repo: _repo, studiosFuture: _studiosFuture, stats: _stats, onRefresh: _fetchData),
          studioId != null 
            ? StudioManagementBookingsScreen(studioId: studioId, repository: _repo)
            : const Center(child: Text("No Studio Found")),
          studioId != null 
            ? StudioSeatsScreen(studioId: studioId, repository: _repo)
            : const Center(child: Text("No Studio Found")),
          studioId != null 
            ? StudioProfileScreen(studioId: studioId, repository: _repo)
            : const Center(child: Text("No Studio Found")),
        ];

        return Scaffold(
          appBar: AppBar(
            title: const Text('Studio Dashboard'),
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
            selectedItemColor: Colors.pink,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Overview'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Bookings'),
              BottomNavigationBarItem(icon: Icon(Icons.chair), label: 'Seats'),
              BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Profile'),
            ],
          ),
        );
      }
    );
  }
}

class _StudioDashboard extends StatelessWidget {
  final StudioRepository repo;
  final Future<List<dynamic>>? studiosFuture;
  final Map<String, dynamic> stats;
  final VoidCallback onRefresh;

  const _StudioDashboard({
    required this.repo,
    required this.studiosFuture,
    required this.stats,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Welcome, Studio Manager!', style: AppTypography.headlineMedium),
            IconButton(icon: const Icon(Icons.refresh), onPressed: onRefresh),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        
        FutureBuilder<List<dynamic>>(
          future: studiosFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            final studio = (snapshot.hasData && snapshot.data!.isNotEmpty) ? snapshot.data!.first : <String, dynamic>{};
            // ... (keep existing loading/empty logic)
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (studio.isEmpty) {
               return const Center(child: Padding(
                 padding: EdgeInsets.all(16.0),
                 child: Text("No Studio registered. Please contact support."),
               ));
            }

            return Column(
              children: [
                   // ... (Keep Header)
                   Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.pink[50], borderRadius: BorderRadius.circular(12)),
                    child: Row(children: [
                      const Icon(Icons.store, size: 40, color: Colors.pink),
                      const SizedBox(width: 16),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(studio['name'] ?? 'My Studio', style: AppTypography.titleLarge),
                        Text(studio['city'] ?? '', style: AppTypography.bodySmall),
                      ]),
                    ]),
                   ),
                   const SizedBox(height: 16),
                   
                   // Real Stats
                  Row(
                    children: [ 
                      Expanded(child: _StatCard(title: 'Active Seats', value: stats['active_seats']?.toString() ?? 'Checking...', color: Colors.blue)),
                      const SizedBox(width: 8),
                      Expanded(child: _StatCard(title: 'Today\'s Bookings', value: stats['bookings_today']?.toString() ?? '0', color: Colors.green)),
                    ],
                  ),
                   const SizedBox(height: 8),
                   Row(
                    children: [
                      Expanded(child: _StatCard(title: 'Revenue Today', value: '₹${stats['revenue_today'] ?? 0}', color: Colors.purple)),
                    ],
                   ),
              ],
            );
          },
        ),

        // Removed the outer Row which was hardcoded. Now it's inside the FutureBuilder.
        
        const SizedBox(height: AppSpacing.lg),
        Text('Quick Actions', style: AppTypography.titleLarge),
        const SizedBox(height: 8),
        ListTile(
          leading: const Icon(Icons.add_a_photo, color: Colors.orange),
          title: const Text('Update Gallery'),
          subtitle: const Text('Add new photos of your facility'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person_add, color: Colors.pink),
          title: const Text('Add Team Member'),
          subtitle: const Text('Register a new beautician'),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            // Scroll to profile or switch tab
             ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(content: Text('Switching to Profile tab for Team Management...')),
             );
          },
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const _StatCard({required this.title, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(title, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
            const SizedBox(height: 8),
            Text(value, style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
