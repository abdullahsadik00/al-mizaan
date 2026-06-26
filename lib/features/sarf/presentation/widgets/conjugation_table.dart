import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:al_mizan/app/app_providers.dart';
import 'package:al_mizan/core/theme/app_colors.dart';
import 'package:al_mizan/core/theme/app_dimens.dart';
import 'package:al_mizan/core/theme/app_typography.dart';
import 'package:al_mizan/core/widgets/arabic_text.dart';
import 'package:al_mizan/features/sarf/domain/sarf_root.dart';

/// A bespoke conjugation table.
///
/// Layout strategy (so Arabic script stays elegant and aligned):
///  • The pronoun column is **sticky horizontally** — it never pans away.
///  • The scale header is **sticky vertically** — it stays while rows scroll.
///  • The data grid pans horizontally through the tenses; a second
///    (non-interactive) header scroll view is kept in sync so the column
///    titles track the cells beneath them.
///
/// Tapping a scale header — or the chips above — highlights that column.
class ConjugationTable extends ConsumerStatefulWidget {
  const ConjugationTable({super.key, required this.root});

  final SarfRoot root;

  @override
  ConsumerState<ConjugationTable> createState() => _ConjugationTableState();
}

class _ConjugationTableState extends ConsumerState<ConjugationTable> {
  static const double _pronounWidth = 118;
  static const double _colWidth = 138;
  static const double _rowHeight = 78;
  static const double _headerHeight = 54;

  final ScrollController _bodyH = ScrollController();
  final ScrollController _headerH = ScrollController();
  bool _syncing = false;

  @override
  void initState() {
    super.initState();
    // Mirror horizontal panning from the body onto the header.
    _bodyH.addListener(() {
      if (_syncing || !_headerH.hasClients) return;
      _syncing = true;
      _headerH.jumpTo(_bodyH.offset);
      _syncing = false;
    });
  }

  @override
  void dispose() {
    _bodyH.dispose();
    _headerH.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final root = widget.root;
    const scales = SarfScale.values;
    final selected = ref.watch(selectedScaleProvider);

    return ClipRRect(
      borderRadius: AppRadius.card,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppRadius.card,
          border: Border.all(
            color: AppColors.border,
            width: AppBorders.hairline,
          ),
        ),
        child: Column(
          children: [
            // ── Header row: pronoun corner + scrollable scale titles ─────────
            SizedBox(
              height: _headerHeight,
              child: Row(
                children: [
                  _cornerCell(root),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _headerH,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      child: Row(
                        children: [
                          for (final s in scales)
                            _scaleHeaderCell(s, s == selected),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: AppBorders.hairline),

            // ── Body: sticky pronoun column + panning data grid ──────────────
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sticky pronoun column.
                    Column(
                      children: [
                        for (var r = 0; r < root.pronouns.length; r++)
                          _pronounCell(root.pronouns[r], r.isOdd),
                      ],
                    ),
                    // Horizontally-scrollable conjugations.
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _bodyH,
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            for (var r = 0; r < root.pronouns.length; r++)
                              Row(
                                children: [
                                  for (final s in scales)
                                    _dataCell(
                                      root.cells[s]![r],
                                      highlighted: s == selected,
                                      striped: r.isOdd,
                                    ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Cells ──────────────────────────────────────────────────────────────────
  Widget _cornerCell(SarfRoot root) {
    return Container(
      width: _pronounWidth,
      height: _headerHeight,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      color: AppColors.forest,
      child: ArabicText(
        root.radicalDisplay,
        size: 18,
        color: AppColors.onForest,
        align: TextAlign.left,
      ),
    );
  }

  Widget _scaleHeaderCell(SarfScale scale, bool selected) {
    return GestureDetector(
      onTap: () => ref.read(selectedScaleProvider.notifier).state = scale,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        width: _colWidth,
        height: _headerHeight,
        alignment: Alignment.center,
        color: selected
            ? AppColors.forest
            : AppColors.forest.withValues(alpha: 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ArabicText(
              scale.arabic,
              size: 17,
              color: selected ? AppColors.onForest : AppColors.forest,
            ),
            Text(
              scale.english,
              style: AppType.en(
                10,
                weight: FontWeight.w600,
                color: selected ? AppColors.sand : AppColors.inkMuted,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pronounCell(Pronoun pronoun, bool striped) {
    return Container(
      width: _pronounWidth,
      height: _rowHeight,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      decoration: BoxDecoration(
        color: striped
            ? AppColors.sand.withValues(alpha: 0.35)
            : AppColors.surface,
        border: const Border(
          right:
              BorderSide(color: AppColors.border, width: AppBorders.hairline),
          bottom:
              BorderSide(color: AppColors.border, width: AppBorders.hairline),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArabicText(pronoun.arabic, size: 20, align: TextAlign.left),
          const SizedBox(height: 2),
          Text(
            pronoun.transliteration,
            style: AppType.en(12,
                weight: FontWeight.w600, color: AppColors.forest),
          ),
          Text(
            pronoun.person,
            style:
                AppType.en(9.5, color: AppColors.inkFaint, letterSpacing: 0.3),
          ),
        ],
      ),
    );
  }

  Widget _dataCell(
    ConjugationCell cell, {
    required bool highlighted,
    required bool striped,
  }) {
    final Color bg;
    if (highlighted) {
      bg = AppColors.burntOrangeSoft.withValues(alpha: 0.5);
    } else if (striped) {
      bg = AppColors.sand.withValues(alpha: 0.22);
    } else {
      bg = AppColors.surface;
    }

    return Container(
      width: _colWidth,
      height: _rowHeight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bg,
        border: const Border(
          bottom:
              BorderSide(color: AppColors.border, width: AppBorders.hairline),
        ),
      ),
      child: cell.isAbsent
          ? Text('—', style: AppType.en(18, color: AppColors.inkFaint))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ArabicText(
                  cell.arabic,
                  size: 24,
                  align: TextAlign.center,
                  color: highlighted
                      ? AppColors.burntOrange
                      : AppColors.forestDeep,
                ),
                const SizedBox(height: 3),
                Text(
                  cell.transliteration,
                  style: AppType.en(11, color: AppColors.inkMuted),
                ),
              ],
            ),
    );
  }
}
