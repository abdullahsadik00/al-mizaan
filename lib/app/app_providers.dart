import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:al_mizan/core/domain/lesson.dart';
import 'package:al_mizan/features/home/data/home_mock_data.dart';
import 'package:al_mizan/features/home/domain/dashboard.dart';
import 'package:al_mizan/features/nahw/data/nahw_mock_data.dart';
import 'package:al_mizan/features/sarf/data/sarf_mock_data.dart';
import 'package:al_mizan/features/sarf/domain/sarf_root.dart';

/// Application-layer providers. Presentation reads only from these, never from
/// the data sources directly — so the data layer can be swapped wholesale
/// (local JSON, REST, isar, …) without touching widgets.

// ── Shell ────────────────────────────────────────────────────────────────
/// Currently selected tab in the floating bottom navigation.
final navIndexProvider = StateProvider<int>((ref) => 0);

// ── Home / dashboard ───────────────────────────────────────────────────────
final dailyProgressProvider = Provider<DailyProgress>((ref) => kDailyProgress);

final topicOfTheDayProvider = Provider<TopicOfTheDay>((ref) => kTopicOfTheDay);

final flashcardsProvider = Provider<List<Flashcard>>((ref) => kFlashcards);

// ── Nahw ─────────────────────────────────────────────────────────────────
final nahwLessonsProvider = Provider<List<Lesson>>((ref) => kNahwLessons);

// ── Sarf ─────────────────────────────────────────────────────────────────
final sarfLessonsProvider = Provider<List<Lesson>>((ref) => kSarfLessons);

/// The root currently being conjugated (seeded with ك-ت-ب).
final sarfRootProvider = Provider<SarfRoot>((ref) => kKatabaRoot);

/// Which morphological scale (column) is highlighted in the table.
final selectedScaleProvider = StateProvider<SarfScale>((ref) => SarfScale.madi);
