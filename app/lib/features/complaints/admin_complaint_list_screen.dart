import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'bloc/complaint_bloc.dart';
import 'data/complaint_repository.dart';

class AdminComplaintListScreen extends StatelessWidget {
  const AdminComplaintListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Note: We might need a separate event for fetching ALL complaints for admin.
    // For now, let's assume fetchMyComplaints returns all if user is admin, or we add a new event.
    // Let's add a new event `fetchAllComplaints` to the Bloc.
    return BlocProvider(
      create: (context) => ComplaintBloc(repository: ComplaintRepository())..add(const ComplaintEvent.fetchAllComplaints()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('Manage Complaints'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: BlocBuilder<ComplaintBloc, ComplaintState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (complaints) {
                if (complaints.isEmpty) {
                  return const Center(child: Text('No complaints found.'));
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  itemCount: complaints.length,
                  itemBuilder: (context, index) {
                    final complaint = complaints[index];
                    return _buildAdminComplaintCard(context, complaint);
                  },
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAdminComplaintCard(BuildContext context, dynamic complaint) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    complaint['subject'],
                    style: AppTypography.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _getStatusColor(complaint['status']),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    complaint['status'],
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text('Booking ID: ${complaint['booking_id']}', style: AppTypography.bodySmall),
            Text('User ID: ${complaint['user_id']}', style: AppTypography.bodySmall),
            const SizedBox(height: AppSpacing.sm),
            Text(complaint['description'], style: AppTypography.bodyMedium),
            const SizedBox(height: AppSpacing.md),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (complaint['status'] == 'OPEN')
                  TextButton(
                    onPressed: () => _showResolveDialog(context, complaint),
                    child: const Text('Resolve'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showResolveDialog(BuildContext context, dynamic complaint) {
    final commentController = TextEditingController();
    bool isProcessing = false;

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text('Resolve Complaint for ${complaint['booking_id']}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Provide a resolution comment for the user:'),
              const SizedBox(height: 16),
              TextField(
                controller: commentController,
                decoration: const InputDecoration(
                  labelText: 'Resolution Comment',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: isProcessing ? null : () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: isProcessing
                  ? null
                  : () async {
                      if (commentController.text.isEmpty) {
                         // Show validation error (omitted for brevity)
                         return;
                      }
                      setState(() => isProcessing = true);
                      try {
                        // Assuming Repository is available via context or we instantiate it
                        // Since we didn't inject Repo into widget tree for direct access, 
                        // we'll access it directly for this patch.
                        // Ideally: context.read<ComplaintBloc>().add(ResolveEvent...)
                        // For Quick Fix: Use Repository directly
                        await ComplaintRepository().resolveComplaint(complaint['id'], commentController.text);
                        
                        if (context.mounted) {
                          Navigator.pop(context); // Close dialog
                          // Trigger refresh
                          context.read<ComplaintBloc>().add(const ComplaintEvent.fetchAllComplaints());
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Complaint Resolved Successfully')),
                          );
                        }
                      } catch (e) {
                         if (context.mounted) {
                           setState(() => isProcessing = false);
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Failed: $e')),
                          );
                         }
                      }
                    },
              child: isProcessing 
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) 
                : const Text('Confirm Resolution'),
            ),
          ],
        ),
      ),
    );
  }
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'OPEN':
        return Colors.orange;
      case 'RESOLVED':
        return Colors.green;
      case 'CLOSED':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }
}
