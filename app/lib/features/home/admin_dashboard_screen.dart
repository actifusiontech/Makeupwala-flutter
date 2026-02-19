import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../auth/bloc/auth_bloc.dart';
import 'data/admin_repository.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  late final AdminRepository _repository;
  late Future<Map<String, dynamic>> _statsFuture;

  @override
  void initState() {
    super.initState();
    _repository = AdminRepository();
    _refreshStats();
  }

  void _refreshStats() {
    setState(() {
      _statsFuture = _repository.getPlatformStats();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshStats,
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
              context.go('/login');
            },
          ),
        ],
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          return authState.maybeWhen(
            authenticated: (user) => FutureBuilder<Map<String, dynamic>>(
              future: _statsFuture,
              builder: (context, snapshot) {
                final stats = snapshot.data ?? {};
                final isLoading = snapshot.connectionState == ConnectionState.waiting;

                return Padding(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSpacing.xl),
                      
                      // Welcome section
                      Text(
                        'Welcome, ${user.fullName}!',
                        style: AppTypography.displaySmall,
                      ),
                      
                      const SizedBox(height: AppSpacing.sm),
                      
                      Text(
                        'Admin Panel - Platform Overview',
                        style: AppTypography.bodyLarge.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      
                      const SizedBox(height: AppSpacing.xxl),
                      
                      // Stats cards
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: AppSpacing.md,
                          mainAxisSpacing: AppSpacing.md,
                          children: [
                            _buildStatCard(
                              context,
                              'Users',
                              isLoading ? '...' : (stats['total_users']?.toString() ?? '0'),
                              Icons.people,
                              AppColors.primary,
                            ),
                            _buildStatCard(
                              context,
                              'Artists',
                              isLoading ? '...' : (stats['total_artists']?.toString() ?? '0'),
                              Icons.brush,
                              AppColors.info,
                            ),
                            _buildStatCard(
                              context,
                              'Bookings',
                              isLoading ? '...' : (stats['total_bookings']?.toString() ?? '0'),
                              Icons.calendar_today,
                              AppColors.warning,
                            ),
                            _buildStatCard(
                              context,
                              'Revenue',
                              isLoading ? '...' : '₹${stats['total_revenue'] ?? 0}',
                              Icons.attach_money,
                              AppColors.success,
                            ),
                            _buildStatCard(
                              context,
                              'Complaints',
                              'Manage',
                              Icons.report_problem,
                              AppColors.error,
                              onTap: () => context.push('/admin/complaints'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String title,
    String value,
    IconData icon,
    Color color, {
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: AppSpacing.sm),
              Text(
                value,
                style: AppTypography.headlineMedium.copyWith(color: color),
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                title,
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
