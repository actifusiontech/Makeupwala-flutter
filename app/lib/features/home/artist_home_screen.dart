import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import '../auth/bloc/auth_bloc.dart';
import '../booking/bloc/booking_bloc.dart';
import '../profile/bloc/profile_bloc.dart';
import '../booking/data/booking_repository.dart';
import '../artist/bloc/earnings_bloc.dart';
import '../artist/data/earnings_repository.dart';
import 'widgets/artist_stats_widget.dart';
import 'widgets/subscription_widget.dart';

class ArtistHomeScreen extends StatelessWidget {
  const ArtistHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get Dio instance from context or create one
    final dio = Dio(BaseOptions(
      baseUrl: 'https://api.makeupwallah.com/api/v1/makeupwala',
    ));

    return MultiBlocProvider(
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
      ],
      child: const _ArtistHomeView(),
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
            onPressed: () {
              context.push('/chat');
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {
              context.push('/profile'); 
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<BookingBloc>().add(const BookingEvent.fetchBookings(isArtist: true));
              context.read<EarningsBloc>().add(const EarningsEvent.fetchEarningsStats());
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
            },
          ),
        ],
      ),
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
                  const SizedBox(height: AppSpacing.lg),

                  // Stats Section - NOW WITH REAL DATA
                  BlocBuilder<EarningsBloc, EarningsState>(
                    builder: (context, earningsState) {
                      return earningsState.maybeWhen(
                        statsLoaded: (stats) => ArtistStatsWidget(
                          totalBookings: stats.totalBookings,
                          totalEarnings: stats.totalEarnings,
                        ),
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (message) => ArtistStatsWidget(
                          totalBookings: 0,
                          totalEarnings: 0,
                        ),
                        orElse: () => const ArtistStatsWidget(
                          totalBookings: 0,
                          totalEarnings: 0,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxl),

                  // Subscription Status
                  SubscriptionWidget(
                    planName: 'Free', // TODO: Fetch from subscription API
                    bookingsUsed: 3,
                    bookingsLimit: 5,
                    contactsUsed: 8,
                    contactsLimit: 10,
                    onUpgrade: () {
                      // TODO: Navigate to subscription page
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Subscription upgrade coming soon!')),
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.xxl),
                  
                  // Quick Actions
                  Text('Quick Actions', style: AppTypography.titleLarge),
                  const SizedBox(height: AppSpacing.md),
                  InkWell(
                    onPressed: () => context.push('/inventory'),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color: AppColors.secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.secondary.withOpacity(0.2)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.inventory_2, color: Colors.white),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Inventory Management', style: AppTypography.titleMedium.copyWith(color: AppColors.secondary)),
                                Text('Track your premium kits & usage', style: AppTypography.bodySmall),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right, color: AppColors.secondary),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.md),
                  
                  InkWell(
                    onPressed: () => context.push('/availability'),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(AppSpacing.md),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.primary.withOpacity(0.2)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.calendar_today, color: Colors.white),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Manage Availability', style: AppTypography.titleMedium.copyWith(color: AppColors.primary)),
                                Text('Set your available dates & times', style: AppTypography.bodySmall),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_right, color: AppColors.primary),
                        ],
                      ),
                    ),
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
                        loaded: (profile) {
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
                                return _buildPortfolioItem(media[index].url);
                              },
                            ),
                          );
                        },
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
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
                  Expanded(
                    child: BlocBuilder<BookingBloc, BookingState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const SizedBox(),
                          loading: () => const Center(child: CircularProgressIndicator()),
                          success: (_) => const SizedBox(), // Should not happen here
                          error: (message) => Center(child: Text('Error: $message')),
                          loaded: (bookings) {
                            if (bookings.isEmpty) {
                              return const Center(child: Text('No bookings yet'));
                            }
                            return ListView.builder(
                              itemCount: bookings.length,
                              itemBuilder: (context, index) {
                                final booking = bookings[index];
                                return _buildBookingCard(context, booking);
                              },
                            );
                          },
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
                    color: statusColor.withOpacity(0.1),
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
