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
import 'planner_logistics_screen.dart';
import 'squad_management_screen.dart';
import 'escrow_payment_screen.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:ui';

class PlannerHomeScreen extends StatefulWidget {
  const PlannerHomeScreen({super.key});

  @override
  State<PlannerHomeScreen> createState() => _PlannerHomeScreenState();
}

class _PlannerHomeScreenState extends State<PlannerHomeScreen> {
  int _selectedIndex = 0;
  late PlannerRepository _repo;
  Future<List<dynamic>>? _bookingsFuture;

  @override
  void initState() {
    super.initState();
    _repo = PlannerRepository(ApiClient());
    _fetchData();
  }

  void _fetchData() {
    setState(() {
      _bookingsFuture = _repo.getMyDestinationBookings();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _bookingsFuture,
      builder: (context, snapshot) {
        final bookingId = (snapshot.hasData && snapshot.data!.isNotEmpty) ? snapshot.data!.first['id'] : null;

        final screens = [
          _PlannerDashboard(repo: _repo, bookingsFuture: _bookingsFuture, onRefresh: _fetchData),
          bookingId != null 
            ? SquadManagementScreen(bookingId: bookingId, repository: _repo)
            : const Center(child: Text("No Active Wedding Found")),
          bookingId != null 
            ? PlannerLogisticsScreen(bookingId: bookingId, repository: _repo)
            : const Center(child: Text("No Active Wedding Found")),
          bookingId != null 
            ? EscrowPaymentScreen(bookingId: bookingId, repository: _repo)
            : const Center(child: Text("No Active Wedding Found")),
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
    );
  }
}

class _PlannerDashboard extends StatelessWidget {
  final PlannerRepository repo;
  final Future<List<dynamic>>? bookingsFuture;
  final VoidCallback onRefresh;

  const _PlannerDashboard({
    required this.repo,
    required this.bookingsFuture,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      children: [
        const SizedBox(height: AppSpacing.xl),
        
        // Premium Planner Hero Header
        _buildPlannerHeroHeader(),
        
        const SizedBox(height: AppSpacing.xl),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Active Weddings', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
            IconButton(icon: const Icon(Icons.refresh, size: 18, color: AppColors.primary), onPressed: onRefresh),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        
        FutureBuilder<List<dynamic>>(
          future: bookingsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Column(
                children: List.generate(3, (index) => ShimmerLoaders.bookingCard()),
              );
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
                double calcProgress(String? status) {
                  switch (status?.toLowerCase()) {
                    case 'confirmed': return 0.2;
                    case 'in_progress': return 0.6;
                    case 'completed': return 1.0;
                    case 'draft': return 0.1;
                    default: return 0.3;
                  }
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _WeddingCard(
                    title: "${item['destination_city'] ?? 'Wedding'} Event",
                    date: item['event_start_date']?.toString().split('T')[0] ?? 'TBD',
                    location: item['destination_country'] ?? 'Unknown',
                    status: item['status'] ?? 'Draft',
                    progress: calcProgress(item['status']),
                  ),
                );
              }).toList(),
            );
          },
        ),

        const SizedBox(height: AppSpacing.xl),
        Text('Wedding Command Center', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: AppSpacing.md),
        
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          childAspectRatio: 1.4,
          children: [
            _buildCommandCard(
              context,
              'New Wedding',
              FontAwesomeIcons.calendarPlus,
              Colors.pink,
              () => context.push('/planner/create-logistics').then((_) => onRefresh()),
            ),
            _buildCommandCard(
              context,
              'Squad Builder',
              FontAwesomeIcons.usersGear,
              Colors.blue,
              () => context.push('/customer/home'),
            ),
            _buildCommandCard(
              context,
              'Logistics',
              FontAwesomeIcons.planeUp,
              Colors.indigo,
              () => context.push('/planner/logistics'),
            ),
            _buildCommandCard(
              context,
              'Escrow',
              FontAwesomeIcons.vault,
              Colors.green,
              () => context.push('/planner/escrow'),
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
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(title, style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold))),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    status.toUpperCase(),
                    style: TextStyle(color: Colors.deepOrange[700], fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey[600]),
                const SizedBox(width: 6),
                Text(date, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
                const SizedBox(width: 20),
                Icon(Icons.location_on_outlined, size: 14, color: Colors.grey[600]),
                const SizedBox(width: 6),
                Text(location, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Coordination Progress', style: AppTypography.bodySmall.copyWith(fontWeight: FontWeight.w600)),
                Text('${(progress * 100).toInt()}%', style: AppTypography.bodySmall.copyWith(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                backgroundColor: Colors.grey[100],
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildPlannerHeroHeader() {
  return Container(
    height: 180,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      image: const DecorationImage(
        image: AssetImage('assets/images/hero_planner.png'),
        fit: BoxFit.cover,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.deepOrange.withOpacity(0.2),
          blurRadius: 15,
          offset: const Offset(0, 8),
        ),
      ],
    ),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'DESTINATION EXPERT',
                  style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ).animate().fadeIn().scale(),
              const SizedBox(height: 8),
              const Text(
                'Wedding Command Center',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
              ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.2),
              const SizedBox(height: 4),
              Text(
                'Coordinating 4 active luxury events',
                style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14),
              ).animate().fadeIn(delay: 400.ms),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildCommandCard(
  BuildContext context,
  String title,
  IconData icon,
  Color color,
  VoidCallback onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        border: Border.all(color: AppColors.grey100),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: FaIcon(icon, color: color, size: 20),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: AppTypography.labelLarge.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
