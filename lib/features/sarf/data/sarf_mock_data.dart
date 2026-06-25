import 'package:al_mizan/core/domain/lesson.dart';
import 'package:al_mizan/features/sarf/domain/sarf_root.dart';

/// Mock data for the Sarf module: the conjugation engine seed (ك-ت-ب) and the
/// introductory concept lesson on the three-letter root system.

// ── The 14 classical pronoun rows (الضمائر) ─────────────────────────────────
const List<Pronoun> _pronouns = [
  Pronoun(arabic: 'هُوَ', transliteration: 'Huwa', english: 'He', person: '3rd · m · sg'),
  Pronoun(arabic: 'هُمَا', transliteration: 'Humā', english: 'They two (m)', person: '3rd · m · dual'),
  Pronoun(arabic: 'هُمْ', transliteration: 'Hum', english: 'They (m)', person: '3rd · m · pl'),
  Pronoun(arabic: 'هِيَ', transliteration: 'Hiya', english: 'She', person: '3rd · f · sg'),
  Pronoun(arabic: 'هُمَا', transliteration: 'Humā', english: 'They two (f)', person: '3rd · f · dual'),
  Pronoun(arabic: 'هُنَّ', transliteration: 'Hunna', english: 'They (f)', person: '3rd · f · pl'),
  Pronoun(arabic: 'أَنْتَ', transliteration: 'Anta', english: 'You (m)', person: '2nd · m · sg'),
  Pronoun(arabic: 'أَنْتُمَا', transliteration: 'Antumā', english: 'You two (m)', person: '2nd · m · dual'),
  Pronoun(arabic: 'أَنْتُمْ', transliteration: 'Antum', english: 'You all (m)', person: '2nd · m · pl'),
  Pronoun(arabic: 'أَنْتِ', transliteration: 'Anti', english: 'You (f)', person: '2nd · f · sg'),
  Pronoun(arabic: 'أَنْتُمَا', transliteration: 'Antumā', english: 'You two (f)', person: '2nd · f · dual'),
  Pronoun(arabic: 'أَنْتُنَّ', transliteration: 'Antunna', english: 'You all (f)', person: '2nd · f · pl'),
  Pronoun(arabic: 'أَنَا', transliteration: 'Anā', english: 'I', person: '1st · sg'),
  Pronoun(arabic: 'نَحْنُ', transliteration: 'Naḥnu', english: 'We', person: '1st · pl'),
];

// ك-ت-ب · "to write" — the canonical sound (sahih) verb used to teach Sarf.
const SarfRoot kKatabaRoot = SarfRoot(
  id: 'sarf-root-ktb',
  radicals: ['ك', 'ت', 'ب'],
  coreMeaning: 'to write',
  pronouns: _pronouns,
  cells: {
    // الماضي — Past
    SarfScale.madi: [
      ConjugationCell(arabic: 'كَتَبَ', transliteration: 'kataba'),
      ConjugationCell(arabic: 'كَتَبَا', transliteration: 'katabā'),
      ConjugationCell(arabic: 'كَتَبُوا', transliteration: 'katabū'),
      ConjugationCell(arabic: 'كَتَبَتْ', transliteration: 'katabat'),
      ConjugationCell(arabic: 'كَتَبَتَا', transliteration: 'katabatā'),
      ConjugationCell(arabic: 'كَتَبْنَ', transliteration: 'katabna'),
      ConjugationCell(arabic: 'كَتَبْتَ', transliteration: 'katabta'),
      ConjugationCell(arabic: 'كَتَبْتُمَا', transliteration: 'katabtumā'),
      ConjugationCell(arabic: 'كَتَبْتُمْ', transliteration: 'katabtum'),
      ConjugationCell(arabic: 'كَتَبْتِ', transliteration: 'katabti'),
      ConjugationCell(arabic: 'كَتَبْتُمَا', transliteration: 'katabtumā'),
      ConjugationCell(arabic: 'كَتَبْتُنَّ', transliteration: 'katabtunna'),
      ConjugationCell(arabic: 'كَتَبْتُ', transliteration: 'katabtu'),
      ConjugationCell(arabic: 'كَتَبْنَا', transliteration: 'katabnā'),
    ],
    // المضارع — Present
    SarfScale.mudari: [
      ConjugationCell(arabic: 'يَكْتُبُ', transliteration: 'yaktubu'),
      ConjugationCell(arabic: 'يَكْتُبَانِ', transliteration: 'yaktubāni'),
      ConjugationCell(arabic: 'يَكْتُبُونَ', transliteration: 'yaktubūna'),
      ConjugationCell(arabic: 'تَكْتُبُ', transliteration: 'taktubu'),
      ConjugationCell(arabic: 'تَكْتُبَانِ', transliteration: 'taktubāni'),
      ConjugationCell(arabic: 'يَكْتُبْنَ', transliteration: 'yaktubna'),
      ConjugationCell(arabic: 'تَكْتُبُ', transliteration: 'taktubu'),
      ConjugationCell(arabic: 'تَكْتُبَانِ', transliteration: 'taktubāni'),
      ConjugationCell(arabic: 'تَكْتُبُونَ', transliteration: 'taktubūna'),
      ConjugationCell(arabic: 'تَكْتُبِينَ', transliteration: 'taktubīna'),
      ConjugationCell(arabic: 'تَكْتُبَانِ', transliteration: 'taktubāni'),
      ConjugationCell(arabic: 'تَكْتُبْنَ', transliteration: 'taktubna'),
      ConjugationCell(arabic: 'أَكْتُبُ', transliteration: 'aktubu'),
      ConjugationCell(arabic: 'نَكْتُبُ', transliteration: 'naktubu'),
    ],
    // الأمر — Imperative (2nd person only; the rest are absent by nature)
    SarfScale.amr: [
      ConjugationCell.absent,
      ConjugationCell.absent,
      ConjugationCell.absent,
      ConjugationCell.absent,
      ConjugationCell.absent,
      ConjugationCell.absent,
      ConjugationCell(arabic: 'اُكْتُبْ', transliteration: 'uktub'),
      ConjugationCell(arabic: 'اُكْتُبَا', transliteration: 'uktubā'),
      ConjugationCell(arabic: 'اُكْتُبُوا', transliteration: 'uktubū'),
      ConjugationCell(arabic: 'اُكْتُبِي', transliteration: 'uktubī'),
      ConjugationCell(arabic: 'اُكْتُبَا', transliteration: 'uktubā'),
      ConjugationCell(arabic: 'اُكْتُبْنَ', transliteration: 'uktubna'),
      ConjugationCell.absent,
      ConjugationCell.absent,
    ],
  },
);

