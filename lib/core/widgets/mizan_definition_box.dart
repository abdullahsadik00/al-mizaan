import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import 'arabic_text.dart';

/// A bespoke "definition" panel styled after a traditional Dars-e-Nizami
/// textbook (Khulāṣat-un-Naḥw).
///
/// • Background: a very pale cream (#FDFCF5) — the paper feel of the book.
/// • Border: a 1.5px Deep-Green rule on the **right** side only, for RTL
///   emphasis (the right edge is where an Arabic line begins).
/// • The term sits in Burnt Orange; the definition in Deep Green.
class MizanDefinitionBox extends StatelessWidget {
  const MizanDefinitionBox({
    super.key,
    required this.term,
    required this.definition,
    this.termArabic,
  });

  /// The transliterated/English term, e.g. "Naḥw".
  final String term;

  /// Optional Arabic form of the term, e.g. "النَّحْو" (rendered in Amiri, RTL).
  final String? termArabic;

  /// The English explanation, shown in Deep Green.
  final String definition;

  /// The pale cream paper tone called for in the spec.
  static const Color _paper = Color(0xFFFDFCF5);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: _paper,
        // Right-side rule only (RTL emphasis). No borderRadius here — a
        // non-uniform border cannot be combined with rounded corners.
        border: Border(
          right: BorderSide(color: AppColors.forest, width: 1.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Term ──────────────────────────────────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  term,
                  style: AppType.en(
                    16,
                    weight: FontWeight.w800,
                    color: AppColors.burntOrange,
                  ),
                ),
              ),
              if (termArabic != null) ...[
                const SizedBox(width: 8),
                ArabicText(
                  termArabic!,
                  size: 24,
                  color: AppColors.forest,
                ),
              ],
            ],
          ),
          const SizedBox(height: 8),
          // ── Definition ────────────────────────────────────────────────────
          Text(
            definition,
            style: AppType.en(
              14,
              color: AppColors.forest,
              height: 1.55,
            ),
          ),
        ],
      ),
    );
  }
}
