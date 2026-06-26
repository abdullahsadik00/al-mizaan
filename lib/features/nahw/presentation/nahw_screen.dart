import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:al_mizan/app/app_providers.dart';
import 'package:al_mizan/core/domain/lesson.dart';
import 'package:al_mizan/core/presentation/lesson_detail_screen.dart';
import 'package:al_mizan/core/theme/app_colors.dart';
import 'package:al_mizan/core/theme/app_dimens.dart';
import 'package:al_mizan/core/theme/app_typography.dart';
import 'package:al_mizan/core/widgets/arabic_text.dart';
import 'package:al_mizan/core/widgets/mizan_card.dart';
import 'package:al_mizan/core/widgets/module_header.dart';

/// Nahw (syntax) curriculum. A structured, editorial list of lessons — each
/// rendered as a bespoke card, not a Material ListTile.
class NahwScreen extends ConsumerWidget {
  const NahwScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessons = ref.watch(nahwLessonsProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.lg,
            AppSpacing.xl,
            120,
          ),
          children: [
            const ModuleHeader(
              overline: 'النَّحْو · Syntax',
              title: 'Nahw',
              blurb:
                  'How words join into balanced, correct sentences — the grammar '
                  'of structure and case.',
              icon: PhosphorIconsDuotone.treeStructure,
            ),
            const SizedBox(height: AppSpacing.xl),
            for (var i = 0; i < lessons.length; i++)
              Padding(
                padding: EdgeInsets.only(
                  bottom: i == lessons.length - 1 ? 0 : AppSpacing.lg,
                ),
                child: _LessonCard(
                  lesson: lessons[i],
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => LessonDetailScreen(
                        lesson: lessons[i],
                        moduleLabel: 'Nahw · Lesson ${lessons[i].order}',
                      ),
                    ),
                  ),
                ),
              ),
          ]
              .animate(interval: 70.ms)
              .fadeIn(duration: 360.ms, curve: Curves.easeOut)
              .slideY(begin: 0.06, end: 0, curve: Curves.easeOutCubic),
        ),
      ),
    );
  }
}

class _LessonCard extends StatelessWidget {
  const _LessonCard({required this.lesson, required this.onTap});

  final Lesson lesson;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Lesson number medallion.
          Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: AppColors.forestGradient,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              '${lesson.order}',
              style: AppType.en(18,
                  weight: FontWeight.w800, color: AppColors.onForest),
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: ArabicText(lesson.titleArabic, size: 22),
                ),
                const SizedBox(height: 2),
                Text(
                  lesson.titleEnglish,
                  style: AppType.en(16, weight: FontWeight.w700),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  lesson.summary,
                  style: AppType.en(13, color: AppColors.inkMuted, height: 1.45),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    const Icon(PhosphorIconsRegular.clock,
                        size: 14, color: AppColors.inkFaint),
                    const SizedBox(width: 5),
                    Text(
                      '${lesson.estimatedMinutes} min',
                      style: AppType.en(12, color: AppColors.inkFaint),
                    ),
                    const Spacer(),
                    const Icon(PhosphorIconsRegular.arrowRight,
                        size: 16, color: AppColors.burntOrange),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
