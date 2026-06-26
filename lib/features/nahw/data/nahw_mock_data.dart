import 'package:al_mizan/core/domain/lesson.dart';

/// Nahw curriculum content, digitised from **Khulāṣat-un-Naḥw** (the syntax
/// primer of the Dars-e-Nizami course).
///
/// The presentation layer only ever sees [Lesson] entities, so swapping this
/// for a JSON/remote source later changes nothing above the data layer.
const List<Lesson> kNahwLessons = [
  _muqaddimah,
  _theWord,
  _theSigns,
];

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 1 — المُقَدِّمَة (Introduction): the definition, subject, and purpose
/// of the science of Naḥw.
const Lesson _muqaddimah = Lesson(
  id: 'nahw-01-muqaddimah',
  order: 1,
  titleArabic: 'المُقَدِّمَة',
  titleEnglish: 'Introduction (Muqaddimah)',
  summary:
      'Before grammar itself, three questions: What is Naḥw? What does it '
      'study? And why is it studied at all?',
  estimatedMinutes: 5,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Science of Naḥw',
      body:
          'Every science is introduced by three things: its definition '
          '(taʿrīf), its subject matter (mawḍūʿ), and its purpose (gharaḍ). '
          'Here they are for the science of Naḥw.',
      definitions: [
        Definition(
          term: 'Definition (Taʿrīf)',
          termArabic: 'النَّحْو',
          body:
              'A science that teaches how to join nouns, verbs, and particles '
              'to make a sentence, and the state of the last letter of each '
              'word (its iʿrāb).',
        ),
        Definition(
          term: 'Subject (Mawḍūʿ)',
          termArabic: 'المَوْضُوع',
          body:
              'Its subject matter is Words (Kalimah) and Sentences (Kalām) — '
              'this is what the science of Naḥw examines.',
        ),
        Definition(
          term: 'Purpose (Gharaḍ)',
          termArabic: 'الغَرَض',
          body:
              'To guard against verbal error in understanding the Qurʾān, the '
              'Ḥadīth, and the Arabic language.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'The Three Pillars',
      rules: [
        RuleItem(
          statement:
              'Naḥw governs how words combine into a sentence and the state '
              'of each word’s final letter.',
        ),
        RuleItem(
          statement:
              'Its subject is the Word (Kalimah) and the Sentence (Kalām).',
        ),
        RuleItem(
          statement:
              'Its goal is to read and understand the Qurʾān, Ḥadīth, and '
              'Arabic correctly, free of error.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 2 — اللَّفْظ (The Word): its definition and its divisions.
const Lesson _theWord = Lesson(
  id: 'nahw-02-the-word',
  order: 2,
  titleArabic: 'اللَّفْظ',
  titleEnglish: 'The Word (Lafẓ)',
  summary:
      'Every sound a person utters is a lafẓ — but only some carry meaning, '
      'and of those, some are single words and some are compounds.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'What Is Lafẓ?',
      body:
          'Grammar begins with the لَفْظ. A lafẓ is first sorted by whether it '
          'carries a meaning.',
      definitions: [
        Definition(
          term: 'Lafẓ',
          termArabic: 'اللَّفْظ',
          body: 'The sounds that a human being produces.',
        ),
        Definition(
          term: 'Maudūʿ (Meaningful)',
          termArabic: 'المَوْضُوع',
          body: 'A lafẓ that has been coined for a meaning — e.g. Qalam (a pen).',
        ),
        Definition(
          term: 'Muhmal (Meaningless)',
          termArabic: 'المُهْمَل',
          body: 'A lafẓ that carries no meaning — e.g. Dayz.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Dividing the Meaningful Word',
      body:
          'A meaningful (maudūʿ) word is then divided into two kinds, by '
          'whether it stands alone or is built from several words.',
      definitions: [
        Definition(
          term: 'Mufrad (Kalimah)',
          termArabic: 'المُفْرَد',
          body: 'A single meaningful word — e.g. Jamal (a camel).',
        ),
        Definition(
          term: 'Murakkab',
          termArabic: 'المُرَكَّب',
          body: 'A group of words joined together — e.g. Laylat-ul-Qadr.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'See It',
      examples: [
        ExampleItem(
          arabic: 'قَلَم',
          transliteration: 'qalam',
          translation: 'a pen',
          note: 'Maudūʿ — a meaningful word.',
        ),
        ExampleItem(
          arabic: 'دَيْز',
          transliteration: 'dayz',
          translation: '(no meaning)',
          note: 'Muhmal — sounds, but no meaning.',
        ),
        ExampleItem(
          arabic: 'جَمَل',
          transliteration: 'jamal',
          translation: 'a camel',
          note: 'Mufrad — a single meaningful word.',
        ),
        ExampleItem(
          arabic: 'لَيْلَةُ الْقَدْرِ',
          transliteration: 'laylatu-l-qadr',
          translation: 'the Night of Decree',
          note: 'Murakkab — more than one word.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'A lafẓ is either meaningful (maudūʿ) or meaningless (muhmal); '
              'grammar studies only the meaningful.',
          arabicExemplar: 'قَلَم — دَيْز',
        ),
        RuleItem(
          statement:
              'A meaningful word is either single (mufrad) or compound '
              '(murakkab).',
          arabicExemplar: 'جَمَل — لَيْلَةُ الْقَدْرِ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 3 — عَلَامَاتُ الاِسْمِ وَالفِعْلِ وَالحَرْف (the signs that identify a
/// noun, a verb, and a particle).
const Lesson _theSigns = Lesson(
  id: 'nahw-03-the-signs',
  order: 3,
  titleArabic: 'عَلَامَاتُ الاِسْمِ وَالفِعْلِ وَالحَرْف',
  titleEnglish: 'The Signs of Ism, Fiʿl & Harf',
  summary:
      'How do you tell a noun from a verb from a particle? Each kind '
      'announces itself through tell-tale signs (ʿalāmāt).',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Three Kinds & Their Signs',
      body:
          'Every word is a noun (Ism), a verb (Fiʿl), or a particle (Harf). '
          'You recognise each by the signs it accepts.',
      definitions: [
        Definition(
          term: 'Signs of the Ism',
          termArabic: 'الاِسْم',
          body:
              'A noun begins with “Al-”, carries tanwīn at its end, or is '
              'preceded by a particle of jarr — e.g. Al-Ḥamdu, Zaydun, Fī dārin.',
        ),
        Definition(
          term: 'Signs of the Fiʿl',
          termArabic: 'الفِعْل',
          body:
              'A verb accepts Qad, the future Sīn (sa-), or Sawfa; and it is '
              'past, present, or imperative — e.g. Qad samiʿa, Sayaʿlamu.',
        ),
        Definition(
          term: 'Sign of the Harf',
          termArabic: 'الحَرْف',
          body:
              'A particle is a word that shows neither the signs of the ism '
              'nor those of the fiʿl — e.g. Min, Ilā.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Spot the Signs',
      examples: [
        ExampleItem(
          arabic: 'اَلْحَمْدُ',
          transliteration: 'al-ḥamdu',
          translation: 'the praise',
          note: 'Ism — begins with “Al-”.',
        ),
        ExampleItem(
          arabic: 'زَيْدٌ',
          transliteration: 'zaydun',
          translation: 'Zayd',
          note: 'Ism — carries tanwīn (ٌ) at its end.',
        ),
        ExampleItem(
          arabic: 'فِي دَارٍ',
          transliteration: 'fī dārin',
          translation: 'in a house',
          note: 'Ism — preceded by the particle of jarr “fī”.',
        ),
        ExampleItem(
          arabic: 'قَدْ سَمِعَ',
          transliteration: 'qad samiʿa',
          translation: 'he has heard',
          note: 'Fiʿl — accepts “Qad”.',
        ),
        ExampleItem(
          arabic: 'سَيَعْلَمُ',
          transliteration: 'sayaʿlamu',
          translation: 'he will know',
          note: 'Fiʿl — accepts the future “sa-”.',
        ),
        ExampleItem(
          arabic: 'مِنْ',
          transliteration: 'min',
          translation: 'from',
          note: 'Harf — shows no sign of ism or fiʿl.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'The Ism is known by: “Al-”, tanwīn, and a preceding particle '
              'of jarr.',
          arabicExemplar: 'اَلْحَمْدُ — زَيْدٌ — فِي دَارٍ',
        ),
        RuleItem(
          statement:
              'The Fiʿl is known by: Qad, the future “sa-” (سَـ), and Sawfa.',
          arabicExemplar: 'قَدْ سَمِعَ — سَيَعْلَمُ',
        ),
        RuleItem(
          statement:
              'The Harf has no sign of its own — it shows neither ism nor '
              'fiʿl signs.',
          arabicExemplar: 'مِنْ — إِلَى',
        ),
      ],
    ),
  ],
);
