import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/education_models.dart';
import 'package:app/shared/theme/app_colors.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class CareerHubScreen extends StatefulWidget {
  final String? instituteId; // Optional filter
  const CareerHubScreen({super.key, this.instituteId});

  @override
  State<CareerHubScreen> createState() => _CareerHubScreenState();
}

class _CareerHubScreenState extends State<CareerHubScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    context.read<EducationBloc>().add(EducationEvent.fetchPlacementListings(widget.instituteId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Career Hub',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadData,
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocBuilder<EducationBloc, EducationState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator(color: Color(0xFFFF6B6B))),
            placementListingsLoaded: (listings) {
              if (listings.isEmpty) {
                return const Center(child: Text('No job openings or internships at the moment. Check back later!'));
              }
              return ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: listings.length,
                itemBuilder: (context, index) {
                  final jobData = listings[index];
                  // If backend returns raw JSON, convert to model
                  final job = PlacementListing.fromJson(jobData);
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: _buildJobCard(job),
                  );
                },
              );
            },
            orElse: () => const Center(child: Text('Loading career opportunities...')),
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
            color: AppColors.grey50,
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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: isInternship ? Colors.blue.shade50 : AppColors.emerald.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  job.listingType.toUpperCase(),
                  style: TextStyle(
                    color: isInternship ? Colors.blue : AppColors.emerald,
                    fontWeight: FontWeight.w900,
                    fontSize: 9,
                    letterSpacing: 1,
                  ),
                ),
              ),
              if (job.stipendAmount != null)
                Text(
                  '₹${job.stipendAmount?.toStringAsFixed(0)}/mo',
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
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
              fontWeight: FontWeight.w900,
              color: Color(0xFF0F172A),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.business, size: 14, color: AppColors.slate),
              const SizedBox(width: 4),
              Text(
                job.companyName,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: AppColors.slate,
                ),
              ),
              const SizedBox(width: 8),
              Container(width: 4, height: 4, decoration: const BoxDecoration(color: AppColors.slate, shape: BoxShape.circle)),
              const SizedBox(width: 8),
              Icon(Icons.location_on_outlined, size: 14, color: AppColors.slate),
              const SizedBox(width: 4),
              Text(
                job.location ?? 'Remote',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.grey500,
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Application submitted! Good luck!')),
                    );
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
                  border: Border.all(color: AppColors.slate100),
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
