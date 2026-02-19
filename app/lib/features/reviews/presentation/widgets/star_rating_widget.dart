import 'package:flutter/material.dart';
import '../../../../../shared/theme/app_colors.dart';

class StarRatingWidget extends StatelessWidget {
  final double rating;
  final double size;
  final Color filledColor;
  final Color emptyColor;
  final bool isInteractive;
  final ValueChanged<double>? onRatingChanged;

  const StarRatingWidget({
    super.key,
    required this.rating,
    this.size = 24.0,
    this.filledColor = Colors.amber,
    this.emptyColor = Colors.grey,
    this.isInteractive = false,
    this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        final icon = index < rating ? Icons.star : Icons.star_border;
        final color = index < rating ? filledColor : emptyColor;

        return isInteractive
            ? IconButton(
                onPressed: () => onRatingChanged?.call(index + 1.0),
                icon: Icon(icon, size: size, color: color),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              )
            : Icon(icon, size: size, color: color);
      }),
    );
  }
}
