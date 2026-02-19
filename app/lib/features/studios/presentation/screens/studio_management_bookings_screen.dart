import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../data/studio_repository.dart';
import '../../bloc/booking_manager/studio_booking_manager_bloc.dart';
import '../../bloc/booking_manager/studio_booking_manager_event.dart';
import '../../bloc/booking_manager/studio_booking_manager_state.dart';

class StudioManagementBookingsScreen extends StatelessWidget {
  final String studioId;
  final StudioRepository repository;

  const StudioManagementBookingsScreen({
    super.key,
    required this.studioId,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudioBookingManagerBloc(repository: repository)
        ..add(StudioBookingManagerEvent.loadBookings(studioId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Studio Bookings'),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => context
                    .read<StudioBookingManagerBloc>()
                    .add(StudioBookingManagerEvent.loadBookings(studioId)),
              ),
            ),
          ],
        ),
        body: BlocConsumer<StudioBookingManagerBloc, StudioBookingManagerState>(
          listener: (context, state) {
            state.maybeWhen(
              actionSuccess: (message) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (bookings) {
                if (bookings.isEmpty) {
                  return const Center(child: Text('No bookings found for this studio.'));
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    final booking = bookings[index];
                    return _BookingCard(booking: booking);
                  },
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}

class _BookingCard extends StatelessWidget {
  final Map<String, dynamic> booking;

  const _BookingCard({required this.booking});

  @override
  Widget build(BuildContext context) {
    final date = DateTime.parse(booking['booking_date'] ?? DateTime.now().toIso8601String());
    final status = booking['status'] ?? 'Pending';
    final isUpcoming = date.isAfter(DateTime.now());
    final isPending = status == 'Pending';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: isUpcoming ? Colors.green[100] : Colors.grey[200],
              child: Icon(
                isUpcoming ? Icons.upcoming : Icons.check_circle_outline,
                color: isUpcoming ? Colors.green : Colors.grey,
              ),
            ),
            title: Text(
              'Seat ${booking['seat_number'] ?? 'N/A'}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Booked by: ${booking['customer_name'] ?? 'Unknown User'}'),
                Text(
                  '${DateFormat('MMM dd, yyyy').format(date)} • ${booking['duration_hrs'] ?? 4} hrs',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: _getStatusColor(status).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                status,
                style: TextStyle(color: _getStatusColor(status), fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          if (isPending)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _updateStatus(context, 'Rejected');
                    },
                    style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
                    child: const Text('Reject'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      _updateStatus(context, 'Confirmed');
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                    child: const Text('Accept'),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _updateStatus(BuildContext context, String status) {
    context.read<StudioBookingManagerBloc>().add(StudioBookingManagerEvent.updateBookingStatus(
      booking['id'],
      status,
    ));
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Confirmed':
        return Colors.green;
      case 'Rejected':
        return Colors.red;
      case 'Pending':
        return Colors.orange;
      default:
        return Colors.blue;
    }
  }
}
