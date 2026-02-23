import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/features/booking/data/booking_repository.dart';
import 'package:app/features/booking/bloc/booking_bloc.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'dart:ui';

class BookingHistoryScreen extends StatefulWidget {
  const BookingHistoryScreen({super.key});

  @override
  State<BookingHistoryScreen> createState() => _BookingHistoryScreenState();
}

class _BookingHistoryScreenState extends State<BookingHistoryScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingBloc(repository: BookingRepository())
        ..add(const BookingEvent.loadBookings()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('My Bookings'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: AppColors.white,
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.white.withOpacity(0.7),
            tabs: const [
              Tab(text: 'Upcoming'),
              Tab(text: 'Past'),
              Tab(text: 'Cancelled'),
            ],
          ),
        ),
        body: BlocBuilder<BookingBloc, BookingState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => ListView.builder(
                padding: const EdgeInsets.all(AppSpacing.screenPadding),
                itemCount: 4,
                itemBuilder: (_, __) => Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.md),
                  child: ShimmerLoaders.bookingCard(),
                ),
              ),
              bookingsLoaded: (bookings) {
                final upcoming = bookings.where((b) => b['status'] == 'confirmed' || b['status'] == 'pending').toList();
                final past = bookings.where((b) => b['status'] == 'completed').toList();
                final cancelled = bookings.where((b) => b['status'] == 'cancelled').toList();

                return TabBarView(
                  controller: _tabController,
                  children: [
                    _buildBookingList(upcoming, 'upcoming'),
                    _buildBookingList(past, 'past'),
                    _buildBookingList(cancelled, 'cancelled'),
                  ],
                );
              },
              error: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 64, color: AppColors.error),
                    const SizedBox(height: AppSpacing.md),
                    Text(message, style: AppTypography.bodyLarge),
                    const SizedBox(height: AppSpacing.lg),
                    ElevatedButton(
                      onPressed: () {
                        context.read<BookingBloc>().add(const BookingEvent.loadBookings());
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBookingList(List<Map<String, dynamic>> bookings, String type) {
    if (bookings.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              type == 'upcoming' ? Icons.calendar_today : Icons.history,
              size: 64,
              color: AppColors.grey400,
            ),
            const SizedBox(height: AppSpacing.md),
            Text(
              'No ${type} bookings',
              style: AppTypography.titleMedium.copyWith(color: AppColors.textSecondary),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<BookingBloc>().add(const BookingEvent.loadBookings());
      },
      child: ListView.builder(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
          return _buildBookingCard(booking, type);
        },
      ),
    );
  }

  Widget _buildBookingCard(Map<String, dynamic> booking, String type) {
    final status = booking['status'] as String;
    final serviceName = booking['service_name'] as String? ?? 'Service';
    final artistName = booking['artist_name'] as String? ?? 'Artist';
    final dateStr = booking['booking_date'] as String?;
    final time = booking['booking_time'] as String? ?? '';
    final amount = booking['total_amount'] as num? ?? 0;
    final bookingId = booking['id'] as String;

    DateTime? bookingDate;
    if (dateStr != null) {
      try {
        bookingDate = DateTime.parse(dateStr);
      } catch (e) {
        // Handle parse error
      }
    }

    Color statusColor;
    IconData statusIcon;
    switch (status) {
      case 'confirmed':
        statusColor = AppColors.success;
        statusIcon = Icons.check_circle_outline;
        break;
      case 'pending':
        statusColor = AppColors.warning;
        statusIcon = Icons.hourglass_empty;
        break;
      case 'completed':
        statusColor = AppColors.info;
        statusIcon = Icons.verified_outlined;
        break;
      case 'cancelled':
        statusColor = AppColors.error;
        statusIcon = Icons.cancel_outlined;
        break;
      default:
        statusColor = AppColors.grey400;
        statusIcon = Icons.help_outline;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          context.push('/booking/details/$bookingId');
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      serviceName,
                      style: AppTypography.titleMedium.copyWith(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(statusIcon, size: 14, color: statusColor),
                        const SizedBox(width: 6),
                        Text(
                          status.toUpperCase(),
                          style: AppTypography.bodySmall.copyWith(
                            color: statusColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.primary.withOpacity(0.1),
                    child: const Icon(Icons.person, size: 14, color: AppColors.primary),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Text(
                    artistName,
                    style: AppTypography.bodyMedium.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Icon(Icons.calendar_today_outlined, size: 14, color: Colors.grey[600]),
                  const SizedBox(width: AppSpacing.xs),
                  Text(
                    bookingDate != null
                        ? DateFormat('EEE, MMM d, yyyy').format(bookingDate)
                        : 'Date not set',
                    style: AppTypography.bodySmall.copyWith(color: Colors.grey[600]),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Icon(Icons.access_time, size: 14, color: Colors.grey[600]),
                  const SizedBox(width: AppSpacing.xs),
                  Text(
                    time,
                    style: AppTypography.bodySmall.copyWith(color: Colors.grey[600]),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
                child: Divider(height: 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹${amount.toStringAsFixed(0)}',
                    style: AppTypography.titleLarge.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (type == 'upcoming' && status == 'confirmed')
                    ElevatedButton(
                      onPressed: () => _showCancelDialog(context, bookingId),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.error,
                        elevation: 0,
                        side: BorderSide(color: AppColors.error.withOpacity(0.2)),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                      child: const Text('Cancel'),
                    ),
                  if (type == 'past' && status == 'completed')
                    ElevatedButton(
                      onPressed: () {
                        context.push('/reviews/submit/$bookingId');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        elevation: 0,
                      ),
                      child: const Text('Write Review'),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCancelDialog(BuildContext context, String bookingId) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Cancel Booking'),
        content: const Text('Are you sure you want to cancel this booking?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              context.read<BookingBloc>().add(BookingEvent.cancelBooking(bookingId: bookingId));
            },
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: const Text('Yes, Cancel'),
          ),
        ],
      ),
    );
  }
}
