import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/complaint_bloc.dart';
import 'data/complaint_repository.dart';

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
      create: (context) => ComplaintBloc(repository: ComplaintRepository()),
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
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Booking ID: ${widget.bookingId}', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.lg),
                  
                  Text('Subject', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  TextField(
                    controller: _subjectController,
                    decoration: const InputDecoration(
                      hintText: 'Brief subject of the issue',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),
                  
                  Text('Description', style: AppTypography.titleMedium),
                  const SizedBox(height: AppSpacing.sm),
                  TextField(
                    controller: _descriptionController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: 'Describe the issue in detail...',
                      border: OutlineInputBorder(),
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
                              const SnackBar(content: Text('Please fill all fields')),
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
