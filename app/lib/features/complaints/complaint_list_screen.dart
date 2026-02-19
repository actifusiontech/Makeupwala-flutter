import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/complaint_bloc.dart';
import 'data/complaint_repository.dart';
import 'domain/complaint_model.dart';
import '../../../core/network/api_client.dart';
import 'package:intl/intl.dart';

class ComplaintListScreen extends StatelessWidget {
  const ComplaintListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComplaintBloc(repository: ComplaintRepository(ApiClient()))..add(const ComplaintEvent.fetchMyComplaints()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          title: const Text('My Complaints'),
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
        body: BlocBuilder<ComplaintBloc, ComplaintState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (complaints) {
                if (complaints.isEmpty) {
                  return const Center(child: Text('No complaints raised.'));
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(AppSpacing.screenPadding),
                  itemCount: complaints.length,
                  itemBuilder: (context, index) {
                    final complaint = complaints[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: AppSpacing.md),
                      elevation: 2,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
                                    complaint.subject,
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
                                    style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              DateFormat('MMM d, yyyy').format(complaint.createdAt),
                              style: AppTypography.labelSmall.copyWith(color: AppColors.textSecondary),
                            ),
                            const SizedBox(height: AppSpacing.sm),
                            Text('Booking ID: ${complaint.bookingId}', style: AppTypography.bodySmall),
                            const SizedBox(height: AppSpacing.sm),
                            Text(complaint.description, style: AppTypography.bodyMedium),
                            if (complaint.adminComment != null && complaint.adminComment!.isNotEmpty) ...[
                              const Divider(height: 24),
                              Row(
                                children: [
                                  const Icon(Icons.support_agent, size: 16, color: AppColors.primary),
                                  const SizedBox(width: 8),
                                  Text('Admin Response:', style: AppTypography.labelLarge.copyWith(color: AppColors.primary)),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(complaint.adminComment!, style: AppTypography.bodyMedium),
                            ],
                          ],
                        ),
                      ),
                    );
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

  Color _getStatusColor(String status) {
    switch (status.toUpperCase()) {
      case 'PENDING':
        return Colors.orange;
      case 'RESOLVED':
        return Colors.green;
      case 'REJECTED':
        return Colors.red;
      case 'CLOSED':
        return Colors.grey;
      default:
        return Colors.blue;
    }
  }
}
