import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/profile_bloc.dart';
import 'data/profile_repository.dart';

class ReferralHistoryScreen extends StatelessWidget {
  const ReferralHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(repository: ProfileRepository())
        ..add(const ProfileEvent.fetchReferrals()),
      child: const _ReferralHistoryView(),
    );
  }
}

class _ReferralHistoryView extends StatelessWidget {
  const _ReferralHistoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Referral History'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            referralsLoaded: (referrals) {
              if (referrals.isEmpty) {
                return _buildEmptyState();
              }
              return ListView.builder(
                padding: const EdgeInsets.all(AppSpacing.md),
                itemCount: referrals.length,
                itemBuilder: (context, index) {
                  final referral = referrals[index];
                  return _buildReferralCard(referral);
                },
              );
            },
            error: (message) => Center(child: Text('Error: $message')),
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people_outline, size: 80, color: AppColors.primary.withOpacity(0.2)),
          const SizedBox(height: AppSpacing.md),
          Text('No referrals yet', style: AppTypography.titleLarge),
          const SizedBox(height: AppSpacing.xs),
          const Text(
            'Share your code to start earning rewards!',
            style: TextStyle(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildReferralCard(dynamic referral) {
    final bool isCompleted = referral.status == 'COMPLETED';
    final String date = DateFormat('MMM dd, yyyy').format(referral.createdAt);

    return Card(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm),
        leading: CircleAvatar(
          backgroundColor: isCompleted ? AppColors.success.withOpacity(0.1) : AppColors.warning.withOpacity(0.1),
          child: Icon(
            isCompleted ? Icons.check_circle : Icons.pending,
            color: isCompleted ? AppColors.success : AppColors.warning,
          ),
        ),
        title: Text(
          referral.referredUserName ?? 'New User',
          style: AppTypography.titleMedium,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Joined on $date', style: AppTypography.bodySmall),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: (isCompleted ? AppColors.success : AppColors.warning).withOpacity(0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                referral.status,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: isCompleted ? AppColors.success : AppColors.warning,
                ),
              ),
            ),
          ],
        ),
        trailing: Text(
          '+${referral.rewardPoints} pts',
          style: AppTypography.titleMedium.copyWith(
            color: isCompleted ? AppColors.success : AppColors.textSecondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
