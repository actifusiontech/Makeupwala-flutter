import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../bloc/education_bloc.dart';
import '../../bloc/education_event.dart';
import '../../bloc/education_state.dart';

class AcademyPlacementsScreen extends StatefulWidget {
  final String instituteId;

  const AcademyPlacementsScreen({super.key, required this.instituteId});

  @override
  State<AcademyPlacementsScreen> createState() => _AcademyPlacementsScreenState();
}

class _AcademyPlacementsScreenState extends State<AcademyPlacementsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EducationBloc>().add(EducationEvent.fetchPlacementListings(widget.instituteId));
  }

  void _showAddPlacementDialog() {
    final titleController = TextEditingController();
    final companyController = TextEditingController();
    final locationController = TextEditingController();
    final descController = TextEditingController();
    final salaryController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Post New Job'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Job Title'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: companyController,
                decoration: const InputDecoration(labelText: 'Company/Brand'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(labelText: 'Location'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: salaryController,
                decoration: const InputDecoration(labelText: 'Salary/Stipend Range'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descController,
                maxLines: 3,
                decoration: const InputDecoration(labelText: 'Job Description'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isNotEmpty && companyController.text.isNotEmpty) {
                context.read<EducationBloc>().add(
                  EducationEvent.createPlacementListing(widget.instituteId, {
                    'institute_id': widget.instituteId,
                    'job_title': titleController.text,
                    'company': companyController.text,
                    'location': locationController.text,
                    'salary_range': salaryController.text,
                    'description': descController.text,
                  }),
                );
                Navigator.pop(context);
              }
            },
            child: const Text('Post Job'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placement & Careers'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: BlocConsumer<EducationBloc, EducationState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            actionSuccess: (message) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))),
            orElse: () {},
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

          return Stack(
            children: [
              _buildPlacementsList(state),
              if (isLoading) const Center(child: CircularProgressIndicator()),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddPlacementDialog,
        icon: const Icon(Icons.work),
        label: const Text('Post Job'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
    );
  }

  Widget _buildPlacementsList(EducationState state) {
    return state.maybeWhen(
      placementListingsLoaded: (listings) {
        if (listings.isEmpty) {
          return const Center(child: Text('No placements posted yet.'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: listings.length,
          itemBuilder: (context, index) {
            final listing = listings[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 12.0),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(listing['job_title'] ?? 'Job Title', style: AppTypography.titleMedium),
                        if (listing['is_active'] == true)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text('ACTIVE', style: TextStyle(color: Colors.green, fontSize: 10, fontWeight: FontWeight.bold)),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text('${listing['company_name'] ?? 'Company'} • ${listing['location'] ?? 'Remote'}', style: AppTypography.bodyMedium),
                    const SizedBox(height: 8),
                    Text('Salary: ${listing['salary_range'] ?? 'Negotiable'}', style: AppTypography.bodySmall),
                    const SizedBox(height: 8),
                    Text(listing['job_description'] ?? '', style: AppTypography.bodySmall, maxLines: 2, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            );
          },
        );
      },
      orElse: () => const Center(child: Text('Loading placements...')),
    );
  }
}
