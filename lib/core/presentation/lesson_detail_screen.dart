import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../domain/lesson.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimens.dart';
import '../theme/app_typography.dart';
import '../widgets/arabic_text.dart';
import '../widgets/mizan_card.dart';
import '../widgets/mizan_definition_box.dart';
import '../widgets/mizan_section_header.dart';

/// A bespoke reader for any [Lesson], shared by Nahw and Sarf.
///
/// The lesson is split into the three pedagogical movements the spec calls
/// for — **Concept**, **Examples**, **Rules** — and surfaced through a custom
/// segmented control. Switching segments cross-fades the relevant sections so
/// the reader feels like turning a page rather than scrolling a wall of text.
class LessonDetailScreen extends StatefulWidget {
  const LessonDetailScreen({
    super.key,
    required this.lesson,
    required this.moduleLabel,
  });

  final Lesson lesson;

  /// e.g. "Nahw · Lesson 1" — shown as the editorial overline.
  final String moduleLabel;

  @override
  State<LessonDetailScreen> createState() => _LessonDetailScreenState();
}

class _LessonDetailScreenState extends State<LessonDetailScreen> {
  late SectionKind _selected;

  /// Only the segments that actually carry content for this lesson, so an
  /// intro lesson with no Examples never shows an empty tab.
  late final List<SectionKind> _availableKinds = SectionKind.values
      .where((k) => widget.lesson.sections.any((s) => s.kind == k))
      .toList();

  @override
  void initState() {
    super.initState();
    _selected = _availableKinds.isNotEmpty
        ? _availableKinds.first
        : SectionKind.concept;
  }

  List<LessonSection> _sectionsFor(SectionKind kind) =>
      widget.lesson.sections.where((s) => s.kind == kind).toList();

