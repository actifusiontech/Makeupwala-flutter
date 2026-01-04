import 'package:flutter/material.dart';
import '../../domain/education_models.dart';

class CareerHubScreen extends StatefulWidget {
  const CareerHubScreen({super.key});

  @override
  State<CareerHubScreen> createState() => _CareerHubScreenState();
}

class _CareerHubScreenState extends State<CareerHubScreen> {
  final bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // Mock data for Phase 9 Career Hub
    final placements = [
      const PlacementListing(
        id: '1',
        instituteId: 'i1',
        title: 'Junior Bridal Artist',
        companyName: 'Lakme Salon',
        location: 'Mumbai, MH',
        description: 'Looking for fresh graduates with good color theory knowledge.',
        stipendAmount: 15000,
        listingType: 'job',
      ),
      const PlacementListing(
        id: '2',
        instituteId: 'i2',
        title: 'Skincare Intern',
        companyName: 'VLCC Wellness',
        location: 'Delhi, DL',
        stipendAmount: 8000,
        listingType: 'internship',
      ),
      const PlacementListing(
        id: '3',
        instituteId: 'i1',
        title: 'Assistant Hair Stylist',
        companyName: 'Enrich Salons',
        location: 'Pune, MH',
        stipendAmount: 12000,
        listingType: 'job',
      ),
    ];

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator(color: Color(0xFFFF6B6B)));
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Career Hub',
          style: TextStyle(fontWeight: FontWeight.black, fontSize: 24),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: placements.length,
        itemBuilder: (context, index) {
          final job = placements[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: _buildJobCard(job),
          );
        },
      ),
    );
  }

  Widget _buildJobCard(PlacementListing job) {
    final isInternship = job.listingType == 'internship';

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.slate.shade100,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, py: 4),
                decoration: BoxDecoration(
                  color: isInternship ? Colors.blue.shade50 : Colors.emerald.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  job.listingType.toUpperCase(),
                  style: TextStyle(
                    color: isInternship ? Colors.blue.shade600 : Colors.emerald.shade600,
                    fontWeight: FontWeight.black,
                    fontSize: 9,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Text(
                '₹${job.stipendAmount?.toStringAsFixed(0)}/mo',
                style: const TextStyle(
                  fontWeight: FontWeight.black,
                  fontSize: 14,
                  color: Color(0xFF0F172A),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            job.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.black,
              color: Color(0xFF0F172A),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.business, size: 14, color: Colors.slate.shade400),
              const SizedBox(width: 4),
              Text(
                job.companyName,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.slate.shade600,
                ),
              ),
              const SizedBox(width: 8),
              Container(width: 4, height: 4, decoration: const BoxDecoration(color: Colors.slate, shape: BoxShape.circle)),
              const SizedBox(width: 8),
              Icon(Icons.location_on_outlined, size: 14, color: Colors.slate.shade400),
              const SizedBox(width: 4),
              Text(
                job.location ?? 'Remote',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.slate.shade500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Apply Logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0F172A),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'EASY APPLY',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.slate.shade200),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: IconButton(
                  icon: const Icon(Icons.bookmark_border, color: Color(0xFF0F172A)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
