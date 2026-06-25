import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

/// A custom-painted circular progress ring with a rounded sweep cap.
///
/// Animates from 0 → [fraction] on build. Rendered with a [CustomPainter]
/// rather than Material's `CircularProgressIndicator` so it matches the
/// brand exactly (track colour, cap, weight) and shows a centred percentage.
class ProgressRing extends StatelessWidget {
  const ProgressRing({
    super.key,
    required this.fraction,
    this.size = 92,
    this.stroke = 9,
    this.color = AppColors.burntOrange,
    this.trackColor = const Color(0x33F4F1DE),
    this.centerLabel,
    this.centerSubLabel,
  });

  final double fraction; // 0.0 – 1.0
  final double size;
  final double stroke;
  final Color color;
  final Color trackColor;
  final String? centerLabel;
  final String? centerSubLabel;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: fraction.clamp(0, 1)),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      builder: (context, value, _) {
        return SizedBox(
          width: size,
          height: size,
          child: CustomPaint(
            painter: _RingPainter(
              fraction: value,
              stroke: stroke,
              color: color,
              trackColor: trackColor,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (centerLabel != null)
                    Text(
                      centerLabel!,
                      style: AppType.en(
                        size * 0.24,
                        weight: FontWeight.w700,
                        color: AppColors.onForest,
                      ),
                    ),
                  if (centerSubLabel != null)
                    Text(
                      centerSubLabel!,
                      style: AppType.en(
                        size * 0.11,
                        weight: FontWeight.w500,
                        color: AppColors.onForest.withValues(alpha: 0.7),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _RingPainter extends CustomPainter {
  _RingPainter({
    required this.fraction,
    required this.stroke,
    required this.color,
    required this.trackColor,
  });

  final double fraction;
  final double stroke;
  final Color color;
  final Color trackColor;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.shortestSide - stroke) / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);

    final track = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round
      ..color = trackColor;

    final arc = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round
      ..color = color;

    // Full track.
    canvas.drawArc(rect, 0, 2 * math.pi, false, track);

    // Progress sweep, starting at the top (−90°).
    const start = -math.pi / 2;
    canvas.drawArc(rect, start, 2 * math.pi * fraction, false, arc);
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.fraction != fraction ||
      old.color != color ||
      old.trackColor != trackColor ||
      old.stroke != stroke;
}
