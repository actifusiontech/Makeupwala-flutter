import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:app/core/models/rewards.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import '../auth/bloc/auth_bloc.dart';
import '../booking/bloc/booking_bloc.dart';
import '../booking/data/booking_repository.dart';
import 'bloc/profile_bloc.dart';
import 'data/profile_repository.dart';
import '../../features/profile/widgets/tier_progress_card.dart';
import '../../features/rewards/leaderboard_screen.dart';
import '../../features/discovery/lookbook_screen.dart';

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
                        loaded: (user, balance) => Column(
                          children: [
                            Text(user.fullName, style: AppTypography.headlineMedium),
                            Text(user.phone ?? '', style: AppTypography.bodyLarge.copyWith(color: AppColors.textSecondary)),
                            const SizedBox(height: AppSpacing.sm),
                            TextButton.icon(
                              onPressed: () => context.push('/rewards'),
                              icon: const Icon(Icons.history, size: 18),
                              label: const Text('View Referral History'),
                              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
                            ),
                            TextButton.icon(
                              onPressed: () => context.push('/wallet'),
                              icon: const Icon(Icons.account_balance_wallet_outlined, size: 18),
                              label: const Text('My Wallet'),
                              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
                            ),
                            TextButton.icon(
                              onPressed: () => context.push('/orders'),
                              icon: const Icon(Icons.shopping_bag_outlined, size: 18),
                              label: const Text('My Orders'),
                              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
                            ),
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
            const SizedBox(height: AppSpacing.lg),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (user, loyaltyBalance) => Column(
                    children: [
                      _buildLoyaltyCard(loyaltyBalance),
                      const SizedBox(height: AppSpacing.sm),
                      _buildLeaderboardButton(context),
                      const SizedBox(height: AppSpacing.lg),
                      _buildReferralCard(context, user.referralCode ?? 'MAKEUPWALA'),
                    ],
                  ),
                  orElse: () => const SizedBox(),
                );
              },
            ),
            const SizedBox(height: AppSpacing.xxl),

            // Booking History
            Text('Booking History', style: AppTypography.titleLarge),
            const SizedBox(height: AppSpacing.md),
            BlocBuilder<BookingBloc, BookingState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
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

  Widget _buildLeaderboardButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      child: Column(
        children: [
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LeaderboardScreen()),
              );
            },
            icon: const Icon(Icons.leaderboard, color: AppColors.primary),
            label: const Text('View Top Referrers'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: const BorderSide(color: AppColors.primary),
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LookBookScreen()),
              );
            },
            icon: const Icon(Icons.auto_awesome, color: AppColors.secondary),
            label: const Text('Explore Look Book'),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.secondary,
              side: const BorderSide(color: AppColors.secondary),
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoyaltyCard(LoyaltyBalance? balance) {
    if (balance == null) return const SizedBox.shrink();
    
    return TierProgressCard(
      currentTier: balance.tier,
      totalBookings: balance.totalBookings,
      balance: balance.balance,
    );
  }

  Widget _buildReferralCard(BuildContext context, String code) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withOpacity(0.1)),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              'assets/images/referral_banner.png',
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              children: [
                Text(
                  'Refer & Earn ₹500',
                  style: AppTypography.titleLarge.copyWith(color: AppColors.primary),
                ),
                const SizedBox(height: AppSpacing.xs),
                const Text(
                  'Invite your friends to Makeupwala. They get priority booking, and you earn 500 bonus points after their first service!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
                ),
                const SizedBox(height: AppSpacing.md),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.primary.withOpacity(0.3)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        code,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      IconButton(
                        icon: const Icon(Icons.copy, size: 20),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: code));
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Referral code copied to clipboard!')),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                ElevatedButton.icon(
                  onPressed: () {
                    Share.share(
                      'Hey! Use my referral code $code to get priority booking and special discounts on Makeupwala! Download now: https://makeupwala.app',
                      subject: 'Makeupwala Referral',
                    );
                  },
                  icon: const Icon(Icons.share),
                  label: const Text('SHARE WITH FRIENDS'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ],
            ),
          ),
        ],
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
