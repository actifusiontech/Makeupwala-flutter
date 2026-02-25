import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/booking_bloc.dart';
import 'data/booking_repository.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookingBloc(repository: BookingRepository())..add(const BookingEvent.fetchBookings(isArtist: false)),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('My Bookings'),
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
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    final booking = bookings[index];
                    final isCompleted = booking['status'] == 'COMPLETED';
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
                                Text('Booking #${booking['id'].toString().substring(0, 8)}', style: AppTypography.titleMedium),
                                Text(booking['status'], style: TextStyle(color: _getStatusColor(booking['status']), fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            ...(() {
                              final services = booking['services'] as List<dynamic>? ?? [];
                              final serviceName = services.isNotEmpty 
                                  ? services.first['service_name'] ?? 'Multiple Services'
                                  : 'Individual Service';
                              return [
                                Text('Service: $serviceName', style: AppTypography.bodyMedium),
                                Text('Date: ${booking['date']}', style: AppTypography.bodyMedium),
                              ];
                            })(),
                            
                            const SizedBox(height: AppSpacing.md),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (isCompleted) ...[
                                  TextButton(
                                    onPressed: () {
                                      context.push('/write-review/${booking['id']}');
                                    },
                                    child: const Text('Write Review'),
                                  ),
                                  const SizedBox(width: 8),
                                ],
                                TextButton(
                                  onPressed: () {
                                    context.push('/raise-complaint/${booking['id']}');
                                  },
                                  child: const Text('Raise Complaint', style: TextStyle(color: Colors.red)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
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

  Color _getStatusColor(String status) {
    switch (status) {
      case 'PENDING':
        return Colors.orange;
      case 'CONFIRMED':
        return Colors.blue;
      case 'COMPLETED':
        return Colors.green;
      case 'CANCELLED':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
