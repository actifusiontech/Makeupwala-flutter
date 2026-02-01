import 'package:flutter/material.dart';
import '../../data/models/studio_model.dart';
import '../../data/repositories/studio_repository.dart';
import 'studio_booking_screen.dart';
import 'studio_team_screen.dart';

class StudiosListScreen extends StatefulWidget {
  const StudiosListScreen({Key? key}) : super(key: key);

  @override
  State<StudiosListScreen> createState() => _StudiosListScreenState();
}

class _StudiosListScreenState extends State<StudiosListScreen> {
  late Future<List<StudioModel>> _studiosFuture;
  final StudioRepository _repository = StudioRepository();

  @override
  void initState() {
    super.initState();
    _studiosFuture = _repository.getStudios();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MakeupWala Studios'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<StudioModel>>(
        future: _studiosFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Colors.amber)); // Gold
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No studios found nearby.'));
          }

          final studios = snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: studios.length,
            itemBuilder: (context, index) {
              final studio = studios[index];
              return _buildStudioCard(studio);
            },
          );
        },
      ),
    );
  }

  Widget _buildStudioCard(StudioModel studio) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          // Navigate to Booking Screen
           Navigator.push(context, MaterialPageRoute(builder: (_) => StudioBookingScreen(studio: studio)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.grey[300],
              child: studio.images.isNotEmpty
                  ? Image.network(
                      studio.images.first,
                      fit: BoxFit.cover,
                      errorBuilder: (c, e, s) => const Center(child: Icon(Icons.broken_image)),
                    )
                  : const Center(child: Icon(Icons.store, size: 50, color: Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    studio.name,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(studio.city.isNotEmpty ? studio.city : 'Unknown City', style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₹${studio.hourlyRate}/hour',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                      Row(
                        children: [
                          if (studio.rating > 0)
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4)),
                              child: Text('${studio.rating} ★', style: const TextStyle(color: Colors.white, fontSize: 12)),
                            ),
                          const SizedBox(width: 8),
                          // Manage Button (For Studio Owner Persona Audit)
                          IconButton(
                            icon: const Icon(Icons.settings, color: Colors.grey),
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (_) => StudioTeamScreen(studio: studio)));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
