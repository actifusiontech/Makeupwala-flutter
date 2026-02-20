import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  static const String fontFamily = 'SF Pro Display';
  
  // Display styles - Majestic & High Contrast
  static const displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w800,
    letterSpacing: -1.0,
    color: AppColors.textPrimary,
  );
  
  static const displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    color: AppColors.textPrimary,
  );
  
  static const displaySmall = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );
  
  // Headline styles
  static const headlineLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );
  
  static const headlineMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );
  
  static const headlineSmall = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );
  
  // Title styles
  static const titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );
  
  static const titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
    color: AppColors.textPrimary,
  );
  
  static const titleSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    color: AppColors.textPrimary,
  );
  
  // Body styles
  static const bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
    color: AppColors.textPrimary,
  );
  
  static const bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.textPrimary,
  );
  
  static const bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
    color: AppColors.textSecondary,
  );
  
  // Label styles
  static const labelLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    color: AppColors.textPrimary,
  );
  
  static const labelMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    color: AppColors.textPrimary,
  );
  
  static const labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
    color: AppColors.textSecondary,
  );

  static const caption = bodySmall;
}
