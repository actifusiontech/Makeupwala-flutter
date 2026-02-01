import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../auth/bloc/auth_bloc.dart';
import '../search/bloc/search_bloc.dart';
import '../search/data/search_repository.dart';
import '../safety/presentation/widgets/sos_button.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(
        repository: SearchRepository(),
      ),
      child: const _CustomerHomeView(),
    );
  }
}

class _CustomerHomeView extends StatelessWidget {
  const _CustomerHomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('MakeUpWallah'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              context.push('/notifications');
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              context.push('/profile');
            },
          ),
        ],
      ),
      floatingActionButton: const SOSButton(),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          return authState.maybeWhen(
            authenticated: (user) => Padding(
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
                    'Find your perfect makeup artist',
                    style: AppTypography.bodyLarge.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xxl),
                  
                  // Search bar
                  TextField(
                    onChanged: (value) {
                      context.read<SearchBloc>().add(
                        SearchEvent.search(query: value),
                      );
                    },
                    decoration: InputDecoration(
                      hintText: 'Search for artists...',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: AppColors.grey100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  // Search Results or Quick Actions
                  Expanded(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, searchState) {
                        return searchState.when(
                          initial: () => _buildQuickActions(context),
                          loading: () => const Center(child: CircularProgressIndicator()),
                          empty: () => const Center(child: Text('No artists found')),
                          error: (message) => Center(child: Text('Error: $message')),
                          loaded: (results) => ListView.builder(
                            itemCount: results.length,
                            itemBuilder: (context, index) {
                              final artist = results[index];
                              return Card(
                                margin: const EdgeInsets.only(bottom: AppSpacing.md),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: artist['profile_image'] != null
                                        ? NetworkImage(artist['profile_image'])
                                        : null,
                                    child: artist['profile_image'] == null
                                        ? const Icon(Icons.person)
                                        : null,
                                  ),
                                  title: Text(artist['full_name'] ?? 'Unknown Artist'),
                                  subtitle: Text(artist['category'] ?? 'Makeup Artist'),
                                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                                  onTap: () {
                                    context.push('/artist/${artist['id']}', extra: artist);
                                  },
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return ListView(
      children: [
        _buildActionCard(
          context,
          'Browse Artists',
          'Discover top makeup artists',
          Icons.person_search,
          AppColors.primary,
        ),
        const SizedBox(height: AppSpacing.md),
        _buildActionCard(
          context,
          'My Bookings',
          'View your appointments',
          Icons.calendar_today,
          AppColors.info,
        ),
        const SizedBox(height: AppSpacing.md),
        _buildActionCard(
          context,
          'Favorites',
          'Your saved artists',
          Icons.favorite,
          AppColors.warning,
        ),
        const SizedBox(height: AppSpacing.md),
        _buildActionCard(
          context,
          'Subscription',
          'Manage your plan',
          Icons.card_membership,
          AppColors.success,
        ),
        _buildQuickActionCard(
          context,
          'Subscriptions',
          Icons.card_membership,
          AppColors.secondary,
          () => context.push('/subscription'),
        ),
        _buildQuickActionCard(
          context,
          'Book a Studio',
          Icons.store,
          AppColors.primary,
          () => context.push('/studios'),
        ),
        _buildQuickActionCard(
          context,
          'Global Retreats',
          Icons.flight_takeoff,
          Colors.teal,
          () => context.push('/travel/retreats'),
        ),
        _buildQuickActionCard(
          context,
          'Shop the Look',
          Icons.shopping_bag,
          Colors.pink,
          () => context.push('/discovery'),
        ),
        _buildQuickActionCard(
          context,
          'Learn Beauty Skills',
          Icons.school,
          Colors.orange,
          () => context.push('/education/courses'),
        ),
      ],
    );
  }

  Widget _buildActionCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: AppTypography.titleMedium,
        ),
        subtitle: Text(
          subtitle,
          style: AppTypography.bodySmall.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          if (title == 'Browse Artists') {
            // Focus search or navigate to full list
             context.read<SearchBloc>().add(const SearchEvent.search(query: '', category: null));
          } else if (title == 'My Bookings') {
            context.push('/bookings');
          } else if (title == 'Favorites') {
            // context.push('/favorites'); // TODO: Implement Favorites
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Favorites coming soon!')));
          } else if (title == 'Subscription') {
            context.push('/subscription');
          }
        },
      ),
    );
  }
  Widget _buildQuickActionCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.1),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: AppTypography.titleMedium,
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
