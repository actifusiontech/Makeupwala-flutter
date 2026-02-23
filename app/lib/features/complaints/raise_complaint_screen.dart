import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/complaint_bloc.dart';
import 'data/complaint_repository.dart';
import '../../core/network/api_client.dart';

class RaiseComplaintScreen extends StatefulWidget {
  final String bookingId;

  const RaiseComplaintScreen({super.key, required this.bookingId});

  @override
  State<RaiseComplaintScreen> createState() => _RaiseComplaintScreenState();
}

class _RaiseComplaintScreenState extends State<RaiseComplaintScreen> {
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _subjectController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComplaintBloc(repository: ComplaintRepository(apiClient: ApiClient())),
      child: BlocConsumer<ComplaintBloc, ComplaintState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.success),
              );
              context.pop(); // Go back
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.error),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              title: const Text('Raise Complaint'),
              elevation: 0,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.primary, AppColors.primaryDark],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              foregroundColor: AppColors.white,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.md),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.primary.withOpacity(0.1)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.receipt_long_outlined, color: AppColors.primary),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Booking ID', style: AppTypography.labelSmall.copyWith(color: AppColors.grey500)),
                            Text(widget.bookingId, style: AppTypography.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  
                  Text('Issue Category', style: AppTypography.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: AppSpacing.md),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ['Payment', 'Artist', 'App Issue', 'Other'].map((cat) {
                        final isSelected = _subjectController.text == cat;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ActionChip(
                            label: Text(cat),
                            backgroundColor: isSelected ? AppColors.primary : AppColors.grey100,
                            labelStyle: TextStyle(
                              color: isSelected ? Colors.white : AppColors.textPrimary,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                            onPressed: () => setState(() => _subjectController.text = cat),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  
                  const SizedBox(height: AppSpacing.lg),
                  
                  Text('Detailed Description', style: AppTypography.titleMedium.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: AppSpacing.sm),
                  TextField(
                    controller: _descriptionController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Tell us what happened...',
                      filled: true,
                      fillColor: AppColors.grey50,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: AppColors.grey200),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: AppColors.grey200),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xxl),
                  
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: state.maybeWhen(
                        submitting: () => null,
                        orElse: () => () {
                          if (_subjectController.text.isEmpty || _descriptionController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please select category and describe issue')),
                            );
                            return;
                          }
                          context.read<ComplaintBloc>().add(
                            ComplaintEvent.raiseComplaint(
                              bookingId: widget.bookingId,
                              subject: _subjectController.text,
                              description: _descriptionController.text,
                            ),
                          );
                        },
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        elevation: 4,
                        shadowColor: AppColors.primary.withOpacity(0.3),
                      ),
                      child: state.maybeWhen(
                        submitting: () => const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                        ),
                        orElse: () => const Text('Submit Complaint'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