  @override
  Widget build(BuildContext context) {
    final lesson = widget.lesson;
    final sections = _sectionsFor(_selected);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacing.xl,
                  AppSpacing.sm,
                  AppSpacing.xl,
                  0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _TopBar(label: widget.moduleLabel),
                    const SizedBox(height: AppSpacing.lg),
                    _LessonHero(lesson: lesson),
                    const SizedBox(height: AppSpacing.xl),
                    _SegmentedTabs(
                      kinds: _availableKinds,
                      selected: _selected,
                      onChanged: (k) => setState(() => _selected = k),
                    ),
                    const SizedBox(height: AppSpacing.xl),
                  ],
                ),
              ),
            ),

            // Content for the active segment.
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.xl,
                0,
                AppSpacing.xl,
                AppSpacing.xxxl,
              ),
              sliver: SliverList.builder(
                // Re-key on the segment so the list animates in on switch.
                key: ValueKey(_selected),
                itemCount: sections.length,
                itemBuilder: (context, i) {
                  final section = sections[i];
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: i == sections.length - 1 ? 0 : AppSpacing.xl,
                    ),
                    child: _SectionView(section: section)
                        .animate()
                        .fadeIn(duration: 300.ms, curve: Curves.easeOut)
                        .slideY(begin: 0.04, end: 0, curve: Curves.easeOutCubic),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _TopBar extends StatelessWidget {
  const _TopBar({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _CircleButton(
          icon: PhosphorIconsRegular.arrowLeft,
          onTap: () => Navigator.of(context).maybePop(),
        ),
        const SizedBox(width: AppSpacing.md),
        Text(label.toUpperCase(), style: AppType.overline),
      ],
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      shape: const CircleBorder(
        side: BorderSide(color: AppColors.border, width: AppBorders.hairline),
      ),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 42,
          height: 42,
          child: Icon(icon, size: 18, color: AppColors.ink),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _LessonHero extends StatelessWidget {
  const _LessonHero({required this.lesson});

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      gradient: AppColors.forestGradient,
      padding: const EdgeInsets.all(AppSpacing.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ArabicText(
              lesson.titleArabic,
              size: 30,
              color: AppColors.onForest,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            lesson.titleEnglish,
            style: AppType.en(20,
                weight: FontWeight.w700, color: AppColors.onForest),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            lesson.summary,
            style: AppType.en(14,
                color: AppColors.onForest.withValues(alpha: 0.82), height: 1.5),
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              _HeroMeta(
                icon: PhosphorIconsFill.clock,
                label: '${lesson.estimatedMinutes} min',
              ),
              const SizedBox(width: AppSpacing.sm),
              _HeroMeta(
                icon: PhosphorIconsFill.stack,
                label: '${lesson.sections.length} parts',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeroMeta extends StatelessWidget {
  const _HeroMeta({required this.icon, required this.label});

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
            style: AppType.en(12, weight: FontWeight.w600, color: AppColors.sand),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
/// The custom segmented control for Concept / Examples / Rules.
class _SegmentedTabs extends StatelessWidget {
  const _SegmentedTabs({
    required this.kinds,
    required this.selected,
    required this.onChanged,
  });

  final List<SectionKind> kinds;
  final SectionKind selected;
  final ValueChanged<SectionKind> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.sand.withValues(alpha: 0.6),
        borderRadius: AppRadius.chip,
        border: Border.all(color: AppColors.border, width: AppBorders.hairline),
      ),
      child: Row(
        children: [
          for (final kind in kinds)
            Expanded(
              child: _Segment(
                kind: kind,
                selected: kind == selected,
                onTap: () => onChanged(kind),
              ),
            ),
        ],
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.kind,
    required this.selected,
    required this.onTap,
  });

  final SectionKind kind;
  final bool selected;
  final VoidCallback onTap;

  String get _label => switch (kind) {
        SectionKind.concept => 'Concept',
        SectionKind.examples => 'Examples',
        SectionKind.rules => 'Rules',
      };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 240),
        curve: Curves.easeOutCubic,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? AppColors.forest : Colors.transparent,
          borderRadius: AppRadius.chip,
        ),
        child: Text(
          _label,
          style: AppType.en(
            13,
            weight: FontWeight.w700,
            color: selected ? AppColors.onForest : AppColors.inkMuted,
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
/// Renders a single [LessonSection] according to its [SectionKind].
class _SectionView extends StatelessWidget {
  const _SectionView({required this.section});

  final LessonSection section;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MizanSectionHeader(
          overline: switch (section.kind) {
            SectionKind.concept => 'Understand',
            SectionKind.examples => 'See it',
            SectionKind.rules => 'Remember',
          },
          title: section.title,
        ),
        const SizedBox(height: AppSpacing.lg),
        switch (section.kind) {
          SectionKind.concept => _ConceptContent(
              body: section.body,
              definitions: section.definitions,
            ),
          SectionKind.examples => _ExamplesList(examples: section.examples),
          SectionKind.rules => _RulesList(rules: section.rules),
        },
      ],
    );
  }
}

/// Concept body = an optional prose intro followed by any formal definitions,
/// each rendered in the textbook-style [MizanDefinitionBox].
class _ConceptContent extends StatelessWidget {
  const _ConceptContent({required this.body, required this.definitions});

  final String? body;
  final List<Definition> definitions;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];

    if (body != null && body!.trim().isNotEmpty) {
      children.add(
        AlMizanCard(
          child: Text(body!, style: AppType.body.copyWith(height: 1.6)),
        ),
      );
    }

    for (final def in definitions) {
      if (children.isNotEmpty) {
        children.add(const SizedBox(height: AppSpacing.md));
      }
      children.add(
        MizanDefinitionBox(
          term: def.term,
          termArabic: def.termArabic,
          definition: def.body,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}

class _ExamplesList extends StatelessWidget {
  const _ExamplesList({required this.examples});

  final List<ExampleItem> examples;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < examples.length; i++)
          Padding(
            padding: EdgeInsets.only(
              bottom: i == examples.length - 1 ? 0 : AppSpacing.md,
            ),
            child: _ExampleCard(example: examples[i]),
          ),
      ],
    );
  }
}

class _ExampleCard extends StatelessWidget {
  const _ExampleCard({required this.example});

  final ExampleItem example;

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ArabicText(example.arabic, size: 26),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            '${example.translation} · ${example.transliteration}',
            style: AppType.en(13,
                weight: FontWeight.w600, color: AppColors.forest),
          ),
          if (example.note != null) ...[
            const SizedBox(height: AppSpacing.md),
            Container(
              padding: const EdgeInsets.all(AppSpacing.md),
              decoration: BoxDecoration(
                color: AppColors.sand.withValues(alpha: 0.5),
                borderRadius: AppRadius.soft,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(PhosphorIconsRegular.lightbulb,
                      size: 16, color: AppColors.burntOrange),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(
                    child: Text(
                      example.note!,
                      style: AppType.en(12.5,
                          color: AppColors.inkMuted, height: 1.45),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _RulesList extends StatelessWidget {
  const _RulesList({required this.rules});

  final List<RuleItem> rules;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < rules.length; i++)
          Padding(
            padding: EdgeInsets.only(
              bottom: i == rules.length - 1 ? 0 : AppSpacing.md,
            ),
            child: _RuleCard(index: i + 1, rule: rules[i]),
          ),
      ],
    );
  }
}

class _RuleCard extends StatelessWidget {
  const _RuleCard({required this.index, required this.rule});

  final int index;
  final RuleItem rule;

  @override
  Widget build(BuildContext context) {
    return AlMizanCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.burntOrangeSoft,
              shape: BoxShape.circle,
            ),
            child: Text(
              '$index',
              style: AppType.en(13,
                  weight: FontWeight.w800, color: AppColors.burntOrange),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(rule.statement, style: AppType.body.copyWith(height: 1.5)),
                if (rule.arabicExemplar != null) ...[
                  const SizedBox(height: AppSpacing.md),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ArabicText(rule.arabicExemplar!, size: 22),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
