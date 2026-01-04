import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../data/models/retreat_model.dart';
import '../../data/repositories/travel_repository.dart';

class RetreatsListScreen extends StatefulWidget {
  const RetreatsListScreen({Key? key}) : super(key: key);

  @override
  State<RetreatsListScreen> createState() => _RetreatsListScreenState();
}

class _RetreatsListScreenState extends State<RetreatsListScreen> {
  late Future<List<RetreatModel>> _retreatsFuture;
  final TravelRepository _repository = TravelRepository();

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
                      onPressed: () {
                        // Handle booking
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Booking flow coming soon')));
                      },
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
}
