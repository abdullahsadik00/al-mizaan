import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_typography.dart';

/// An editorial section header: a small burnt-orange overline above a bold
/// title, with an optional trailing action. Used to introduce each block on
/// the dashboard and the feature screens.
class MizanSectionHeader extends StatelessWidget {
  const MizanSectionHeader({
    super.key,
    required this.overline,
    required this.title,
    this.actionLabel,
    this.onAction,
  });

  final String overline;
  final String title;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(overline.toUpperCase(), style: AppType.overline),
              const SizedBox(height: AppSpacing.xs),
              Text(title, style: AppType.title.copyWith(fontSize: 20)),
            ],
          ),
        ),
        if (actionLabel != null)
          TextButton(
            onPressed: onAction,
            child: Text(actionLabel!),
          ),
      ],
    );
  }
}

/// A small pill/tag — used for streaks, module tags, and metadata.
class MizanPill extends StatelessWidget {
  const MizanPill({
    super.key,
    required this.label,
    this.icon,
    this.foreground = AppColors.burntOrange,
    this.background = AppColors.burntOrangeSoft,
  });

  final String label;
  final IconData? icon;
  final Color foreground;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: background,
        borderRadius: AppRadius.chip,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: foreground),
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: AppType.en(12, weight: FontWeight.w700, color: foreground),
          ),
        ],
      ),
    );
  }
}
