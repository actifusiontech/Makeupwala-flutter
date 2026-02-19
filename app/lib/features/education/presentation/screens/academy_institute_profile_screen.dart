import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/education_bloc.dart';
import '../bloc/education_event.dart';
import '../bloc/education_state.dart';

class AcademyInstituteProfileScreen extends StatelessWidget {
  const AcademyInstituteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        return state.maybeWhen(
          dashboardLoaded: (stats, institute) {
            if (institute == null) return const Center(child: Text("Institute data not found"));
            
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.teal,
                    child: Icon(Icons.school, size: 50, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(institute.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                Center(
                  child: Text(institute.location, style: TextStyle(color: Colors.grey[600])),
                ),
                const SizedBox(height: 32),
                const Text('About Academy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 8),
                Text(institute.description, style: const TextStyle(height: 1.5)),
                const SizedBox(height: 32),
                const Text('Performance stats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 16),
                _InfoTile(label: 'Total Students', value: stats['students_count']?.toString() ?? '0'),
                _InfoTile(label: 'Active Batches', value: stats['batches_count']?.toString() ?? '0'),
                _InfoTile(label: 'Total Revenue', value: '₹ ${stats['revenue'] ?? 0}'),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit Profile'),
                    style: OutlinedButton.styleFrom(foregroundColor: Colors.teal),
                  ),
                ),
              ],
            );
          },
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const _InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[600])),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
