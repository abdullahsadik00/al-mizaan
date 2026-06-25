import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';

/// The signature Al-Mizan surface.
///
/// A flat card with a 0.5px hairline border and a large (24) radius — no
/// Material drop-shadow. An optional [gradient] turns it into a "hero"
/// surface (used by the daily-progress card); [onTap] adds a tasteful
/// ink response that respects the rounded shape.
class AlMizanCard extends StatelessWidget {
  const AlMizanCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.xl),
    this.onTap,
    this.gradient,
    this.color,
    this.borderColor = AppColors.border,
    this.radius = AppRadius.lg,
    this.showBorder = true,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final Gradient? gradient;
  final Color? color;
  final Color borderColor;
  final double radius;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius);

    final decorated = AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      padding: padding,
      decoration: BoxDecoration(
        color: gradient == null ? (color ?? AppColors.surface) : null,
        gradient: gradient,
        borderRadius: borderRadius,
        border: showBorder && gradient == null
            ? Border.all(color: borderColor, width: AppBorders.hairline)
            : null,
      ),
      child: child,
    );

    if (onTap == null) return decorated;

    return Material(
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        splashColor: AppColors.forest.withValues(alpha: 0.06),
        highlightColor: AppColors.forest.withValues(alpha: 0.03),
        child: decorated,
      ),
    );
  }
}
