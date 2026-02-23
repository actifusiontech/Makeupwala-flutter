import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/features/subscription/bloc/subscription_bloc.dart';
import 'package:app/features/subscription/data/subscription_repository.dart';
import 'package:app/features/safety/presentation/screens/emergency_contacts_screen.dart';
import 'package:app/features/safety/bloc/safety_bloc.dart';
import 'package:app/features/booking/bloc/booking_bloc.dart';
import 'package:app/features/booking/data/booking_repository.dart';
import 'package:app/features/profile/bloc/profile_bloc.dart';
import 'package:app/features/artist/bloc/earnings_bloc.dart';
import 'package:app/features/artist/data/earnings_repository.dart';
import 'package:app/features/home/widgets/artist_stats_widget.dart';
import 'package:app/features/home/widgets/subscription_widget.dart';
import 'package:app/features/auth/bloc/auth_bloc.dart';
import 'package:app/features/safety/presentation/widgets/sos_button.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../wallet/presentation/screens/wallet_screen.dart';
import 'artist_menu_screen.dart';

class ArtistHomeScreen extends StatefulWidget {
  const ArtistHomeScreen({super.key});

  @override
  State<ArtistHomeScreen> createState() => _ArtistHomeScreenState();
}

class _ArtistHomeScreenState extends State<ArtistHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://api.makeupwallah.com/api/v1/makeupwala',
    ));

    final screens = [
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BookingBloc(repository: BookingRepository())
              ..add(const BookingEvent.fetchBookings(isArtist: true)),
          ),
          BlocProvider(
            create: (context) => ProfileBloc()..add(const ProfileEvent.fetchProfile(isArtist: true)),
          ),
          BlocProvider(
            create: (context) => EarningsBloc(repository: EarningsRepository(dio))
              ..add(const EarningsEvent.fetchEarningsStats()),
          ),
          BlocProvider(
            create: (context) => SubscriptionBloc(repository: SubscriptionRepository())
              ..add(const SubscriptionEvent.fetchMySubscription()),
          ),
        ],
        child: const _ArtistHomeView(),
      ),
      const WalletScreen(),
      const ArtistMenuScreen(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey400,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), activeIcon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), activeIcon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), activeIcon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}

