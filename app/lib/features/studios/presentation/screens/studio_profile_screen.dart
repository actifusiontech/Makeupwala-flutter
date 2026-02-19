import 'package:flutter/material.dart';
import '../../data/studio_repository.dart';
import '../../data/models/studio_model.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'package:app/shared/theme/app_typography.dart';

class StudioProfileScreen extends StatefulWidget {
  final String studioId;
  final StudioRepository repository;

  const StudioProfileScreen({
    super.key,
    required this.studioId,
    required this.repository,
  });

  @override
  State<StudioProfileScreen> createState() => _StudioProfileScreenState();
}

class _StudioProfileScreenState extends State<StudioProfileScreen> {
  late Future<List<StudioTeamMember>> _teamFuture;
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _refreshTeam();
  }

  void _refreshTeam() {
    setState(() {
      _teamFuture = widget.repository.getTeamMembers(widget.studioId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Studio Profile'),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Team Management', style: AppTypography.titleLarge),
            const SizedBox(height: AppSpacing.md),
            _buildAddTeamSection(),
            const SizedBox(height: AppSpacing.lg),
            _buildTeamList(),
          ],
        ),
      ),
    );
  }

  Widget _buildAddTeamSection() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Add new team member by email'),
            const SizedBox(height: 12),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter email address',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _addMember,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Add Member'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamList() {
    return FutureBuilder<List<StudioTeamMember>>(
      future: _teamFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text('Error loading team: ${snapshot.error}');
        }
        final members = snapshot.data ?? [];
        if (members.isEmpty) {
          return const Center(child: Text('No team members added yet.'));
        }

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: members.length,
          itemBuilder: (context, index) {
            final member = members[index];
            return ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: Text(member.name),
              subtitle: Text('${member.email} • ${member.role}'),
              trailing: Icon(
                member.isActive ? Icons.check_circle : Icons.cancel,
                color: member.isActive ? Colors.green : Colors.red,
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _addMember() async {
    final email = _emailController.text.trim();
    if (email.isEmpty) return;

    try {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Adding team member...')),
      );
      await widget.repository.addTeamMember(widget.studioId, email, 'STAFF');
      _emailController.clear();
      _refreshTeam();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Member added successfully!'), backgroundColor: Colors.green),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }
}
