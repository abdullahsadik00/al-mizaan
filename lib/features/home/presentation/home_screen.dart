import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:al_mizan/app/app_providers.dart';
import 'package:al_mizan/core/theme/app_colors.dart';
import 'package:al_mizan/core/theme/app_dimens.dart';
import 'package:al_mizan/core/theme/app_typography.dart';
import 'package:al_mizan/core/widgets/arabic_text.dart';
import 'package:al_mizan/core/widgets/mizan_card.dart';
import 'package:al_mizan/core/widgets/mizan_section_header.dart';
import 'package:al_mizan/core/widgets/progress_ring.dart';
import 'package:al_mizan/features/home/domain/dashboard.dart';

/// The dashboard. Deliberately *not* a list — it's a composed editorial
/// surface: a warm greeting, a hero progress card, the topic of the day, and
/// a tappable module grid. Each block fades/slides in with a small stagger.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.lg,
            AppSpacing.xl,
            120, // room for the floating nav
          ),
          children: [
            const _GreetingHeader(),
            const SizedBox(height: AppSpacing.xl),
            const _DailyProgressCard(),
            const SizedBox(height: AppSpacing.xxl),
            const MizanSectionHeader(
              overline: 'Today',
              title: 'Topic of the Day',
            ),
            const SizedBox(height: AppSpacing.lg),
            const _TopicOfTheDayCard(),
            const SizedBox(height: AppSpacing.xxl),
            const MizanSectionHeader(
              overline: 'Explore',
              title: 'Your Modules',
            ),
            const SizedBox(height: AppSpacing.lg),
            const _ModuleGrid(),
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
class _GreetingHeader extends StatelessWidget {
  const _GreetingHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Assalāmu ʿalaykum', style: AppType.label),
              const SizedBox(height: 2),
              Text('Let’s find your balance', style: AppType.headline),
            ],
          ),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            gradient: AppColors.forestGradient,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: const ArabicText(
            'ا',
            size: 24,
            color: AppColors.onForest,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _DailyProgressCard extends ConsumerWidget {
  const _DailyProgressCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p = ref.watch(dailyProgressProvider);

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
                  'DAILY PROGRESS',
                  style: AppType.en(
                    11,
                    weight: FontWeight.w700,
                    color: AppColors.onForest.withValues(alpha: 0.7),
                    letterSpacing: 1.4,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  '${p.wordsLearned} of ${p.dailyGoal} words',
                  style: AppType.en(
                    22,
                    weight: FontWeight.w700,
                    color: AppColors.onForest,
                  ),
                ),
                const SizedBox(height: AppSpacing.md),
                Row(
                  children: [
                    _MetricChip(
                      icon: PhosphorIconsFill.flame,
                      label: '${p.streakDays}-day streak',
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    _MetricChip(
                      icon: PhosphorIconsFill.clock,
                      label: '${p.minutesToday} min',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
          ProgressRing(
            fraction: p.fraction,
            centerLabel: '${p.percent}%',
            centerSubLabel: 'today',
          ),
        ],
      ),
    );
  }
}

class _MetricChip extends StatelessWidget {
  const _MetricChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.onForest.withValues(alpha: 0.12),
        borderRadius: AppRadius.chip,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: AppColors.sand),
          const SizedBox(width: 6),
          Text(
            label,
            style:
                AppType.en(12, weight: FontWeight.w600, color: AppColors.sand),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _TopicOfTheDayCard extends ConsumerWidget {
  const _TopicOfTheDayCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(topicOfTheDayProvider);

    return AlMizanCard(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MizanPill(
                label: t.module.english,
                icon: PhosphorIconsFill.bookOpenText,
              ),
              const Spacer(),
              const Icon(PhosphorIconsRegular.arrowUpRight,
                  size: 18, color: AppColors.inkMuted),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Align(
            alignment: Alignment.centerRight,
            child: ArabicText(t.arabic, size: 30),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '${t.english} · ${t.transliteration}',
            style: AppType.en(14,
                weight: FontWeight.w600, color: AppColors.forest),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(t.blurb, style: AppType.bodyMuted),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _ModuleGrid extends ConsumerWidget {
  const _ModuleGrid();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const modules = ModuleKind.values;
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: AppSpacing.lg,
      crossAxisSpacing: AppSpacing.lg,
      childAspectRatio: 0.95,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (final m in modules)
          _ModuleTile(
            module: m,
            onTap: () =>
                ref.read(navIndexProvider.notifier).state = _tabIndexFor(m),
          ),
        const _StreakTile(),
      ],
    );
  }

  int _tabIndexFor(ModuleKind m) => switch (m) {
        ModuleKind.nahw => 1,
        ModuleKind.sarf => 2,
        ModuleKind.vocab => 3,
      };
}

class _ModuleTile extends StatelessWidget {
  const _ModuleTile({required this.module, required this.onTap});

  final ModuleKind module;
  final VoidCallback onTap;

  IconData get _icon => switch (module) {
        ModuleKind.nahw => PhosphorIconsDuotone.treeStructure,
        ModuleKind.sarf => PhosphorIconsDuotone.scales,
        ModuleKind.vocab => PhosphorIconsDuotone.cards,
      };

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      onTap: onTap,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.sand,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(_icon, color: AppColors.forest, size: 24),
          ),
          const Spacer(),
          ArabicText(module.arabic, size: 22),
          const SizedBox(height: 2),
          Text(module.english,
              style: AppType.en(15, weight: FontWeight.w700)),
          const SizedBox(height: 2),
          Text(
            module.blurb,
            style: AppType.en(12, color: AppColors.inkMuted),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

/// A small accent tile to round out the 2×2 grid — keeps the dashboard from
/// reading as a plain list of three.
class _StreakTile extends ConsumerWidget {
  const _StreakTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p = ref.watch(dailyProgressProvider);
    return AlMizanCard(
      color: AppColors.burntOrangeSoft,
      showBorder: false,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(PhosphorIconsFill.flame,
              color: AppColors.burntOrange, size: 28),
          const Spacer(),
          Text(
            '${p.streakDays} days',
            style: AppType.en(22,
                weight: FontWeight.w800, color: AppColors.burntOrange),
          ),
          const SizedBox(height: 2),
          Text(
            'Keep the streak alive — practise a little every day.',
            style: AppType.en(12,
                color: AppColors.burntOrange.withValues(alpha: 0.8)),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
