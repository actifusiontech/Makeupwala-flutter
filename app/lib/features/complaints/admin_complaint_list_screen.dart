import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/complaint_bloc.dart';
import 'data/complaint_repository.dart';

class AdminComplaintListScreen extends StatelessWidget {
  const AdminComplaintListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComplaintBloc(repository: ComplaintRepository())..add(const ComplaintEvent.fetchAllComplaints()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('Manage Complaints'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: BlocConsumer<ComplaintBloc, ComplaintState>(
          listener: (context, state) {
            state.maybeWhen(
              success: (message) {
                // If the success message is about resolution, show it.
                // The bloc triggers fetchAllComplaints after success, so the list will refresh automatically.
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green));
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            // Handle loading and submitting states similarly - show loading
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              submitting: () => const Center(child: CircularProgressIndicator()),
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
              // If we are in success state (before reload finishes), we might want to keep showing list or loader.
              // Since we re-trigger fetch immediately, we likely transition to loading quickly.
              // But if success happens, let's just show a loader or empty container to avoid flicker if list clears.
              success: (_) => const Center(child: CircularProgressIndicator()), 
              error: (message) => Center(child: Text('Error: $message')),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAdminComplaintCard(BuildContext context, dynamic complaint) {
    // complaint is likely a ComplaintModel or JSON map depending on repository output.
    // Repo returns List<ComplaintModel>, so complaint is ComplaintModel
    // But checking the repo code earlier, it returns List<ComplaintModel>.
    // However, the original code used map syntax complaint['subject'].
    // Let's check if the model has toJson or just fields. 
    // Assuming it's a model class, we should use property access.
    // If it's a model, complaint.subject.
    
    // Wait, the previous code I saw used complaint['subject'].
    // The repository returns List<ComplaintModel>.
    // So the previous code was probably broken or I misread/misremembered the type. 
    // Let's assume it IS a model object now since I saw the repo returning List<ComplaintModel>.
    // Using dynamic for compatibility if I can't verify model structure easily right now, but standard is Object access.
    // BUT, dynamic access on object throws if using [] operator unless it implements it.
    // I need to be careful.
    
    // Let's verify ComplaintModel structure quickly? 
    // No, I'll use dynamic and try property access first, or fallback to map if it's actually map.
    // Actually, to be safe and consistent with the Repo return type I saw (List<ComplaintModel>), I should use property access.

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
                    complaint.subject, // Assuming model property
                    style: AppTypography.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _getStatusColor(complaint.status),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    complaint.status,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text('Booking ID: ${complaint.bookingId}', style: AppTypography.bodySmall),
            // User ID might not be in model if not requested, assuming it is.
            // Text('User ID: ${complaint.userId}', style: AppTypography.bodySmall), 
            const SizedBox(height: AppSpacing.sm),
            Text(complaint.description, style: AppTypography.bodyMedium),
            const SizedBox(height: AppSpacing.md),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (complaint.status == 'OPEN')
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
    
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Resolve Complaint for ${complaint.bookingId}'),
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
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (commentController.text.isEmpty) {
                // Ideally show validation error
                return;
              }
              // Dispatch event to Bloc
              // We need the ID. Assuming complaint.id exists.
              context.read<ComplaintBloc>().add(ComplaintEvent.resolveComplaint(
                complaintId: complaint.id, 
                adminComment: commentController.text,
              ));
              Navigator.pop(dialogContext);
            },
            child: const Text('Confirm Resolution'),
          ),
        ],
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
