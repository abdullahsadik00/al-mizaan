import 'package:flutter/foundation.dart';

/// Shared lesson vocabulary used by every curriculum feature (Nahw, Sarf, …).
///
/// Lives in `core/domain` because a "lesson made of Concept / Examples / Rules
/// sections" is a cross-cutting concept, not owned by any single feature.

enum SectionKind { concept, examples, rules }

/// A bilingual Arabic example with transliteration & gloss.
@immutable
class ExampleItem {
  const ExampleItem({
    required this.arabic,
    required this.transliteration,
    required this.translation,
    this.note,
  });

  final String arabic;
  final String transliteration;
  final String translation;

  /// Optional teaching note shown beneath the example.
  final String? note;
}

/// A single rule: an English statement plus an optional Arabic exemplar.
@immutable
class RuleItem {
  const RuleItem({required this.statement, this.arabicExemplar});

  final String statement;
  final String? arabicExemplar;
}

/// One pedagogical block within a lesson.
@immutable
class LessonSection {
  const LessonSection({
    required this.kind,
    required this.title,
    this.body,
    this.examples = const [],
    this.rules = const [],
  });

  final SectionKind kind;
  final String title;

  /// Free-form English explanation (Concept sections).
  final String? body;

  final List<ExampleItem> examples;
  final List<RuleItem> rules;
}

/// A curriculum lesson, composed of ordered [LessonSection]s.
@immutable
class Lesson {
  const Lesson({
    required this.id,
    required this.order,
    required this.titleArabic,
    required this.titleEnglish,
    required this.summary,
    required this.estimatedMinutes,
    required this.sections,
  });

  final String id;
  final int order;
  final String titleArabic;
  final String titleEnglish;
  final String summary;
  final int estimatedMinutes;
  final List<LessonSection> sections;
}
