import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import '../booking/bloc/booking_bloc.dart';
import '../booking/data/booking_repository.dart';

class ArtistBookingsScreen extends StatelessWidget {
  const ArtistBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingBloc(repository: BookingRepository())
        ..add(const BookingEvent.fetchBookings(isArtist: true)),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('Manage Bookings'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: BlocBuilder<BookingBloc, BookingState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (bookings) {
                if (bookings.isEmpty) {
                  return const Center(child: Text('No bookings found.'));
                }
                
                // Sort bookings: Pending first, then by date
                final sortedBookings = List<Map<String, dynamic>>.from(bookings);
                sortedBookings.sort((a, b) {
                  if (a['status'] == 'PENDING' && b['status'] != 'PENDING') return -1;
                  if (a['status'] != 'PENDING' && b['status'] == 'PENDING') return 1;
                  return DateTime.parse(b['booking_date']).compareTo(DateTime.parse(a['booking_date']));
                });

                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  itemCount: sortedBookings.length,
                  itemBuilder: (context, index) {
                    final booking = sortedBookings[index];
                    return _buildBookingCard(context, booking);
                  },
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBookingCard(BuildContext context, Map<String, dynamic> booking) {
    final isPending = booking['status'] == 'PENDING';
    final statusColor = _getStatusColor(booking['status']);

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
                Text(
                  'Booking #${booking['id'].toString().substring(0, 8)}',
                  style: AppTypography.titleMedium,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    booking['status'],
                    style: TextStyle(color: statusColor, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: AppSpacing.sm),
            _buildInfoRow(Icons.person, booking['customer_name'] ?? 'Customer'), // Assuming backend sends name
            const SizedBox(height: 4),
            _buildInfoRow(Icons.calendar_today, '${booking['booking_date']} at ${booking['start_time']}'),
            const SizedBox(height: 4),
            _buildInfoRow(Icons.spa, booking['services'] != null && (booking['services'] as List).isNotEmpty 
                ? (booking['services'][0]['service_name'] ?? 'Service') 
                : 'Service'),
             if (booking['customer_notes'] != null && booking['customer_notes'].toString().isNotEmpty) ...[
              const SizedBox(height: 8),
              Text('Note: ${booking['customer_notes']}', style: AppTypography.bodySmall.copyWith(fontStyle: FontStyle.italic)),
            ],
            
            if (isPending) ...[
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        context.read<BookingBloc>().add(
                          BookingEvent.updateStatus(
                            bookingId: booking['id'],
                            status: 'rejected',
                            isArtist: true,
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: const BorderSide(color: Colors.red),
                      ),
                      child: const Text('Reject'),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: ElevatedButton(
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
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Accept'),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.textSecondary),
        const SizedBox(width: 8),
        Text(text, style: AppTypography.bodyMedium),
      ],
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'PENDING': return Colors.orange;
      case 'ACCEPTED': return Colors.blue;
      case 'CONFIRMED': return Colors.blue;
      case 'COMPLETED': return Colors.green;
      case 'REJECTED': return Colors.red;
      case 'CANCELLED': return Colors.red;
      default: return Colors.grey;
    }
  }
}
