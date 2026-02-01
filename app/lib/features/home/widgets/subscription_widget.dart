import 'package:flutter/material.dart';
import 'package:app/shared/theme/app_colors.dart';
import 'package:app/shared/theme/app_typography.dart';
import 'package:app/shared/theme/app_spacing.dart';

class SubscriptionWidget extends StatelessWidget {
  final String planName;
  final int bookingsUsed;
  final int bookingsLimit;
  final int contactsUsed;
  final int contactsLimit;
  final VoidCallback? onUpgrade;

  const SubscriptionWidget({
    Key? key,
    required this.planName,
    required this.bookingsUsed,
    required this.bookingsLimit,
    required this.contactsUsed,
    required this.contactsLimit,
    this.onUpgrade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFree = planName.toLowerCase() == 'free';
    
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isFree 
              ? [Colors.grey, Colors.grey]
              : [Colors.purple, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
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
                    planName.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Current Plan',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              if (isFree && onUpgrade != null)
                ElevatedButton(
                  onPressed: onUpgrade,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Upgrade',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          _buildQuotaBar(
            'Monthly Bookings',
            bookingsUsed,
            bookingsLimit,
          ),
          const SizedBox(height: AppSpacing.md),
          _buildQuotaBar(
            'Customer Contacts',
            contactsUsed,
            contactsLimit,
          ),
          if (isFree) ...[
            const SizedBox(height: AppSpacing.md),
            Container(
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white.withOpacity(0.9),
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Upgrade to unlock unlimited bookings & contacts',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildQuotaBar(String label, int used, int limit) {
    final percentage = limit > 0 ? (used / limit * 100).clamp(0, 100) : 0.0;
    final isNearLimit = percentage >= 80;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '$used / $limit',
              style: TextStyle(
                color: isNearLimit ? Colors.yellow : Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: percentage / 100,
            backgroundColor: Colors.white.withOpacity(0.3),
            valueColor: AlwaysStoppedAnimation(
              isNearLimit ? Colors.yellow : Colors.white,
            ),
            minHeight: 8,
          ),
        ),
      ],
    );
  }
}
