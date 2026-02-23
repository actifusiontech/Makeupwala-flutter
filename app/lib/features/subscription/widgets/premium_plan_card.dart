import 'package:flutter/material.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';

class PremiumPlanCard extends StatelessWidget {
  final String planName;
  final double price;
  final String description;
  final String planCode;
  final bool isCurrentPlan;
  final VoidCallback onSubscribe;

  const PremiumPlanCard({
    super.key,
    required this.planName,
    required this.price,
    required this.description,
    required this.planCode,
    this.isCurrentPlan = false,
    required this.onSubscribe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentPlan ? AppColors.white : AppColors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isCurrentPlan ? AppColors.primary : AppColors.grey200,
          width: isCurrentPlan ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isCurrentPlan 
                ? AppColors.primary.withOpacity(0.1) 
                : AppColors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Stack(
        children: [
          if (isCurrentPlan)
            Positioned(
              right: 12,
              top: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'ACTIVE',
                  style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  planName, 
                  style: AppTypography.headlineSmall.copyWith(
                    fontWeight: FontWeight.bold,
                    color: isCurrentPlan ? AppColors.primary : AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '₹$price', 
                      style: AppTypography.headlineMedium.copyWith(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '/ month',
                      style: AppTypography.bodySmall.copyWith(color: AppColors.grey500),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  description, 
                  style: AppTypography.bodyMedium.copyWith(color: AppColors.textSecondary),
                ),
                const SizedBox(height: AppSpacing.xl),
                _buildFeatureList(),
                const SizedBox(height: AppSpacing.xl),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: isCurrentPlan ? null : onSubscribe,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isCurrentPlan ? AppColors.grey100 : AppColors.primary,
                      foregroundColor: isCurrentPlan ? AppColors.grey500 : Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: isCurrentPlan ? 0 : 4,
                      shadowColor: AppColors.primary.withOpacity(0.4),
                    ),
                    child: Text(
                      isCurrentPlan ? 'Current Subscription' : 'Upgrade to $planName',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureList() {
    // In a real app, features would be passed in or parsed from description
    // For now, we'll placeholder generic features based on price
    final List<String> features = [
      'Access to premium artists',
      'Priority support',
      if (price > 500) 'Unlimited contacts',
      if (price > 1000) 'Dedicated account manager',
    ];

    return Column(
      children: features.map((feature) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          children: [
            const Icon(Icons.check_circle, color: AppColors.success, size: 20),
            const SizedBox(width: 8),
            Text(feature, style: AppTypography.bodyMedium),
          ],
        ),
      )).toList(),
    );
  }
}
