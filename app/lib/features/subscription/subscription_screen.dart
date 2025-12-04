import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_typography.dart';
import '../../shared/theme/app_spacing.dart';
import 'bloc/subscription_bloc.dart';
import 'data/subscription_repository.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscriptionBloc(repository: SubscriptionRepository())
        ..add(const SubscriptionEvent.fetchPlans())
        ..add(const SubscriptionEvent.fetchMySubscription()),
      child: const _SubscriptionView(),
    );
  }
}

class _SubscriptionView extends StatelessWidget {
  const _SubscriptionView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Subscriptions'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
      ),
      body: BlocConsumer<SubscriptionBloc, SubscriptionState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: AppColors.success),
              );
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
          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Current Subscription Section
                _buildCurrentSubscription(context, state),
                const SizedBox(height: AppSpacing.xl),

                // Available Plans Section
                Text(
                  'Available Plans',
                  style: AppTypography.headlineSmall,
                ),
                const SizedBox(height: AppSpacing.md),
                _buildPlansList(context, state),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCurrentSubscription(BuildContext context, SubscriptionState state) {
    return state.maybeWhen(
      subscriptionLoaded: (subscription) {
        if (subscription == null) {
          return const Card(
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Text('No active subscription. Choose a plan below to get started!'),
            ),
          );
        }
        return Card(
          color: AppColors.primary.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Current Plan', style: AppTypography.titleMedium),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  subscription['plan_name'] ?? 'Unknown Plan',
                  style: AppTypography.headlineMedium.copyWith(color: AppColors.primary),
                ),
                Text('Status: ${subscription['status']?.toUpperCase() ?? 'ACTIVE'}'),
                Text('Expires: ${subscription['end_date'] ?? 'Never'}'),
              ],
            ),
          ),
        );
      },
      orElse: () => const SizedBox(),
    );
  }

  Widget _buildPlansList(BuildContext context, SubscriptionState state) {
    return state.maybeWhen(
      plansLoaded: (plans) {
        if (plans.isEmpty) {
          return const Center(child: Text('No plans available at the moment.'));
        }
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: plans.length,
          separatorBuilder: (context, index) => const SizedBox(height: AppSpacing.md),
          itemBuilder: (context, index) {
            final plan = plans[index];
            return _buildPlanCard(context, plan);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      orElse: () => const SizedBox(),
    );
  }

  Widget _buildPlanCard(BuildContext context, dynamic plan) {
    final price = plan['price'] ?? 0;
    final name = plan['name'] ?? 'Plan';
    final code = plan['code'] ?? '';
    final description = plan['description'] ?? '';

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: AppTypography.headlineSmall),
                Text('₹$price', style: AppTypography.headlineSmall.copyWith(color: AppColors.primary)),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(description, style: AppTypography.bodyMedium),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<SubscriptionBloc>().add(SubscriptionEvent.subscribe(planCode: code));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Subscribe Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
