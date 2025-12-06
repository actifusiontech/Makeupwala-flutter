import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import '../auth/bloc/auth_bloc.dart';
import '../booking/bloc/booking_bloc.dart';
import '../profile/bloc/profile_bloc.dart';
import '../booking/data/booking_repository.dart';
import 'widgets/artist_stats_widget.dart';

class ArtistHomeScreen extends StatelessWidget {
  const ArtistHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookingBloc(repository: BookingRepository())
            ..add(const BookingEvent.fetchBookings(isArtist: true)),
        ),
        BlocProvider(
          create: (context) => ProfileBloc()..add(const ProfileEvent.fetchProfile(isArtist: true)),
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
              // Navigate to own profile (using artist ID from auth state if available, or just a generic profile route)
              // Since we don't have the ID easily here without BlocBuilder, let's just use the profile route which is for customers but maybe we can reuse or redirect.
              // Actually, ArtistProfileScreen requires an ID. We need to get it from AuthBloc.
              // For now, let's just print or show a snackbar if we can't get ID, or better, wrap the AppBar in BlocBuilder.
              // But wait, the body is already wrapped.
              // Let's just add it to the body or use a cleaner way.
              // Simpler: Just navigate to '/profile' which is the user profile, but artists also have a "public" profile.
              // Let's assume '/profile' handles the "My Profile" view for logged in user (artist or customer).
              context.push('/profile'); 
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<BookingBloc>().add(const BookingEvent.fetchBookings(isArtist: true));
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

                  // Stats Section
                  BlocBuilder<BookingBloc, BookingState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        loaded: (state) {
                          final bookings = state.bookings;
                          final totalBookings = bookings.length;
                          // Mock earnings calculation: 5000 per booking
                          final totalEarnings = totalBookings * 5000.0; 
                          return ArtistStatsWidget(
                            totalBookings: totalBookings,
                            totalEarnings: totalEarnings,
                          );
                        },
                        orElse: () => const ArtistStatsWidget(totalBookings: 0, totalEarnings: 0),
                      );
                    },
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
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildPortfolioItem('https://via.placeholder.com/150'),
                        const SizedBox(width: AppSpacing.md),
                        _buildPortfolioItem('https://via.placeholder.com/150'),
                        const SizedBox(width: AppSpacing.md),
                        _buildPortfolioItem('https://via.placeholder.com/150'),
                      ],
                    ),
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