/// Sarf concept lessons.
const List<Lesson> kSarfLessons = [_threeLetterRoot];

/// Lesson 1 — نِظَامُ الجَذْرِ الثُّلَاثِيّ (The Three-Letter Root System).
const Lesson _threeLetterRoot = Lesson(
  id: 'sarf-01-three-letter-root',
  order: 1,
  titleArabic: 'نِظَامُ الجَذْرِ الثُّلَاثِيّ',
  titleEnglish: 'The Three-Letter Root System',
  summary:
      'Most Arabic words grow from a skeleton of three consonants. Master the '
      'root and you unlock a whole family of related words.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'What Is a Root?',
      body:
          'Arabic is a root-and-pattern language. A جَذْر (root) is usually '
          'three consonants — called radicals — that carry a core idea. '
          'Pouring those radicals into different مَوْزَن (patterns) produces '
          'nouns, verbs, and descriptions that all share that idea.\n\n'
          'The classic teaching root is ك-ت-ب, whose core meaning is '
          '“writing”. Every word built on it keeps a trace of that meaning.',
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'One Root, Many Words',
      examples: [
        ExampleItem(
          arabic: 'كَتَبَ',
          transliteration: 'kataba',
          translation: 'he wrote',
          note: 'The bare verb — the root in its simplest past form.',
        ),
        ExampleItem(
          arabic: 'كِتَاب',
          transliteration: 'kitāb',
          translation: 'a book',
          note: 'The thing that is written.',
        ),
        ExampleItem(
          arabic: 'كَاتِب',
          transliteration: 'kātib',
          translation: 'a writer',
          note: 'The doer (ism fāʿil) of writing.',
        ),
        ExampleItem(
          arabic: 'مَكْتَب',
          transliteration: 'maktab',
          translation: 'an office / desk',
          note: 'The place of writing (ism makān).',
        ),
        ExampleItem(
          arabic: 'مَكْتَبَة',
          transliteration: 'maktabah',
          translation: 'a library',
          note: 'Another place pattern — where books are kept.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'How the System Works',
      rules: [
        RuleItem(
          statement:
              'The radicals keep their order. ك-ت-ب never becomes ت-ك-ب; '
              'the sequence is the identity of the root.',
          arabicExemplar: 'ك → ت → ب',
        ),
        RuleItem(
          statement:
              'Patterns are described against the template ف-ع-ل, where '
              'ف is the 1st radical, ع the 2nd, and ل the 3rd.',
          arabicExemplar: 'فَعَلَ ↔ كَتَبَ',
        ),
        RuleItem(
          statement:
              'Changing the pattern (the vowels and added letters) — not the '
              'radicals — is what changes the meaning and the part of speech.',
          arabicExemplar: 'كَاتِب (doer) · مَكْتُوب (done)',
        ),
      ],
    ),
  ],
);
