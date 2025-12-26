import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

class ShimmerLoaders {
  static Widget artistCard() {
    return Shimmer.fromColors(
      baseColor: AppColors.backgroundLight,
      highlightColor: Colors.white,
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Container(
                      width: 150,
                      height: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Container(
                      width: 100,
                      height: 14,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget bookingCard() {
    return Shimmer.fromColors(
      baseColor: AppColors.backgroundLight,
      highlightColor: Colors.white,
      child: Card(
        margin: const EdgeInsets.all(AppSpacing.md),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 20,
                color: Colors.white,
              ),
              const SizedBox(height: AppSpacing.md),
              Container(
                width: 200,
                height: 16,
                color: Colors.white,
              ),
              const SizedBox(height: AppSpacing.sm),
              Container(
                width: 150,
                height: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget profileHeader() {
    return Shimmer.fromColors(
      baseColor: AppColors.backgroundLight,
      highlightColor: Colors.white,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Container(
            width: 150,
            height: 20,
            color: Colors.white,
          ),
          const SizedBox(height: AppSpacing.sm),
          Container(
            width: 100,
            height: 16,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  static Widget listTile() {
    return Shimmer.fromColors(
      baseColor: AppColors.backgroundLight,
      highlightColor: Colors.white,
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        title: Container(
          width: double.infinity,
          height: 16,
          color: Colors.white,
        ),
        subtitle: Container(
          width: 200,
          height: 14,
          color: Colors.white,
          margin: const EdgeInsets.only(top: 4),
        ),
      ),
    );
  }
}
