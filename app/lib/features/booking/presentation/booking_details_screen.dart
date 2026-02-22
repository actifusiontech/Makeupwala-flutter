import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/features/booking/bloc/booking_bloc.dart';
import 'package:app/features/booking/data/booking_repository.dart';
import 'package:app/core/services/pdf_service.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';
import 'dart:ui';

class BookingDetailsScreen extends StatelessWidget {
  final String bookingId;

  const BookingDetailsScreen({super.key, required this.bookingId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingBloc(repository: BookingRepository())
        ..add(BookingEvent.loadBookingDetails(bookingId: bookingId)),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('Booking Details'),
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
        ),
        body: BlocConsumer<BookingBloc, BookingState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (message) {
                 ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message), backgroundColor: AppColors.success),
                );
                // Reload details on successful action
                context.read<BookingBloc>().add(BookingEvent.loadBookingDetails(bookingId: bookingId));
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message), backgroundColor: AppColors.error),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => Padding(
                padding: const EdgeInsets.all(AppSpacing.screenPadding),
                child: Column(
                  children: [
                    ShimmerLoaders.profileHeader(),
                    const SizedBox(height: AppSpacing.xl),
                    ShimmerLoaders.listTile(),
                    ShimmerLoaders.listTile(),
                  ],
                ),
              ),
              bookingDetailsLoaded: (booking) => _buildContent(context, booking),
              error: (message) => Center(child: Text(message)),
              orElse: () => Padding(
                padding: const EdgeInsets.all(AppSpacing.screenPadding),
                child: Column(
                  children: [
                    ShimmerLoaders.profileHeader(),
                    const SizedBox(height: AppSpacing.xl),
                    ShimmerLoaders.listTile(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, Map<String, dynamic> booking) {
    final status = booking['status'] as String? ?? 'pending';
    final serviceName = booking['service_name'] as String? ?? 'Service Name';
    final artistName = booking['artist_name'] as String? ?? 'Artist Name';
    final amount = (booking['total_amount'] as num? ?? 0).toDouble();
    final dateStr = booking['booking_date'] as String?;
    final time = booking['booking_time'] as String? ?? '';
    final paymentId = booking['payment_id'] as String? ?? 'N/A';
    
    // Determine status color and icon
    Color statusColor;
    IconData statusIcon;
    switch (status.toLowerCase()) {
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

    final bookingDate = dateStr != null ? DateTime.tryParse(dateStr) : null;
    final formattedDate = bookingDate != null ? DateFormat('EEE, MMM d, yyyy').format(bookingDate) : 'N/A';

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      child: Column(
        children: [
          // Status Card
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              border: Border.all(color: statusColor.withValues(alpha: 0.3)),
            ),
            child: Row(
              children: [
                Icon(statusIcon, color: statusColor, size: 32),
                const SizedBox(width: AppSpacing.md),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status',
                      style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
                    ),
                    Text(
                      status.toUpperCase(),
                      style: AppTypography.titleMedium.copyWith(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Booking Details
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
              side: const BorderSide(color: AppColors.grey300),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                children: [
                  _buildDetailRow('Booking ID', bookingId),
                  const Divider(),
                  _buildDetailRow('Service', serviceName),
                  const Divider(),
                  _buildDetailRow('Artist', artistName),
                  const Divider(),
                  _buildDetailRow('Date', formattedDate),
                  const Divider(),
                  _buildDetailRow('Time', time),
                  const Divider(),
                  _buildDetailRow('Amount Paid', '₹${amount.toStringAsFixed(0)}', isBold: true),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),

          // Action Buttons
          if (status == 'pending' || status == 'confirmed')
             SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                    _showCancelDialog(context);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.error,
                  side: const BorderSide(color: AppColors.error),
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                ),
                child: const Text('Cancel Booking'),
              ),
            ),
            
          if (status == 'confirmed' || status == 'completed') ...[
             const SizedBox(height: AppSpacing.md),
             SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () async {
                   try {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Generating receipt...')),
                    );
                    
                    final pdfService = PdfService();
                    await pdfService.downloadReceipt(
                      bookingId: bookingId,
                      serviceName: serviceName,
                      artistName: artistName,
                      bookingDate: bookingDate ?? DateTime.now(),
                      bookingTime: time,
                      amountPaid: amount,
                      paymentId: paymentId,
                      isDeposit: false, // You might want to get this from backend
                    );
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Failed to generate receipt: $e')),
                      );
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                   padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                ),
                icon: const Icon(Icons.download),
                label: const Text('Download Receipt'),
              ),
            ),
          ],
          
          if (status == 'completed') ...[
             const SizedBox(height: AppSpacing.md),
             SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                   context.push('/reviews/submit/$bookingId');
                },
                style: OutlinedButton.styleFrom(
                   padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                ),
                icon: const Icon(Icons.star),
                label: const Text('Write a Review'),
              ),
            ),
             const SizedBox(height: AppSpacing.md),
             SizedBox(
              width: double.infinity,
              child: TextButton.icon(
                onPressed: () {
                   context.push('/raise-complaint/$bookingId');
                },
                icon: const Icon(Icons.report_problem, size: 16),
                label: const Text('Report an Issue'),
              ),
            ),
          ]

        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
          ),
          Flexible(
            child: Text(
              value,
              style: AppTypography.bodyMedium.copyWith(
                fontWeight: isBold ? FontWeight.bold : null,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Cancel Booking'),
        content: const Text('Are you sure you want to cancel this booking? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('No, Keep it'),
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
