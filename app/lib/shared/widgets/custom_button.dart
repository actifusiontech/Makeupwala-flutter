import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isFullWidth;
  final Color? backgroundColor;
  final ButtonVariant variant;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isFullWidth = false,
    this.backgroundColor,
    this.variant = ButtonVariant.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = backgroundColor ?? (variant == ButtonVariant.outline ? Colors.transparent : AppColors.primary);
    final fgColor = variant == ButtonVariant.outline ? AppColors.primary : Colors.white;
    final side = variant == ButtonVariant.outline ? const BorderSide(color: AppColors.primary) : null;

    Widget button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        side: side,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: variant == ButtonVariant.outline ? 0 : 2,
      ),
      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
            )
          : Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
    );

    if (isFullWidth) {
      button = SizedBox(width: double.infinity, child: button);
    }

    return button;
  }
}

enum ButtonVariant {
  primary,
  secondary,
  outline,
}