class _ArtistHomeView extends StatelessWidget {
  const _ArtistHomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Artist Dashboard'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () => context.push('/chat'),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              switch (value) {
                case 'profile':
                  context.push('/profile');
                  break;
                case 'settings':
                  context.push('/profile/edit');
                  break;
                case 'faqs':
                  context.push('/complaints');
                  break;
                case 'logout':
                  context.read<AuthBloc>().add(const AuthEvent.logout());
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'profile',
                child: ListTile(
                  leading: Icon(Icons.person_outline),
                  title: Text('My Profile'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem<String>(
                value: 'settings',
                child: ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Settings'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuItem<String>(
                value: 'faqs',
                child: ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('FAQs & Support'),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'logout',
                child: ListTile(
                  leading: Icon(Icons.logout, color: AppColors.error),
                  title: Text('Logout', style: TextStyle(color: AppColors.error)),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<BookingBloc>().add(const BookingEvent.fetchBookings(isArtist: true));
              context.read<EarningsBloc>().add(const EarningsEvent.fetchEarningsStats());
              context.read<SubscriptionBloc>().add(const SubscriptionEvent.fetchMySubscription());
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => context.read<AuthBloc>().add(const AuthEvent.logout()),
          ),
        ],
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          return authState.maybeWhen(
            authenticated: (user) => ListView(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              children: [
                const SizedBox(height: AppSpacing.xl),
                  
                  // Premium Artist Hero Header
                  _buildArtistHeroHeader(user.fullName),
                  
                  const SizedBox(height: AppSpacing.xl),

                  Text('Your Performance', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: AppSpacing.md),
                  
                  BlocBuilder<EarningsBloc, EarningsState>(
                    builder: (context, earningsState) {
                      return earningsState.maybeWhen(
                        statsLoaded: (stats) => _buildPremiumStatsRow(stats.totalBookings, stats.totalEarnings),
                        loading: () => ShimmerLoaders.artistCard(),
                        orElse: () => _buildPremiumStatsRow(0, 0),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxl),

                  BlocBuilder<SubscriptionBloc, SubscriptionState>(
                    builder: (context, subState) {
                      final sub = subState.subscription;
                      return SubscriptionWidget(
                        planName: sub?['plan_name'] ?? 'Free',
                        bookingsUsed: sub?['bookings_used'] ?? 0,
                        bookingsLimit: sub?['max_bookings'] ?? 5,
                        contactsUsed: sub?['contacts_used'] ?? 0,
                        contactsLimit: sub?['max_contacts'] ?? 10,
                        onUpgrade: () => context.push('/subscription'),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  Text('Artist Toolbox', style: AppTypography.titleLarge.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: AppSpacing.md),
                  
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: AppSpacing.md,
                    crossAxisSpacing: AppSpacing.md,
                    childAspectRatio: 1.4,
                    children: [
                      _buildToolboxCard(
                        context,
                        'Inventory',
                        FontAwesomeIcons.suitcase,
                        AppColors.secondary,
                        () => context.push('/inventory'),
                      ),
                      _buildToolboxCard(
                        context,
                        'Availability',
                        FontAwesomeIcons.calendarCheck,
                        AppColors.primary,
                        () => context.push('/availability'),
                      ),
                      _buildToolboxCard(
                        context,
                        'Collaborations',
                        FontAwesomeIcons.handshake,
                        Colors.purple,
                        () => context.push('/campaign-explorer'),
                      ),
                      _buildToolboxCard(
                        context,
                        'Safety',
                        FontAwesomeIcons.shieldHeart,
                        Colors.red,
                        () => Navigator.push(context, MaterialPageRoute(builder: (_) => const EmergencyContactsScreen())),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: AppSpacing.xxl),
                  
                  // Portfolio Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Portfolio', style: AppTypography.titleLarge),
                      IconButton(
                        icon: const Icon(Icons.add_a_photo, color: AppColors.primary),
                        onPressed: () async {
                          final picker = ImagePicker();
                          final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                          
                          if (image != null && context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Uploading image...')),
                            );
                            
                            // Dispatch upload event
                            context.read<ProfileBloc>().add(ProfileEvent.uploadMedia(filePath: image.path));
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  
                  // Portfolio Images - NOW WITH REAL DATA
                  BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, profileState) {
                      return profileState.maybeWhen(
                        loaded: (profile, balance) {
                          final media = profile.media ?? [];
                          
                          if (media.isEmpty) {
                            return Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.grey100,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: AppColors.grey300),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.photo_library_outlined, 
                                      color: AppColors.grey400, size: 32),
                                    const SizedBox(height: 8),
                                    Text(
                                      'No portfolio images yet',
                                      style: AppTypography.bodySmall.copyWith(
                                        color: AppColors.grey500,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Tap the camera icon to add images',
                                      style: AppTypography.bodySmall.copyWith(
                                        color: AppColors.grey400,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          
                          return SizedBox(
                            height: 100,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: media.length,
                              separatorBuilder: (context, index) => 
                                const SizedBox(width: AppSpacing.md),
                              itemBuilder: (context, index) {
                                return _buildPortfolioItem(media[index]);
                              },
                            ),
                          );
                        },
                        loading: () => ShimmerLoaders.listTile(),
                        orElse: () => Container(
                          height: 100,
                          child: const Center(
                            child: Text('Unable to load portfolio'),
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: AppSpacing.xxl),
                  
                  Text(
                    'Recent Bookings',
                    style: AppTypography.titleLarge,
                  ),
                  const SizedBox(height: AppSpacing.md),

                  // Bookings List
                  BlocBuilder<BookingBloc, BookingState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => Column(
                          children: List.generate(3, (index) => ShimmerLoaders.bookingCard()),
                        ),
                        loaded: (bookings) {
                          if (bookings.isEmpty) {
                            return const Center(child: Text('No bookings yet'));
                          }
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: bookings.length,
                            itemBuilder: (context, index) {
                              final booking = bookings[index];
                              return _buildBookingCard(context, booking);
                            },
                          );
                        },
                        error: (message) => Center(child: Text('Error: $message')),
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
      floatingActionButton: const SOSButton(),
    );
  }

  Widget _buildArtistHeroHeader(String name) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
        image: const DecorationImage(
          image: AssetImage('assets/images/hero_artist.png'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.2),
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
                Text(
                  'Hello, $name',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ).animate().fadeIn().slideX(begin: -0.2),
                const SizedBox(height: 4),
                Text(
                  'You have 3 bookings today',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 14,
                  ),
                ).animate().fadeIn(delay: 200.ms),
                const SizedBox(height: AppSpacing.md),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        'Premium Artist',
                        style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ).animate().fadeIn(delay: 400.ms).scale(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumStatsRow(int bookings, double earnings) {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            'Total Bookings',
            bookings.toString(),
            FontAwesomeIcons.calendarCheck,
            AppColors.primary,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: _buildStatCard(
            'Total Earnings',
            '₹${earnings.toStringAsFixed(0)}',
            FontAwesomeIcons.wallet,
            AppColors.success,
          ),
        ),
      ],
    ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.1);
  }

  Widget _buildStatCard(String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        border: Border.all(color: AppColors.grey100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: FaIcon(icon, color: color, size: 16),
          ),
          const SizedBox(height: 12),
          Text(value, style: AppTypography.headlineSmall.copyWith(fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
          Text(label, style: AppTypography.labelSmall.copyWith(color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildToolboxCard(
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

  Widget _buildPortfolioItem(String url) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBookingCard(BuildContext context, Map<String, dynamic> booking) {
    final status = booking['status'] ?? 'pending';
    final date = booking['booking_date'] ?? 'Unknown Date';
    final time = booking['booking_time'] ?? 'Unknown Time';
    final customerName = booking['customer_name'] ?? 'Customer'; // Assuming backend sends this

    Color statusColor;
    switch (status) {
      case 'accepted':
        statusColor = AppColors.success;
        break;
      case 'rejected':
      case 'cancelled':
        statusColor = AppColors.error;
        break;
      default:
        statusColor = AppColors.warning;
    }

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(customerName, style: AppTypography.titleMedium),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    status.toUpperCase(),
                    style: AppTypography.bodySmall.copyWith(color: statusColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16, color: AppColors.textSecondary),
                const SizedBox(width: 4),
                Text('$date at $time', style: AppTypography.bodyMedium),
              ],
            ),
            if (status == 'pending') ...[
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<BookingBloc>().add(
                        BookingEvent.updateStatus(
                          bookingId: booking['id'],
                          status: 'rejected',
                          isArtist: true,
                        ),
                      );
                    },
                    child: const Text('Reject', style: TextStyle(color: AppColors.error)),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  ElevatedButton(
                    onPressed: () {
                      context.read<BookingBloc>().add(
                        BookingEvent.updateStatus(
                          bookingId: booking['id'],
                          status: 'accepted',
                          isArtist: true,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.success,
                      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                    ),
                    child: const Text('Accept', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
