import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:app/features/travel/domain/travel_models.dart';
import 'package:app/features/travel/data/travel_repository.dart';
import 'package:app/core/network/api_client.dart';

import 'package:app/features/travel/presentation/bloc/travel_bloc.dart';
import 'package:app/features/travel/presentation/bloc/travel_event.dart';
import 'package:app/features/travel/presentation/bloc/travel_state.dart';

class RetreatsListScreen extends StatelessWidget {
  const RetreatsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TravelBloc(
        repository: TravelRepository(ApiClient().dio),
      )..add(const TravelEvent.fetchRetreats()),
      child: const _RetreatsListView(),
    );
  }
}

class _RetreatsListView extends StatelessWidget {
  const _RetreatsListView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Retreats'),
        backgroundColor: Colors.teal[800],
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<TravelBloc, TravelState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            ),
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: $message')),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator(color: Colors.teal)),
            retreatsLoaded: (retreats) {
              if (retreats.isEmpty) {
                return const Center(child: Text('No upcoming retreats.'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: retreats.length,
                itemBuilder: (context, index) {
                  return _RetreatCard(retreat: retreats[index]);
                },
              );
            },
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const Center(child: CircularProgressIndicator(color: Colors.teal)),
          );
        },
      ),
    );
  }
}

class _RetreatCard extends StatelessWidget {
  final RetreatModel retreat;
  const _RetreatCard({required this.retreat});

  @override
  Widget build(BuildContext context) {
    final dateRange = '${DateFormat('MMM d').format(retreat.startDate)} - ${DateFormat('MMM d, y').format(retreat.endDate)}';

    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[300],
                child: retreat.imageUrl.isNotEmpty
                    ? Image.network(
                        retreat.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (c, e, s) => const Center(child: Icon(Icons.broken_image)),
                      )
                    : const Center(child: Icon(Icons.landscape, size: 60, color: Colors.grey)),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    dateRange,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  retreat.title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: Colors.teal),
                    const SizedBox(width: 4),
                    Text(retreat.location, style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹${retreat.price.toStringAsFixed(0)}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
                    ),
                    ElevatedButton(
                      onPressed: () => _showBookingDialog(context, retreat),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                      child: const Text('Book Now'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showBookingDialog(BuildContext context, RetreatModel retreat) {
    final nameController = TextEditingController();
    final travelBloc = context.read<TravelBloc>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Book ${retreat.title}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Enter participant details to confirm booking.'),
            const SizedBox(height: 16),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Participant Name',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please enter a name')),
                );
                return;
              }
              travelBloc.add(TravelEvent.bookRetreat(retreat.id, nameController.text));
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
            child: const Text('Confirm Booking'),
          ),
        ],
      ),
    );
  }
}
