import 'package:flutter/foundation.dart';

/// ── Sarf (morphology) domain entities ──────────────────────────────────────
///
/// A [SarfRoot] (e.g. ك-ت-ب) is conjugated across morphological *scales*
/// (الصرف) — Madi (past), Mudari (present), Amr (imperative) — and across the
/// classical 14 pronoun forms (الضمائر). The conjugation table renders this
/// as a grid: one column per scale, one row per pronoun.

/// The morphological tense / scale.
enum SarfScale {
  madi('الماضي', 'Al-Mādī', 'Past'),
  mudari('المضارع', 'Al-Muḍāriʿ', 'Present'),
  amr('الأمر', 'Al-Amr', 'Imperative');

  const SarfScale(this.arabic, this.transliteration, this.english);

  final String arabic;
  final String transliteration;
  final String english;
}

/// A classical Arabic pronoun (الضمير) that labels a conjugation row.
@immutable
class Pronoun {
  const Pronoun({
    required this.arabic,
    required this.transliteration,
    required this.english,
    required this.person,
  });

  final String arabic; // e.g. هُوَ
  final String transliteration; // e.g. Huwa
  final String english; // e.g. He
  final String person; // e.g. 3rd · m · sg
}

/// A single conjugated form sitting at (pronoun × scale).
@immutable
class ConjugationCell {
  const ConjugationCell({
    required this.arabic,
    required this.transliteration,
    this.isAbsent = false,
  });

  /// The fully-vowelled conjugated word, e.g. كَتَبَ.
  final String arabic;
  final String transliteration;

  /// Some cells don't exist (e.g. Amr only applies to 2nd person).
  final bool isAbsent;

  static const ConjugationCell absent =
      ConjugationCell(arabic: '—', transliteration: '', isAbsent: true);
}

@immutable
class SarfRoot {
  const SarfRoot({
    required this.id,
    required this.radicals,
    required this.coreMeaning,
    required this.pronouns,
    required this.cells,
  });

  /// The three (or more) root letters, e.g. ['ك', 'ت', 'ب'].
  final List<String> radicals;

  final String id;
  final String coreMeaning; // "to write"

  /// Pronoun rows, in canonical order.
  final List<Pronoun> pronouns;

  /// cells[scale]![pronounIndex] → the conjugated form.
  final Map<SarfScale, List<ConjugationCell>> cells;

  /// "ك · ت · ب" — a display-friendly spaced root.
  String get radicalDisplay => radicals.join(' · ');

  /// "K–T–B" — latinised root signature.
  String get radicalLatin => radicals.map((r) => _latin[r] ?? r).join('–');

  static const Map<String, String> _latin = {
    'ك': 'K',
    'ت': 'T',
    'ب': 'B',
  };
}
