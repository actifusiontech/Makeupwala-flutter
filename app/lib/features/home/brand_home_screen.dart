import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth/bloc/auth_bloc.dart';
import 'data/brand_repository.dart';

class BrandHomeScreen extends StatefulWidget {
  const BrandHomeScreen({super.key});

  @override
  State<BrandHomeScreen> createState() => _BrandHomeScreenState();
}

class _BrandHomeScreenState extends State<BrandHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      _BrandDashboard(),
      const Center(child: Text("Inventory")), // Placeholder
      const Center(child: Text("Orders")),    // Placeholder
      const Center(child: Text("Profile")),   // Placeholder
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Brand Dashboard'),
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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Inventory'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class _BrandDashboard extends StatefulWidget {
  @override
  State<_BrandDashboard> createState() => _BrandDashboardState();
}

class _BrandDashboardState extends State<_BrandDashboard> {
  final _repository = BrandRepository();
  Map<String, dynamic>? _metrics;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchMetrics();
  }

  Future<void> _fetchMetrics() async {
    try {
      final data = await _repository.getDashboardMetrics();
      if (mounted) setState(() => _metrics = data);
    } catch (e) {
      // Use fallback/empty if real API fails (e.g. backend not ready)
      if (mounted) setState(() => _metrics = {}); 
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) return const Center(child: CircularProgressIndicator());
    
    final sales = _metrics?['total_sales'] ?? 0.0;
    final salesText = '₹ ${sales.toStringAsFixed(2)}';

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      children: [
        Text('Welcome, Partner!', style: AppTypography.headlineMedium),
        const SizedBox(height: AppSpacing.md),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text('Total Sales', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
                Text(salesText, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
