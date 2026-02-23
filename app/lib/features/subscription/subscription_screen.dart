import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';
import 'bloc/subscription_bloc.dart';
import 'widgets/premium_plan_card.dart';
import 'widgets/quota_progress_widget.dart';
import 'subscription_history_screen.dart';
import 'data/subscription_repository.dart';
import 'package:app/shared/widgets/shimmer_loaders.dart';

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
        title: const Text('Subscription'),
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
      body: BlocConsumer<SubscriptionBloc, SubscriptionState>(
        listener: (context, state) {
          if (state.successMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.successMessage!), backgroundColor: AppColors.success),
            );
          }
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error!), backgroundColor: AppColors.error),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSpacing.screenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Current Subscription Section
                // Current Subscription Section
                _buildCurrentSubscription(context, state),
                const SizedBox(height: AppSpacing.xl),

                // History Link
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => BlocProvider.value(
                          value: context.read<SubscriptionBloc>(),
                          child: const SubscriptionHistoryScreen(),
                        )),
                      );
                    },
                    icon: const Icon(Icons.history),
                    label: const Text('View History'),
                  ),
                ),
                const SizedBox(height: AppSpacing.md),

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
    if (state.isLoading && state.subscription == null) {
      return ShimmerLoaders.artistCard();
    }
    
    final subscription = state.subscription;
    if (subscription == null) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.md),
          child: Text('No active subscription. Choose a plan below to get started!'),
        ),
      );
    }
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CURRENT PLAN',
                      style: AppTypography.labelSmall.copyWith(color: Colors.white70, letterSpacing: 1.2),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subscription['plan_name'] ?? 'Premium',
                      style: AppTypography.headlineSmall.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    (subscription['status'] ?? 'ACTIVE').toUpperCase(),
                    style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.lg),
            Row(
              children: [
                const Icon(Icons.calendar_today_outlined, color: Colors.white70, size: 14),
                const SizedBox(width: 8),
                Text(
                  'Expires: ${subscription['end_date'] ?? 'Never'}',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.xl),
            
            // Quota Widget with white theme
            Theme(
              data: Theme.of(context).copyWith(
                textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
              ),
              child: QuotaProgressWidget(
                 used: (subscription['max_contacts'] ?? 100) - (subscription['remaining_contacts'] ?? 0), 
                 total: subscription['max_contacts'] ?? 100,
              ),
            ),

            const SizedBox(height: AppSpacing.lg),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (subscription['status'] == 'active')
                  TextButton.icon(
                    onPressed: () => _showPauseDialog(context),
                    icon: const Icon(Icons.pause_circle_outline, color: Colors.white),
                    label: const Text('Pause Subscription', style: TextStyle(color: Colors.white)),
                  )
                else if (subscription['status'] == 'paused')
                  ElevatedButton(
                    onPressed: () {
                      context.read<SubscriptionBloc>().add(const SubscriptionEvent.resumeSubscription());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Resume Subscription'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlansList(BuildContext context, SubscriptionState state) {
    if (state.isLoading && state.plans.isEmpty) {
      return Column(
        children: List.generate(2, (index) => ShimmerLoaders.artistCard()),
      );
    }
    
    final plans = state.plans;
    if (plans.isEmpty) {
      // If triggered load but failed or empty
      return const Center(child: Text('No plans available at the moment.'));
    }
    
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: plans.length,
      separatorBuilder: (context, index) => const SizedBox(height: AppSpacing.md),
      itemBuilder: (context, index) {
        final plan = plans[index];
        return _buildPlanCard(context, plan, state.subscription);
      },
    );
  }

  Widget _buildPlanCard(BuildContext context, dynamic plan, Map<String, dynamic>? currentSubscription) {
    final price = plan['price'] ?? 0;
    final name = plan['name'] ?? 'Plan';
    final code = plan['code'] ?? '';
    final description = plan['description'] ?? '';

    return PremiumPlanCard(
      planName: name,
      price: double.tryParse(price.toString()) ?? 0.0,
      description: description,
      planCode: code,
      isCurrentPlan: currentSubscription != null && currentSubscription['plan_code'] == code,
      onSubscribe: () {
        if (currentSubscription != null && currentSubscription['plan_code'] != code) {
           // Upgrade logic if needed
           context.read<SubscriptionBloc>().add(SubscriptionEvent.upgradeSubscription(planCode: code));
        } else {
           context.read<SubscriptionBloc>().add(SubscriptionEvent.subscribe(planCode: code));
        }
      },
    );
  }

  void _showPauseDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Pause Subscription'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Are you sure?Pausing will stop billing but you will lose access to premium features immediately.'),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Reason for pausing',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              context.read<SubscriptionBloc>().add(SubscriptionEvent.pauseSubscription(reason: controller.text));
              Navigator.pop(context);
            },
            child: const Text('Pause'),
          ),
        ],
      ),
    );
  }
}
