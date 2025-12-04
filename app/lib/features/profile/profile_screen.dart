import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import '../auth/bloc/auth_bloc.dart';
import '../booking/bloc/booking_bloc.dart';
import '../booking/data/booking_repository.dart';
import 'bloc/profile_bloc.dart';
import 'data/profile_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProfileBloc(repository: ProfileRepository())
            ..add(const ProfileEvent.fetchProfile(isArtist: false)),
        ),
        BlocProvider(
          create: (context) => BookingBloc(repository: BookingRepository())
            ..add(const BookingEvent.fetchBookings(isArtist: false)),
        ),
      ],
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.logout());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.primary,
                    child: Icon(Icons.person, size: 60, color: Colors.white),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loaded: (user) => Column(
                          children: [
                            Text(user.fullName, style: AppTypography.headlineMedium),
                            Text(user.phone ?? '', style: AppTypography.bodyLarge.copyWith(color: AppColors.textSecondary)),
                          ],
                        ),
                        loading: () => const CircularProgressIndicator(),
                        orElse: () => const SizedBox(),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xxl),

            // Booking History
            Text('Booking History', style: AppTypography.titleLarge),
            const SizedBox(height: AppSpacing.md),
            BlocBuilder<BookingBloc, BookingState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  success: (_) => const SizedBox(),
                  error: (message) => Center(child: Text('Error: $message')),
                  loaded: (bookings) {
                    if (bookings.isEmpty) {
                      return const Center(child: Text('No bookings found'));
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: bookings.length,
                      itemBuilder: (context, index) {
                        final booking = bookings[index];
                        return _buildBookingCard(booking);
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingCard(Map<String, dynamic> booking) {
    final status = booking['status'] ?? 'pending';
    final date = booking['booking_date'] ?? 'Unknown Date';
    final time = booking['booking_time'] ?? 'Unknown Time';
    final artistName = booking['artist_name'] ?? 'Artist'; // Assuming backend sends this

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
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary.withOpacity(0.1),
          child: const Icon(Icons.brush, color: AppColors.primary),
        ),
        title: Text(artistName, style: AppTypography.titleMedium),
        subtitle: Text('$date at $time', style: AppTypography.bodySmall),
        trailing: Container(
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
      ),
    );
  }
}
