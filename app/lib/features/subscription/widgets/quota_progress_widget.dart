import 'package:flutter/material.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';

class QuotaProgressWidget extends StatelessWidget {
  final int used;
  final int total;
  final String label;

  const QuotaProgressWidget({
    super.key,
    required this.used,
    required this.total,
    this.label = 'Artist Contacts',
  });

  @override
  Widget build(BuildContext context) {
    // Avoid division by zero
    final double percentage = total > 0 ? (used / total).clamp(0.0, 1.0) : 0.0;
    final int remaining = total - used;
    final bool isLow = remaining < 5;

    return Card(
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
                Text(label, style: AppTypography.titleMedium),
                Text(
                  '$remaining remaining',
                  style: AppTypography.bodyMedium.copyWith(
                    color: isLow ? AppColors.error : AppColors.textSecondary,
                    fontWeight: isLow ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            LinearProgressIndicator(
              value: percentage,
              backgroundColor: AppColors.border,
              color: isLow ? AppColors.warning : AppColors.primary,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
            const SizedBox(height: AppSpacing.xs),
            Text(
              '$used / $total used',
              style: AppTypography.caption,
            ),
          ],
        ),
      ),
    );
  }
}
