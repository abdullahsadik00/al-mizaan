import 'package:flutter/foundation.dart';

/// The learning modules surfaced on the dashboard grid.
enum ModuleKind {
  nahw('Nahw', 'النَّحْو', 'Syntax & sentence structure'),
  sarf('Sarf', 'الصَّرْف', 'Morphology & conjugation'),
  vocab('Vocabulary', 'المُفْرَدَات', 'Daily words & flashcards');

  const ModuleKind(this.english, this.arabic, this.blurb);

  final String english;
  final String arabic;
  final String blurb;
}

/// Snapshot of the learner's progress for today.
@immutable
class DailyProgress {
  const DailyProgress({
    required this.wordsLearned,
    required this.dailyGoal,
    required this.streakDays,
    required this.minutesToday,
  });

  final int wordsLearned;
  final int dailyGoal;
  final int streakDays;
  final int minutesToday;

  /// 0.0–1.0 completion of today's goal.
  double get fraction =>
      dailyGoal == 0 ? 0 : (wordsLearned / dailyGoal).clamp(0, 1);

  int get percent => (fraction * 100).round();
}

/// A single highlighted concept for the day.
@immutable
class TopicOfTheDay {
  const TopicOfTheDay({
    required this.arabic,
    required this.transliteration,
    required this.english,
    required this.blurb,
    required this.module,
  });

  final String arabic;
  final String transliteration;
  final String english;
  final String blurb;
  final ModuleKind module;
}

/// A vocabulary flashcard for the gesture-based card deck.
@immutable
class Flashcard {
  const Flashcard({
    required this.arabic,
    required this.transliteration,
    required this.meaning,
    required this.root,
    this.exampleArabic,
    this.exampleEnglish,
  });

  final String arabic;
  final String transliteration;
  final String meaning;
  final String root;
  final String? exampleArabic;
  final String? exampleEnglish;
}
