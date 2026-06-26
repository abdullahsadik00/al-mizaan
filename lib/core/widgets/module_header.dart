import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_typography.dart';

/// The standard editorial header used at the top of each module screen
/// (Nahw, Sarf, Vocab): a soft-sand icon tile, a burnt-orange overline, a
/// bold title, and a muted descriptive blurb.
class ModuleHeader extends StatelessWidget {
  const ModuleHeader({
    super.key,
    required this.overline,
    required this.title,
    required this.blurb,
    required this.icon,
  });

  final String overline;
  final String title;
  final String blurb;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: AppColors.sand,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, color: AppColors.forest, size: 28),
            ),
            const SizedBox(width: AppSpacing.lg),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(overline, style: AppType.overline),
                  const SizedBox(height: 2),
                  Text(title, style: AppType.headline),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.lg),
        Text(blurb, style: AppType.bodyMuted),
      ],
    );
  }
}
