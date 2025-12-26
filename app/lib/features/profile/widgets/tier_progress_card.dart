import 'dart:math';
import 'package:flutter/material.dart';
import '../../../shared/theme/app_colors.dart';
import '../../../shared/theme/app_typography.dart';
import '../../../shared/theme/app_spacing.dart';

class TierProgressCard extends StatelessWidget {
  final int currentTier;
  final int totalBookings;
  final int balance;

  const TierProgressCard({
    super.key,
    required this.currentTier,
    required this.totalBookings,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate progress
    // Requirement: Tier n requires 10 * 2^(n-1) bookings
    // Current Tier Requirement = 10 * 2^(currentTier-1)
    // Next Tier Requirement = 10 * 2^(currentTier)

    // Example: Tier 1 (starts at 0). Next Tier (2) needs 10 * 2^(2-1) = 20 bookings ??
    // Wait, let's match backend logic:
    // func CalculateTier(bookings int) int {
    //   if bookings < 10 { return 1 }
    //   tier 2: >= 10
    //   tier 3: >= 20
    //   tier 4: >= 40 
    //   Formula: 10 * 2^(n-2) for n >= 2? 
    //   Let's check previous conversation or backend code.
    // }

    // Backend Logic Recalled:
    // Tier 1: 0-9
    // Tier 2: 10-19
    // Tier 3: 20-39
    // Tier 4: 40-79
    // ...
    // Threshold for Tier N = 10 * 2^(N-2) for N>=2. Tier 1 is default.
    // Threshold for Next Tier (Current+1) = 10 * 2^(Current-1)

    int nextTierThreshold = (10 * pow(2, currentTier - 1)).toInt(); 
    // If currentTier is 1: 10 * 2^0 = 10. Correct.
    // If currentTier is 2: 10 * 2^1 = 20. Correct.
    
    // Progress calculation
    // We want progress within the current tier level, not absolute from 0.
    // Previous threshold = 10 * pow(2, currentTier - 2) (if current > 1) else 0.
    
    int prevTierThreshold = currentTier > 1 ? (10 * pow(2, currentTier - 2)).toInt() : 0;
    
    int bookingProgressInTier = totalBookings - prevTierThreshold;
    int bookingsNeededForTier = nextTierThreshold - prevTierThreshold;
    
    double progress = bookingProgressInTier / bookingsNeededForTier;
    if (progress > 1.0) progress = 1.0;
    if (progress < 0.0) progress = 0.0;
    
    int bookingsRemaining = nextTierThreshold - totalBookings;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primary.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
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
                      'CURRENT TIER',
                      style: AppTypography.bodySmall.copyWith(color: Colors.white70, letterSpacing: 1.2),
                    ),
                    Text(
                      'Level $currentTier',
                      style: AppTypography.headlineMedium.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.stars, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        '$balance pts',
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.lg),
            
            // Progress Bar
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.white.withOpacity(0.2),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 8,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$totalBookings bookings',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  '$bookingsRemaining to Level ${currentTier + 1}',
                  style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
