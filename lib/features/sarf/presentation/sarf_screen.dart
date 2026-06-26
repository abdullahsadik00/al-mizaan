import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:al_mizan/app/app_providers.dart';
import 'package:al_mizan/core/presentation/lesson_detail_screen.dart';
import 'package:al_mizan/core/theme/app_colors.dart';
import 'package:al_mizan/core/theme/app_dimens.dart';
import 'package:al_mizan/core/theme/app_typography.dart';
import 'package:al_mizan/core/widgets/arabic_text.dart';
import 'package:al_mizan/core/widgets/mizan_card.dart';
import 'package:al_mizan/core/widgets/mizan_section_header.dart';
import 'package:al_mizan/core/widgets/module_header.dart';
import 'package:al_mizan/features/sarf/domain/sarf_root.dart';
import 'package:al_mizan/features/sarf/presentation/widgets/conjugation_table.dart';

/// Sarf (morphology) engine. Shows the active root, a scale selector, the
/// dynamic conjugation table, and a link into the concept lesson.
class SarfScreen extends ConsumerWidget {
  const SarfScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final root = ref.watch(sarfRootProvider);
    final lessons = ref.watch(sarfLessonsProvider);

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
              overline: 'الصَّرْف · Morphology',
              title: 'Sarf',
              blurb:
                  'Watch a single root transform across tenses and persons — '
                  'the engine that builds every Arabic word.',
              icon: PhosphorIconsDuotone.scales,
            ),
            const SizedBox(height: AppSpacing.xl),
            _RootCard(root: root),
            const SizedBox(height: AppSpacing.xl),
            const MizanSectionHeader(
              overline: 'Conjugate',
              title: 'The Scale (الميزان)',
            ),
            const SizedBox(height: AppSpacing.md),
            const _ScaleSelector(),
            const SizedBox(height: AppSpacing.lg),
            // The table scrolls internally (both axes); give it a bounded box.
            SizedBox(
              height: 460,
              child: ConjugationTable(root: root),
            ),
            const SizedBox(height: AppSpacing.xxl),
            const MizanSectionHeader(
              overline: 'Learn',
              title: 'Concept Lessons',
            ),
            const SizedBox(height: AppSpacing.lg),
            for (final lesson in lessons)
              _ConceptLessonCard(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => LessonDetailScreen(
                      lesson: lesson,
                      moduleLabel: 'Sarf · Lesson ${lesson.order}',
                    ),
                  ),
                ),
                titleArabic: lesson.titleArabic,
                titleEnglish: lesson.titleEnglish,
                summary: lesson.summary,
                minutes: lesson.estimatedMinutes,
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

// ─────────────────────────────────────────────────────────────────────────────
class _RootCard extends StatelessWidget {
  const _RootCard({required this.root});

  final SarfRoot root;

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      gradient: AppColors.forestGradient,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ACTIVE ROOT · ${root.radicalLatin}',
                  style: AppType.en(
                    11,
                    weight: FontWeight.w700,
                    color: AppColors.onForest.withValues(alpha: 0.7),
                    letterSpacing: 1.4,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '“${root.coreMeaning}”',
                  style: AppType.en(18,
                      weight: FontWeight.w600, color: AppColors.onForest),
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
          // The three radicals, each in its own tile.
          Row(
            children: [
              for (final r in root.radicals) ...[
                _RadicalTile(letter: r),
                if (r != root.radicals.last)
                  const SizedBox(width: AppSpacing.sm),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _RadicalTile extends StatelessWidget {
  const _RadicalTile({required this.letter});

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.onForest.withValues(alpha: 0.12),
        borderRadius: AppRadius.soft,
        border: Border.all(
          color: AppColors.onForest.withValues(alpha: 0.18),
          width: AppBorders.hairline,
        ),
      ),
      child: ArabicText(letter, size: 28, color: AppColors.onForest),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
/// Bespoke chip row for choosing which morphological scale is highlighted.
class _ScaleSelector extends ConsumerWidget {
  const _ScaleSelector();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedScaleProvider);

    return Row(
      children: [
        for (final scale in SarfScale.values) ...[
          Expanded(
            child: _ScaleChip(
              scale: scale,
              selected: scale == selected,
              onTap: () =>
                  ref.read(selectedScaleProvider.notifier).state = scale,
            ),
          ),
          if (scale != SarfScale.values.last)
            const SizedBox(width: AppSpacing.sm),
        ],
      ],
    );
  }
}

class _ScaleChip extends StatelessWidget {
  const _ScaleChip({
    required this.scale,
    required this.selected,
    required this.onTap,
  });

  final SarfScale scale;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
        decoration: BoxDecoration(
          color: selected ? AppColors.forest : AppColors.surface,
          borderRadius: AppRadius.soft,
          border: Border.all(
            color: selected ? AppColors.forest : AppColors.border,
            width: AppBorders.hairline,
          ),
        ),
        child: Column(
          children: [
            ArabicText(
              scale.arabic,
              size: 18,
              align: TextAlign.center,
              color: selected ? AppColors.onForest : AppColors.forest,
            ),
            const SizedBox(height: 2),
            Text(
              scale.english,
              style: AppType.en(
                11,
                weight: FontWeight.w600,
                color: selected ? AppColors.sand : AppColors.inkMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _ConceptLessonCard extends StatelessWidget {
  const _ConceptLessonCard({
    required this.onTap,
    required this.titleArabic,
    required this.titleEnglish,
    required this.summary,
    required this.minutes,
  });

  final VoidCallback onTap;
  final String titleArabic;
  final String titleEnglish;
  final String summary;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: AppColors.sand,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(PhosphorIconsDuotone.bookOpenText,
                    color: AppColors.forest, size: 24),
              ),
              const Spacer(),
              const Icon(PhosphorIconsRegular.arrowUpRight,
                  size: 18, color: AppColors.inkMuted),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Align(
            alignment: Alignment.centerRight,
            child: ArabicText(titleArabic, size: 24),
          ),
          const SizedBox(height: 2),
          Text(titleEnglish, style: AppType.en(16, weight: FontWeight.w700)),
          const SizedBox(height: AppSpacing.xs),
          Text(
            summary,
            style: AppType.en(13, color: AppColors.inkMuted, height: 1.45),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              const Icon(PhosphorIconsRegular.clock,
                  size: 14, color: AppColors.inkFaint),
              const SizedBox(width: 5),
              Text('$minutes min',
                  style: AppType.en(12, color: AppColors.inkFaint)),
            ],
          ),
        ],
      ),
    );
  }
}
