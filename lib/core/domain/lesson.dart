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

/// A formal definition (تَعْرِيف): a term and its meaning.
///
/// Khulāṣat-un-Naḥw teaches almost entirely through formal definitions, so a
/// definition is a first-class part of a lesson. Rendered by the bespoke
/// `MizanDefinitionBox` widget.
@immutable
class Definition {
  const Definition({
    required this.term,
    required this.body,
    this.termArabic,
  });

  /// The transliterated/English term, e.g. "Naḥw".
  final String term;

  /// The Arabic form of the term, e.g. "النَّحْو" (Amiri, RTL).
  final String? termArabic;

  /// The English explanation of the term.
  final String body;
}

/// One pedagogical block within a lesson.
@immutable
class LessonSection {
  const LessonSection({
    required this.kind,
    required this.title,
    this.body,
    this.definitions = const [],
    this.examples = const [],
    this.rules = const [],
  });

  final SectionKind kind;
  final String title;

  /// Free-form English explanation (Concept sections).
  final String? body;

  /// Formal definitions surfaced in this section (Concept sections).
  final List<Definition> definitions;

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
