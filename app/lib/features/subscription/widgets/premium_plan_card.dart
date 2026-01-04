import 'package:flutter/material.dart';
import '../../../../shared/theme/app_colors.dart';
import '../../../../shared/theme/app_typography.dart';
import '../../../../shared/theme/app_spacing.dart';

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
    return Card(
      elevation: isCurrentPlan ? 8 : 4,
      color: isCurrentPlan ? AppColors.primary.withOpacity(0.05) : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: isCurrentPlan 
            ? const BorderSide(color: AppColors.primary, width: 2) 
            : BorderSide.none,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isCurrentPlan)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                margin: const EdgeInsets.only(bottom: AppSpacing.md),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'CURRENT PLAN',
                  style: AppTypography.labelSmall.copyWith(color: Colors.white),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(planName, style: AppTypography.headlineSmall),
                Text(
                  '₹$price', 
                  style: AppTypography.headlineSmall.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(description, style: AppTypography.bodyMedium),
            const SizedBox(height: AppSpacing.lg),
            _buildFeatureList(),
            const SizedBox(height: AppSpacing.lg),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isCurrentPlan ? null : onSubscribe,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  isCurrentPlan ? 'Active Plan' : 'Upgrade Now',
                  style: AppTypography.titleMedium.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
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
