import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'dart:math';
import '../../domain/commerce_models.dart';

class MakeupPainter extends CustomPainter {
  final List<Face> faces;
  final Size absoluteImageSize;
  final ARMetadata metadata;
  final InputImageRotation rotation;

  MakeupPainter({
    required this.faces,
    required this.absoluteImageSize,
    required this.metadata,
    required this.rotation,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (!metadata.isArEnabled || metadata.hexColor == null) return;

    final paint = Paint()
      ..color = _parseColor(metadata.hexColor!).withOpacity(metadata.opacity)
      ..style = PaintingStyle.fill;

    for (final face in faces) {
      // Draw Lip Makeup
      _drawLipMakeup(canvas, face, size, paint);
      
      // Draw Eyeshadow (if applicable)
      _drawEyeMakeup(canvas, face, size, paint);
    }
  }

  void _drawLipMakeup(Canvas canvas, Face face, Size size, Paint paint) {
    final upperLip = face.contours[FaceContourType.upperLipTop];
    final lowerLip = face.contours[FaceContourType.lowerLipBottom];

    if (upperLip != null && lowerLip != null) {
      final path = Path();
      
      // Map upper lip points
      final firstUpperPoint = _mapPoint(upperLip.points.first, size);
      path.moveTo(firstUpperPoint.dx, firstUpperPoint.dy);
      for (var point in upperLip.points) {
        final mappedPoint = _mapPoint(point, size);
        path.lineTo(mappedPoint.dx, mappedPoint.dy);
      }

      // Map lower lip points
      for (var point in lowerLip.points.reversed) {
        final mappedPoint = _mapPoint(point, size);
        path.lineTo(mappedPoint.dx, mappedPoint.dy);
      }
      
      path.close();
      canvas.drawPath(path, paint);
      
      // Add subtle gloss if finish is glossy
      if (metadata.finish == 'glossy') {
        final glossPaint = Paint()
          ..color = Colors.white.withOpacity(0.2)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2;
        canvas.drawPath(path, glossPaint);
      }
    }
  }

  void _drawEyeMakeup(Canvas canvas, Face face, Size size, Paint paint) {
    // Only draw eye makeup if the category implies it (e.g. eyeshadow)
    // For now, let's just focus on lips as a primary demo
  }

  Offset _mapPoint(Point<int> point, Size size) {
    // Mapping from coordinates returned by ML Kit (relative to image)
    // to coordinates in the CustomPaint widget (relative to screen size)
    
    double x = point.x.toDouble();
    double y = point.y.toDouble();

    // Adjust for rotation if needed (simplified mapping for vertical)
    double scaleX = size.width / absoluteImageSize.width;
    double scaleY = size.height / absoluteImageSize.height;

    return Offset(x * scaleX, y * scaleY);
  }

  Color _parseColor(String hex) {
    try {
      final buffer = StringBuffer();
      if (hex.length == 6 || hex.length == 7) buffer.write('ff');
      buffer.write(hex.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (_) {
      return Colors.pink;
    }
  }

  @override
  bool shouldRepaint(MakeupPainter oldDelegate) {
    return oldDelegate.faces != faces || oldDelegate.metadata != metadata;
  }
}
