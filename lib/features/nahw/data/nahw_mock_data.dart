import 'package:al_mizan/core/domain/lesson.dart';

/// Mock curriculum content for the Nahw module.
///
/// In the real app this comes from a repository backed by local JSON or a
/// remote API; the presentation layer only ever sees [Lesson] entities, so
/// swapping the source later changes nothing above the data layer.
const List<Lesson> kNahwLessons = [_typesOfWords];

/// Lesson 1 — أقسام الكلمة (Types of Words: Ism, Fiʿl, Harf).
const Lesson _typesOfWords = Lesson(
  id: 'nahw-01-types-of-words',
  order: 1,
  titleArabic: 'أَقْسَامُ الْكَلِمَة',
  titleEnglish: 'Types of Words',
  summary:
      'Every Arabic word is one of three kinds: a noun (Ism), a verb (Fiʿl), '
      'or a particle (Harf). Learn to tell them apart.',
  estimatedMinutes: 6,
  sections: [
    // ── CONCEPT ────────────────────────────────────────────────────────────
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Three Kinds of Word',
      body:
          'In Arabic grammar, the كَلِمَة (word) is the smallest meaningful '
          'unit, and it is always one of exactly three categories:\n\n'
          '• الاِسْم (Ism) — a noun: names a person, place, thing, or idea, '
          'with no notion of time.\n'
          '• الفِعْل (Fiʿl) — a verb: an action or state bound to a time '
          '(past, present, or command).\n'
          '• الحَرْف (Harf) — a particle: has no independent meaning and only '
          'works when joined to a noun or verb (like “in”, “from”, “and”).',
    ),

    // ── EXAMPLES ─────────────────────────────────────────────────────────────
    LessonSection(
      kind: SectionKind.examples,
      title: 'Spot Each Type',
      examples: [
        ExampleItem(
          arabic: 'مَسْجِدٌ',
          transliteration: 'masjidun',
          translation: 'a mosque',
          note: 'Ism — a thing, carries tanwīn (ٌ), accepts “al-”.',
        ),
        ExampleItem(
          arabic: 'كَتَبَ',
          transliteration: 'kataba',
          translation: 'he wrote',
          note: 'Fiʿl — an action fixed in past time.',
        ),
        ExampleItem(
          arabic: 'فِي الْبَيْتِ',
          transliteration: 'fī al-bayt',
          translation: 'in the house',
          note: 'Harf — فِي (“in”) only makes sense attached to a noun.',
        ),
        ExampleItem(
          arabic: 'يَذْهَبُ الطَّالِبُ إِلَى الْمَدْرَسَةِ',
          transliteration: 'yadhhabu aṭ-ṭālibu ilā al-madrasah',
          translation: 'The student goes to the school',
          note: 'يَذْهَبُ = Fiʿl · الطَّالِبُ = Ism · إِلَى = Harf · '
              'الْمَدْرَسَةِ = Ism.',
        ),
      ],
    ),

    // ── RULES ────────────────────────────────────────────────────────────────
    LessonSection(
      kind: SectionKind.rules,
      title: 'Signs That Identify Each Type',
      rules: [
        RuleItem(
          statement:
              'A word is an Ism if it accepts “al-” (الـ), tanwīn, or a '
              'genitive (jarr) ending.',
          arabicExemplar: 'الْكِتَابُ — كِتَابٌ — بِكِتَابٍ',
        ),
        RuleItem(
          statement:
              'A word is a Fiʿl if it accepts tense markers — e.g. the '
              'prefix سَـ / سوف for the future, or a command form.',
          arabicExemplar: 'كَتَبَ — يَكْتُبُ — اُكْتُبْ',
        ),
        RuleItem(
          statement:
              'A word is a Harf if it carries none of the signs of nouns or '
              'verbs and only conveys meaning when linked to them.',
          arabicExemplar: 'مِنْ — إِلَى — فِي — وَ',
        ),
      ],
    ),
  ],
);
