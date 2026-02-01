import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:app/features/travel/domain/travel_models.dart';
import 'package:app/features/travel/data/travel_repository.dart';
import 'package:app/core/network/api_client.dart';

class RetreatsListScreen extends StatefulWidget {
  const RetreatsListScreen({Key? key}) : super(key: key);

  @override
  State<RetreatsListScreen> createState() => _RetreatsListScreenState();
}

class _RetreatsListScreenState extends State<RetreatsListScreen> {
  late Future<List<RetreatModel>> _retreatsFuture;
  final TravelRepository _repository = TravelRepository(ApiClient().dio);

  @override
  void initState() {
    super.initState();
    _retreatsFuture = _repository.getRetreats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Retreats'),
        backgroundColor: Colors.teal[800],
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<RetreatModel>>(
        future: _retreatsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.teal));
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No upcoming retreats.'));
          }

          final retreats = snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: retreats.length,
            itemBuilder: (context, index) {
              return _buildRetreatCard(retreats[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildRetreatCard(RetreatModel retreat) {
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
                      onPressed: () => _showBookingDialog(retreat),
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

  void _showBookingDialog(RetreatModel retreat) {
    final nameController = TextEditingController();
    bool isBooking = false;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
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
              onPressed: isBooking ? null : () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: isBooking
                  ? null
                  : () async {
                      if (nameController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please enter a name')),
                        );
                        return;
                      }

                      setState(() => isBooking = true);
                      try {
                        await _repository.bookRetreat(
                          packageId: retreat.id,
                          participantName: nameController.text,
                        );
                        if (context.mounted) {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Booking Confirmed!')),
                          );
                        }
                      } catch (e) {
                        if (context.mounted) {
                           ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Booking failed: $e')),
                          );
                          setState(() => isBooking = false);
                        }
                      }
                    },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
              child: isBooking
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                  : const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
