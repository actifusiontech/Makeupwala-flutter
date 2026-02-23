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
import '../safety/presentation/screens/emergency_contacts_screen.dart';

import 'package:app/features/discovery/data/discovery_repository.dart';
import 'package:app/features/discovery/presentation/bloc/discovery_bloc.dart';
import 'package:app/features/discovery/presentation/bloc/discovery_state.dart';
import 'package:app/features/discovery/presentation/bloc/discovery_event.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(
            repository: SearchRepository(),
          ),
        ),
        BlocProvider(
          create: (context) => DiscoveryBloc(
            repository: DiscoveryRepository(),
          )..add(const DiscoveryEvent.fetchRecommendations()),
        ),
      ],
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
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset('assets/images/splash_logo.png', height: 32),
            ),
            const SizedBox(width: AppSpacing.sm),
            const Text('MakeupWallah'),
          ],
        ),
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
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.screenPadding),
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: AppSpacing.xl),
                        
                        // Premium Hero Section
                        _buildPremiumHero(),
                        
                        const SizedBox(height: AppSpacing.xl),
                        
                        // Personalized Welcome
                        Text(
                          'Welcome, ${user.fullName}!',
                          style: AppTypography.displaySmall.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                          ),
                        ).animate().fadeIn(duration: 600.ms).slideX(begin: -0.1),
                        
                        Text(
                          'Find your perfect makeup artist',
                          style: AppTypography.bodyLarge.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ).animate().fadeIn(delay: 200.ms, duration: 600.ms),
                        
                        const SizedBox(height: AppSpacing.xl),
                        
                        // Search bar (Elevated)
                        _buildElevatedSearchBar(context),
                        
                        const SizedBox(height: AppSpacing.xl),

                        // AI Personalization CTA
                        _buildPersonalizationCTA(context),

                        const SizedBox(height: AppSpacing.xl),
                      ],
                    ),
                  ),
                  
                  // Content area
                  SliverFillRemaining(
                    hasScrollBody: true,
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, searchState) {
                        return searchState.when(
                          initial: () => _buildHomeContent(context),
                          loading: () => ListView.builder(
                            padding: const EdgeInsets.all(AppSpacing.md),
                            itemCount: 4,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (_, __) => Padding(
                              padding: const EdgeInsets.only(bottom: AppSpacing.md),
                              child: ShimmerLoaders.artistCard(),
                            ),
                          ),
                          empty: () => const Center(child: Text('No artists found')),
                          error: (message) => Center(child: Text('Error: $message')),
                          loaded: (results) => ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: results.length,
                            itemBuilder: (context, index) {
                              final artist = results[index];
                              return _buildArtistResultCard(context, artist);
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

  Widget _buildPremiumHero() {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        image: const DecorationImage(
          image: AssetImage('assets/images/hero_customer.png'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'TRENDING LOOKS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ).animate().fadeIn(delay: 400.ms).scale(),
                const SizedBox(height: AppSpacing.sm),
                const Text(
                  'Get Red Carpet Ready\nwith Top Artists',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalizationCTA(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        border: Border.all(color: AppColors.primary.withOpacity(0.1)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Personalize Your Feed',
                  style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Set your skin tone and style to get better AI recommendations.',
                  style: GoogleFonts.lato(fontSize: 12, color: Colors.grey[600]),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () => context.push('/beauty-profile-quiz'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text('Take Quiz', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
            ),
            child: const Icon(Icons.auto_awesome, color: AppColors.primary, size: 30),
          ).animate(onPlay: (controller) => controller.repeat())
           .shimmer(duration: 2.seconds, color: Colors.pink[100])
           .scale(duration: 1.seconds, begin: const Offset(0.9, 0.9), end: const Offset(1.1, 1.1)),
        ],
      ),
    );
  }

  Widget _buildElevatedSearchBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {
          context.read<SearchBloc>().add(
            SearchEvent.search(query: value),
          );
        },
        decoration: InputDecoration(
          hintText: 'Search for artists, styles...',
          hintStyle: TextStyle(color: AppColors.grey400),
          prefixIcon: const Icon(Icons.search, color: AppColors.primary),
          suffixIcon: const Icon(Icons.tune, color: AppColors.primary),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildArtistResultCard(BuildContext context, dynamic artist) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(AppSpacing.sm),
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primary.withOpacity(0.2), width: 2),
          ),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: artist['profile_image'] != null
                ? NetworkImage(artist['profile_image'])
                : null,
            child: artist['profile_image'] == null
                ? const Icon(Icons.person, color: AppColors.primary)
                : null,
          ),
        ),
        title: Text(
          artist['full_name'] ?? 'Unknown Artist',
          style: AppTypography.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(artist['category'] ?? 'Makeup Artist', style: AppTypography.bodySmall),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 14),
                const SizedBox(width: 4),
                Text('4.9 (120 reviews)', style: AppTypography.labelSmall),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right, color: AppColors.grey400),
        onTap: () {
          context.push('/artist/${artist['id']}', extra: artist);
        },
      ),
    );
  }

  Widget _buildHomeContent(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        // Shop the Look Section
        _buildShopTheLookSection(context),
        
        const SizedBox(height: AppSpacing.xl),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Quick Access', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
            const Icon(Icons.grid_view_rounded, size: 20, color: AppColors.primary),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          childAspectRatio: 1.5,
          children: [
            _buildPremiumActionCard(
              context,
              'Artists',
              FontAwesomeIcons.userAstronaut,
              AppColors.primary,
              () => context.read<SearchBloc>().add(const SearchEvent.search(query: '')),
            ),
            _buildPremiumActionCard(
              context,
              'Bookings',
              FontAwesomeIcons.calendarCheck,
              AppColors.info,
              () => context.push('/bookings'),
            ),
            _buildPremiumActionCard(
              context,
              'Studios',
              FontAwesomeIcons.houseUser,
              AppColors.secondary,
              () => context.push('/studios'),
            ),
            _buildPremiumActionCard(
              context,
              'Retreats',
              FontAwesomeIcons.planeDeparture,
              Colors.teal,
              () => context.push('/travel/retreats'),
            ),
          ],
        ),
        
        const SizedBox(height: AppSpacing.xl),
        
        // Newsletter / Promotion Card
        _buildPromotionCard(),
        
        const SizedBox(height: 100),
      ],
    );
  }

  Widget _buildPremiumActionCard(
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

  Widget _buildPromotionCard() {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primary.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Exclusive Membership',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  'Get 20% off on all studio bookings',
                  style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 12),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  ),
                  child: const Text('JOIN NOW', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          const FaIcon(FontAwesomeIcons.crown, color: Colors.white24, size: 60),
        ],
      ),
    );
  }
  Widget _buildShopTheLookSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop the Look', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () => context.push('/discovery'),
              child: const Text('View All'),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        SizedBox(
          height: 200,
          child: BlocBuilder<DiscoveryBloc, DiscoveryState>(
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (c, i) => const SizedBox(width: AppSpacing.md),
                  itemBuilder: (_, __) => ShimmerLoaders.artistCard(),
                ),
                recommendationsLoaded: (looks) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: looks.length,
                    separatorBuilder: (c, i) => const SizedBox(width: AppSpacing.md),
                    itemBuilder: (context, index) {
                      final look = looks[index];
                      return GestureDetector(
                        onTap: () => context.push('/discovery'),
                        child: Container(
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
                            image: DecorationImage(
                              image: NetworkImage(look['URL'] ?? ''),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                                    ),
                                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(AppSpacing.radiusMd)),
                                  ),
                                  child: Text(
                                    look['Caption'] ?? '',
                                    style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                orElse: () => const Center(child: Text('No looks available')),
              );
            },
          ),
        ),
      ],
    );
  }
}
