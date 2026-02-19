import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import '../bloc/booking_bloc.dart';
import '../data/booking_repository.dart';

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
              loading: () => const Center(child: CircularProgressIndicator()),
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
        statusIcon = Icons.check_circle;
        break;
      case 'pending':
        statusColor = AppColors.warning;
        statusIcon = Icons.pending;
        break;
      case 'completed':
        statusColor = AppColors.info;
        statusIcon = Icons.done_all;
        break;
      case 'cancelled':
        statusColor = AppColors.error;
        statusIcon = Icons.cancel;
        break;
      default:
        statusColor = AppColors.grey400;
        statusIcon = Icons.help_outline;
    }

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
      ),
      child: InkWell(
        onTap: () {
          context.push('/booking/details/$bookingId');
        },
        borderRadius: BorderRadius.circular(AppSpacing.radiusMd),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      serviceName,
                      style: AppTypography.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.xs,
                    ),
                    decoration: BoxDecoration(
                      color: statusColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
                      border: Border.all(color: statusColor),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(statusIcon, size: 14, color: statusColor),
                        const SizedBox(width: 4),
                        Text(
                          status.toUpperCase(),
                          style: AppTypography.bodySmall.copyWith(
                            color: statusColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  const Icon(Icons.person, size: 16, color: AppColors.textSecondary),
                  const SizedBox(width: AppSpacing.xs),
                  Text(
                    artistName,
                    style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xs),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16, color: AppColors.textSecondary),
                  const SizedBox(width: AppSpacing.xs),
                  Text(
                    bookingDate != null
                        ? DateFormat('EEE, MMM d, yyyy').format(bookingDate)
                        : 'Date not set',
                    style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  const Icon(Icons.access_time, size: 16, color: AppColors.textSecondary),
                  const SizedBox(width: AppSpacing.xs),
                  Text(
                    time,
                    style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
                  ),
                ],
              ),
              const Divider(height: AppSpacing.lg),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹${amount.toStringAsFixed(0)}',
                    style: AppTypography.titleMedium.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (type == 'upcoming' && status == 'confirmed')
                    TextButton(
                      onPressed: () {
                        _showCancelDialog(context, bookingId);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.error,
                      ),
                      child: const Text('Cancel'),
                    ),
                  if (type == 'past' && status == 'completed')
                    TextButton(
                      onPressed: () {
                        context.push('/reviews/submit/$bookingId');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.primary,
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
