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
  _marifaAndNakira,
  _genderMasculineFeminine,
  _numberSingularDualPlural,
  _idafaPossessiveConstruct,
  _descriptiveConstruct,
  _verbalSentence,
  _nominalSentence,
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

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 4 — المَعْرِفَة وَالنَّكِرَة (Definite & Indefinite Nouns):
/// the seven types of maʿrifa and how to distinguish them from nakira.
const Lesson _marifaAndNakira = Lesson(
  id: 'nahw-04-marifa-nakira',
  order: 4,
  titleArabic: 'المَعْرِفَة وَالنَّكِرَة',
  titleEnglish: 'Definite & Indefinite (Maʿrifa & Nakira)',
  summary:
      'Every noun in Arabic is either known (maʿrifa) or unknown (nakira). '
      'There are seven ways an ism becomes definite — from a name to a '
      'pronoun to a word with "Al-".',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Two Kinds of Noun',
      body:
          'A noun either refers to something specific and known, or to '
          'something non-specific. This single distinction shapes the '
          'grammar of virtually every Arabic sentence.',
      definitions: [
        Definition(
          term: 'Maʿrifa (Definite)',
          termArabic: 'المَعْرِفَة',
          body:
              'An ism through which a specific, known thing is understood — '
              'e.g. زَيْدٌ (a particular person named Zayd).',
        ),
        Definition(
          term: 'Nakira (Indefinite)',
          termArabic: 'النَّكِرَة',
          body:
              'An ism through which a non-specific thing is understood — '
              'e.g. حَجَرٌ (some stone, not a particular one).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Seven Types of Maʿrifa',
      body:
          'A noun becomes definite in exactly seven ways. Each type is a '
          'distinct grammatical category.',
      definitions: [
        Definition(
          term: '1 · Ism Ḍamīr (Pronoun)',
          termArabic: 'اِسْمُ الضَّمِير',
          body:
              'A word that stands for a speaker, an addressee, or an absent '
              'party — e.g. أَنَا (I), أَنْتَ (you), هُوَ (he). Also called '
              'Ism Muḍmar.',
        ),
        Definition(
          term: '2 · Ism ʿAlam (Proper Noun)',
          termArabic: 'اِسْمُ العَلَم',
          body:
              'A specific name for a person, place, or thing — e.g. بَكْرٌ '
              '(Bakr), مَكَّةُ (Mecca), اَلنَّحْوُ (the science of Naḥw).',
        ),
        Definition(
          term: '3 · Ism Ishāra (Demonstrative)',
          termArabic: 'اِسْمُ الإِشَارَة',
          body:
              'A word that points toward something — e.g. هَذَا (this, m.), '
              'هَذِهِ (this, f.), ذَلِكَ (that, m.), تِلْكَ (that, f.).',
        ),
        Definition(
          term: '4 · Ism Mawṣūl (Relative)',
          termArabic: 'اِسْمُ المَوْصُول',
          body:
              'A word that connects a noun to a relative clause — '
              'e.g. اَلَّذِي (he who), اَلَّتِي (she who).',
        ),
        Definition(
          term: '5 · Muʿarraf bi-l-Lām (With "Al-")',
          termArabic: 'مُعَرَّف بِالأَلِف وَاللَّام',
          body:
              'An ism that begins with the definite article — '
              'e.g. اَلْكِتَابُ (the book).',
        ),
        Definition(
          term: '6 · Muʿarraf bi-l-Iḍāfah (Through Possession)',
          termArabic: 'مُعَرَّف بِالإِضَافَة',
          body:
              'An ism made definite by being linked to a definite noun in '
              'a possessive construct — e.g. قَلَمُ زَيْدٍ (Zayd's pen).',
        ),
        Definition(
          term: '7 · Muʿarraf bi-l-Nidāʾ (Through Address)',
          termArabic: 'مُعَرَّف بِالنِّدَاء',
          body:
              'An indefinite noun becomes specific when directly addressed — '
              'e.g. يَا رَجُلُ (O man! — that specific man being called).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Spot the Type',
      examples: [
        ExampleItem(
          arabic: 'هُوَ',
          transliteration: 'huwa',
          translation: 'he',
          note: 'Ism Ḍamīr — pronoun for an absent male.',
        ),
        ExampleItem(
          arabic: 'مَكَّةُ',
          transliteration: 'makkah',
          translation: 'Mecca',
          note: 'Ism ʿAlam — proper name of a place.',
        ),
        ExampleItem(
          arabic: 'هَذَا الكِتَابُ',
          transliteration: 'hādha l-kitāb',
          translation: 'this book',
          note: 'Ism Ishāra — هَذَا points to something near.',
        ),
        ExampleItem(
          arabic: 'اَلَّذِي جَاءَ',
          transliteration: 'alladhī jāʾa',
          translation: 'the one who came',
          note: 'Ism Mawṣūl — links "came" back to a specific person.',
        ),
        ExampleItem(
          arabic: 'اَلْمَسْجِدُ',
          transliteration: 'al-masjidu',
          translation: 'the mosque',
          note: 'Muʿarraf bi-l-Lām — "Al-" makes it definite.',
        ),
        ExampleItem(
          arabic: 'كِتَابُ اللهِ',
          transliteration: 'kitābu llāh',
          translation: 'the Book of Allah',
          note: 'Muʿarraf bi-l-Iḍāfah — definite through possession.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'Every ism is either maʿrifa (definite/specific) or nakira '
              '(indefinite/non-specific). All pronouns and proper nouns '
              'are maʿrifa; bare nouns with tanwīn are nakira.',
          arabicExemplar: 'زَيْدٌ ← مَعْرِفَة — رَجُلٌ ← نَكِرَة',
        ),
        RuleItem(
          statement:
              'There are seven types of maʿrifa: Ḍamīr, ʿAlam, Ishāra, '
              'Mawṣūl, Muʿarraf bi-l-Lām, Muʿarraf bi-l-Iḍāfah, '
              'Muʿarraf bi-l-Nidāʾ.',
        ),
        RuleItem(
          statement:
              'All pronouns (ḍamāʾir) and all other isms that are visible '
              'in the text are called Ism Ẓāhir (apparent nouns).',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 5 — المُذَكَّر وَالمُؤَنَّث (Masculine & Feminine):
/// what makes a noun masculine or feminine, the three signs of femininity,
/// and the two sub-types of muʾannath.
const Lesson _genderMasculineFeminine = Lesson(
  id: 'nahw-05-gender',
  order: 5,
  titleArabic: 'المُذَكَّر وَالمُؤَنَّث',
  titleEnglish: 'Masculine & Feminine (Mudhakkar & Muʾannath)',
  summary:
      'Arabic nouns are either masculine or feminine — and the rule is not '
      'always about biology. Three signs mark the feminine, with important '
      'exceptions to learn.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Two Genders',
      definitions: [
        Definition(
          term: 'Mudhakkar (Masculine)',
          termArabic: 'المُذَكَّر',
          body:
              'An ism that carries no sign of femininity — e.g. غُلَامٌ '
              '(a boy), قَلَمٌ (a pen).',
        ),
        Definition(
          term: 'Muʾannath (Feminine)',
          termArabic: 'المُؤَنَّث',
          body:
              'An ism that carries a sign of femininity — e.g. اِمْرَأَةٌ '
              '(a woman), ظُلْمَةٌ (darkness).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Three Signs of Femininity',
      body:
          'A noun announces itself as feminine through one of three '
          'distinctive endings.',
      definitions: [
        Definition(
          term: '1 · Tāʾ Marbūṭa (Round Tāʾ)',
          termArabic: 'تَاء مَرْبُوطَة',
          body:
              'The most common sign — a ة at the end, e.g. بَقَرَةٌ (a cow), '
              'صَالِحَةٌ (a righteous woman).',
        ),
        Definition(
          term: '2 · Alif Maqṣūra (Short Alif)',
          termArabic: 'أَلِف مَقْصُورَة',
          body:
              'An ى ending (written like yāʾ without dots), e.g. بُشْرَى '
              '(glad tidings), حُبْلَى (a pregnant woman).',
        ),
        Definition(
          term: '3 · Alif Mamdūda (Extended Alif)',
          termArabic: 'أَلِف مَمْدُودَة',
          body:
              'An اء ending (alif + hamza), e.g. صَفْرَاءُ (yellow, f.), '
              'صَحْرَاءُ (a desert).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Two Kinds of Muʾannath',
      definitions: [
        Definition(
          term: 'Muʾannath Ḥaqīqī (Truly Feminine)',
          termArabic: 'مُؤَنَّث حَقِيقِي',
          body:
              'A naturally female being — whether or not it carries the tāʾ '
              'sign: نَاقَةٌ (a she-camel), أُمٌّ (a mother).',
        ),
        Definition(
          term: 'Muʾannath Lafẓī (Grammatically Feminine)',
          termArabic: 'مُؤَنَّث لَفْظِي',
          body:
              'A word that carries the mark of femininity but is not '
              'biologically female: وَرَقَةٌ (a leaf), طَاوِلَةٌ (a table).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Feminine in Practice',
      examples: [
        ExampleItem(
          arabic: 'شَجَرَةٌ',
          transliteration: 'shajaratun',
          translation: 'a tree',
          note: 'Tāʾ marbūṭa — grammatically feminine.',
        ),
        ExampleItem(
          arabic: 'بُشْرَى',
          transliteration: 'bushrā',
          translation: 'glad tidings',
          note: 'Alif maqṣūra — grammatically feminine.',
        ),
        ExampleItem(
          arabic: 'صَحْرَاءُ',
          transliteration: 'ṣaḥrāʾu',
          translation: 'a desert',
          note: 'Alif mamdūda — grammatically feminine.',
        ),
        ExampleItem(
          arabic: 'شَمْسٌ',
          transliteration: 'shamsun',
          translation: 'sun',
          note: 'No tāʾ — but feminine by convention (سماعی).',
        ),
        ExampleItem(
          arabic: 'طَلْحَةُ',
          transliteration: 'ṭalḥah',
          translation: 'Ṭalḥa (a man\'s name)',
          note: 'Has tāʾ marbūṭa but is masculine — a proper name exception.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'The three signs of femininity are: tāʾ marbūṭa (ة), '
              'alif maqṣūra (ى), and alif mamdūda (اء).',
          arabicExemplar: 'بَقَرَة — بُشْرَى — صَحْرَاء',
        ),
        RuleItem(
          statement:
              'Some words are always feminine without any sign — they must '
              'be memorised: أُمٌّ (mother), أُخْتٌ (sister), بِنْتٌ (daughter), '
              'and paired body parts: عَيْنٌ, يَدٌ, رِجْلٌ.',
          arabicExemplar: 'أُمٌّ · أُخْتٌ · بِنْتٌ',
        ),
        RuleItem(
          statement:
              'Earth, sun, fire, and wind are feminine by convention: '
              'أَرْضٌ, شَمْسٌ, نَارٌ, رِيحٌ.',
          arabicExemplar: 'اَلشَّمْسُ طَلَعَتْ',
        ),
        RuleItem(
          statement:
              'Some male names end in tāʾ marbūṭa — they are masculine '
              'despite the sign: طَلْحَةُ, حَمْزَةُ, مُعَاوِيَةُ.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 6 — الوَاحِد وَالتَّثْنِيَة وَالجَمْع (Number: Singular, Dual, Plural):
/// the three number categories, how to form duals and sound plurals, and
/// the two types of broken plural.
const Lesson _numberSingularDualPlural = Lesson(
  id: 'nahw-06-number',
  order: 6,
  titleArabic: 'الوَاحِد وَالتَّثْنِيَة وَالجَمْع',
  titleEnglish: 'Number: Singular, Dual & Plural',
  summary:
      'Arabic tracks number in three grades: one, two, and three-or-more. '
      'The plural has two families — sound (sālim) and broken (mukassar) — '
      'each with its own patterns.',
  estimatedMinutes: 10,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Three Number Categories',
      definitions: [
        Definition(
          term: 'Mufrad (Singular)',
          termArabic: 'المُفْرَد',
          body: 'Refers to exactly one — e.g. مُسْلِمٌ (one Muslim).',
        ),
        Definition(
          term: 'Muthannā (Dual)',
          termArabic: 'المُثَنَّى',
          body:
              'Refers to exactly two — formed by adding -āni (مرفوع) or '
              '-ayni (منصوب/مجرور): مُسْلِمَانِ / مُسْلِمَيْنِ.',
        ),
        Definition(
          term: 'Jamʿ (Plural)',
          termArabic: 'الجَمْع',
          body: 'Refers to three or more — e.g. مُسْلِمُونَ (Muslims).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Two Families of Plural',
      definitions: [
        Definition(
          term: 'Jamʿ Sālim (Sound Plural)',
          termArabic: 'جَمْعُ السَّالِم',
          body:
              'The singular skeleton stays intact; endings are simply added. '
              'Jamʿ Mudhakkar Sālim (masculine): add -ūna/-īna → صَالِحُونَ. '
              'Jamʿ Muʾannath Sālim (feminine): add -āt → صَالِحَاتٌ.',
        ),
        Definition(
          term: 'Jamʿ Mukassar (Broken Plural)',
          termArabic: 'جَمْعُ المُكَسَّر',
          body:
              'The internal vowel structure of the word changes. It has two '
              'sub-types by quantity: Jamʿ Qillah (few, 3–9) and '
              'Jamʿ Kathrah (many, 10+).',
        ),
        Definition(
          term: 'Jamʿ Qillah (Few)',
          termArabic: 'جَمْعُ القِلَّة',
          body:
              'Four patterns: أَفْعَالٌ, أَفْعُلٌ, فِعْلَةٌ, أَفْعِلَةٌ — '
              'e.g. أَقْلَامٌ (pens, from قَلَمٌ).',
        ),
        Definition(
          term: 'Jamʿ Kathrah (Many)',
          termArabic: 'جَمْعُ الكَثْرَة',
          body:
              'More than ten patterns. Common ones: فُعُولٌ (قُلُوبٌ), '
              'فِعَالٌ (رِجَالٌ), فُعَلٌ (صُوَرٌ), مَفَاعِلُ (مَسَاجِدُ), '
              'فَعَالِلُ (دَرَاهِمُ) — e.g. كُتُبٌ (books, from كِتَابٌ).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'One Root, Three Numbers',
      examples: [
        ExampleItem(
          arabic: 'مُسْلِمٌ — مُسْلِمَانِ — مُسْلِمُونَ',
          transliteration: 'muslimun — muslimāni — muslimūna',
          translation: 'one Muslim — two Muslims — Muslims',
          note: 'Jamʿ Mudhakkar Sālim: -ān (dual) then -ūn (plural).',
        ),
        ExampleItem(
          arabic: 'مُسْلِمَةٌ — مُسْلِمَتَانِ — مُسْلِمَاتٌ',
          transliteration: 'muslimatun — muslimatan — muslimātun',
          translation: 'one Muslim woman — two — Muslim women',
          note: 'Jamʿ Muʾannath Sālim: add -āt for the plural.',
        ),
        ExampleItem(
          arabic: 'كِتَابٌ ← كُتُبٌ',
          transliteration: 'kitābun ← kutubun',
          translation: 'a book → books',
          note: 'Broken plural — internal vowels change (فُعُل pattern).',
        ),
        ExampleItem(
          arabic: 'مَسْجِدٌ ← مَسَاجِدُ',
          transliteration: 'masjidun ← masājidu',
          translation: 'a mosque → mosques',
          note: 'Jamʿ Kathrah — مَفَاعِل pattern, no tanwīn.',
        ),
        ExampleItem(
          arabic: 'قَلَمٌ ← أَقْلَامٌ',
          transliteration: 'qalamun ← aqlāmun',
          translation: 'a pen → pens (3–9)',
          note: 'Jamʿ Qillah — أَفْعَال pattern.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'Form the dual by adding -āni (marfūʿ) or -ayni '
              '(manṣūb/majrūr) to the singular. The nūn drops in an iḍāfa.',
          arabicExemplar: 'مُسْلِمٌ → مُسْلِمَانِ / مُسْلِمَيْنِ',
        ),
        RuleItem(
          statement:
              'Jamʿ Mudhakkar Sālim is for rational males: add -ūna/-īna. '
              'The nūn drops in an iḍāfa: مُسْلِمُو الْمَدِينَةِ.',
          arabicExemplar: 'صَالِحُونَ / صَالِحِينَ',
        ),
        RuleItem(
          statement:
              'Jamʿ Muʾannath Sālim is for females and some non-rationals: '
              'add -āt. It takes a kasra for both naṣb and jarr.',
          arabicExemplar: 'صَالِحَاتٌ / صَالِحَاتٍ',
        ),
        RuleItem(
          statement:
              'Broken plural patterns must be memorised individually — '
              'there is no single rule for which pattern a word takes.',
          arabicExemplar: 'كِتَاب → كُتُب · رَجُل → رِجَال',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 7 — المُرَكَّب الإِضَافِي (The Possessive Construct — Iḍāfa):
/// how two nouns combine to express possession or belonging,
/// and the six key rules that govern the construct.
const Lesson _idafaPossessiveConstruct = Lesson(
  id: 'nahw-07-idafa',
  order: 7,
  titleArabic: 'المُرَكَّب الإِضَافِي',
  titleEnglish: 'The Possessive Construct (Iḍāfa)',
  summary:
      'When one noun is attributed to another — رَسُولُ اللهِ, كِتَابُ الطَّالِبِ — '
      'the result is an iḍāfa. The first noun loses tanwīn; '
      'the second always takes jarr.',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'What Is an Iḍāfa?',
      body:
          'Arabic expresses possession and attribution not with a word '
          'like "of" but by placing two nouns directly next to each other. '
          'The result is called a مُرَكَّب إِضَافِي.',
      definitions: [
        Definition(
          term: 'Muḍāf (First Noun)',
          termArabic: 'المُضَاف',
          body:
              'The possessed thing — always the first word. '
              'e.g. كِتَابُ in كِتَابُ اللهِ.',
        ),
        Definition(
          term: 'Muḍāf Ilayhi (Second Noun)',
          termArabic: 'المُضَاف إِلَيْه',
          body:
              'The possessor or referent — always the second word, '
              'always majrūr. e.g. اللهِ in كِتَابُ اللهِ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'The Construct in Action',
      examples: [
        ExampleItem(
          arabic: 'رَسُولُ اللهِ',
          transliteration: 'rasūlu llāh',
          translation: 'the Messenger of Allah',
          note: 'Muḍāf (رَسُولُ) drops tanwīn; muḍāf ilayhi (اللهِ) is majrūr.',
        ),
        ExampleItem(
          arabic: 'وَلَدُ الرَّجُلِ',
          transliteration: 'waladu r-rajul',
          translation: 'the man\'s son',
          note: 'Muḍāf ilayhi (الرَّجُلِ) is majrūr and has no lām on the muḍāf.',
        ),
        ExampleItem(
          arabic: 'مُسْلِمُو المَدِينَةِ',
          transliteration: 'muslimū l-madīna',
          translation: 'the Muslims of the city',
          note: 'Dual/sound plural muḍāf drops its nūn in iḍāfa.',
        ),
        ExampleItem(
          arabic: 'قَلَمُ وَلَدِ زَيْدٍ',
          transliteration: 'qalamu waladi zayd',
          translation: 'the pen of Zayd\'s son',
          note: 'Chained iḍāfa — three nouns, two possessive links.',
        ),
        ExampleItem(
          arabic: 'غُلَامُ زَيْدٍ',
          transliteration: 'ghulāmu zayd',
          translation: 'Zayd\'s servant',
          note: 'Nakira muḍāf + maʿrifa muḍāf ilayhi → whole construct is maʿrifa.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'The Six Rules of Iḍāfa',
      rules: [
        RuleItem(
          statement:
              'The muḍāf never takes tanwīn, and "Al-" is never prefixed '
              'to it (these are incompatible with the iḍāfa relationship).',
          arabicExemplar: '✗ كِتَابٌ اللهِ — ✓ كِتَابُ اللهِ',
        ),
        RuleItem(
          statement:
              'The muḍāf ilayhi is always majrūr (genitive case).',
          arabicExemplar: 'جَاءَ غُلَامُ زَيْدٍ — رَأَيْتُ غُلَامَ زَيْدٍ',
        ),
        RuleItem(
          statement:
              'If the muḍāf is a dual or Jamʿ Mudhakkar Sālim, its nūn '
              'drops in the iḍāfa: وَلَدَا زَيْدٍ, مُسْلِمُو الْبَلَدِ.',
          arabicExemplar: 'مُسْلِمُونَ → مُسْلِمُو البَلَدِ',
        ),
        RuleItem(
          statement:
              'More than one muḍāf can chain together: each new noun '
              'is both muḍāf ilayhi to the one before and muḍāf to the one '
              'after.',
          arabicExemplar: 'قَلَمُ وَلَدِ زَيْدٍ',
        ),
        RuleItem(
          statement:
              'Definiteness of the whole construct follows the muḍāf ilayhi: '
              'if it is maʿrifa, the construct is maʿrifa; if nakira, nakira.',
          arabicExemplar: 'قَلَمُ زَيْدٍ ← مَعْرِفَة — قَلَمُ رَجُلٍ ← نَكِرَة',
        ),
        RuleItem(
          statement:
              'In Arabic the muḍāf comes first, then the muḍāf ilayhi — '
              'the opposite order from English ("Zayd\'s pen" = قَلَمُ زَيْدٍ).',
          arabicExemplar: 'كِتَابُ اللهِ — not اللهِ كِتَابُ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 8 — المُرَكَّب التَّوْصِيفِي (The Descriptive Construct):
/// how adjectives (ṣifah) agree with the nouns they describe (mawṣūf)
/// across all four grammatical axes.
const Lesson _descriptiveConstruct = Lesson(
  id: 'nahw-08-descriptive-construct',
  order: 8,
  titleArabic: 'المُرَكَّب التَّوْصِيفِي',
  titleEnglish: 'The Descriptive Construct (Naʿt)',
  summary:
      'Every Arabic adjective must mirror the noun it describes in four ways: '
      'number, gender, case, and definiteness. Getting this agreement right '
      'is one of the pillars of correct Arabic.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Noun and Its Adjective',
      body:
          'When a noun is qualified by an adjective, the two together form '
          'a مُرَكَّب تَوْصِيفِي. The described noun is the مَوْصُوف; '
          'the describing word is the صِفَة (also called نَعْت).',
      definitions: [
        Definition(
          term: 'Mawṣūf (Described Noun)',
          termArabic: 'المَوْصُوف',
          body:
              'The noun being qualified. In English-order we say "wise man" '
              '— in Arabic the noun comes first: رَجُلٌ حَكِيمٌ.',
        ),
        Definition(
          term: 'Ṣifah / Naʿt (Adjective)',
          termArabic: 'الصِّفَة / النَّعْت',
          body:
              'The qualifying word. It always follows the mawṣūf and must '
              'agree with it in four categories.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Four Axes of Agreement',
      body:
          'The ṣifah must match the mawṣūf in every one of these four '
          'dimensions simultaneously.',
      definitions: [
        Definition(
          term: '1 · Number',
          termArabic: 'الإِفْرَاد وَالتَّثْنِيَة وَالجَمْع',
          body:
              'Singular mawṣūf → singular ṣifah: رَجُلٌ عَالِمٌ. '
              'Dual mawṣūf → dual ṣifah: رَجُلَانِ عَالِمَانِ. '
              'Plural mawṣūf → plural ṣifah: رِجَالٌ عُلَمَاءُ.',
        ),
        Definition(
          term: '2 · Gender',
          termArabic: 'التَّذْكِير وَالتَّأْنِيث',
          body:
              'Masculine mawṣūf → masculine ṣifah: رَجُلٌ عَالِمٌ. '
              'Feminine mawṣūf → feminine ṣifah: اِمْرَأَةٌ عَالِمَةٌ.',
        ),
        Definition(
          term: '3 · Case (Iʿrāb)',
          termArabic: 'الرَّفْع وَالنَّصْب وَالجَرّ',
          body:
              'Marfūʿ mawṣūf → marfūʿ ṣifah: رَجُلٌ عَالِمٌ. '
              'Majrūr mawṣūf → majrūr ṣifah: بِرَجُلٍ عَالِمٍ.',
        ),
        Definition(
          term: '4 · Definiteness',
          termArabic: 'التَّعْرِيف وَالتَّنْكِير',
          body:
              'Nakira mawṣūf → nakira ṣifah: رَجُلٌ عَالِمٌ. '
              'Maʿrifa mawṣūf → maʿrifa ṣifah: اَلرَّجُلُ الْعَالِمُ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Agreement in Action',
      examples: [
        ExampleItem(
          arabic: 'رَجُلٌ صَالِحٌ',
          transliteration: 'rajulun ṣāliḥun',
          translation: 'a righteous man',
          note: 'Singular masculine nakira — ṣifah agrees on all four axes.',
        ),
        ExampleItem(
          arabic: 'اَلرَّجُلُ الصَّالِحُ',
          transliteration: 'ar-rajulu ṣ-ṣāliḥu',
          translation: 'the righteous man',
          note: 'Maʿrifa mawṣūf → maʿrifa ṣifah (both take "Al-").',
        ),
        ExampleItem(
          arabic: 'اِمْرَأَةٌ صَالِحَةٌ',
          transliteration: 'imraʾatun ṣāliḥatun',
          translation: 'a righteous woman',
          note: 'Feminine mawṣūf → feminine ṣifah with tāʾ marbūṭa.',
        ),
        ExampleItem(
          arabic: 'أَشْجَارٌ مُثْمِرَةٌ',
          transliteration: 'ashjārun muthmiratun',
          translation: 'fruit-bearing trees',
          note: 'Non-rational plural mawṣūf → mufrad muʾannath ṣifah.',
        ),
        ExampleItem(
          arabic: 'جَاءَ رَجُلٌ أَبُوهُ عَالِمٌ',
          transliteration: 'jāʾa rajulun abūhu ʿālimun',
          translation: 'a man came whose father is a scholar',
          note: 'Ṣifah is a sentence — a pronoun (هُ) links it back to the mawṣūf.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'In Arabic the mawṣūf always comes before the ṣifah — '
              'the opposite of English word order.',
          arabicExemplar: 'رَجُلٌ كَرِيمٌ ← not كَرِيمٌ رَجُلٌ',
        ),
        RuleItem(
          statement:
              'The ṣifah must agree with the mawṣūf in all four axes: '
              'number, gender, case, and definiteness — failing any one '
              'is a grammatical error.',
          arabicExemplar: 'اَلرَّجُلُ الكَرِيمُ — رَجُلٌ كَرِيمٌ',
        ),
        RuleItem(
          statement:
              'Exception: when the mawṣūf is a non-rational (non-human) '
              'plural, the ṣifah is treated as mufrad muʾannath.',
          arabicExemplar: 'كُتُبٌ مُفِيدَةٌ — أَشْجَارٌ مُثْمِرَةٌ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 9 — الجُمْلَة الفِعْلِيَّة (The Verbal Sentence):
/// a sentence whose first word is a verb, with its fāʿil (agent),
/// nāʾib fāʿil (passive agent), and the rules governing each.
const Lesson _verbalSentence = Lesson(
  id: 'nahw-09-verbal-sentence',
  order: 9,
  titleArabic: 'الجُمْلَة الفِعْلِيَّة',
  titleEnglish: 'The Verbal Sentence (Jumlah Fiʿliyya)',
  summary:
      'A sentence that opens with a verb. Its agent — the Fāʿil — is always '
      'marfūʿ and always follows the verb. When the agent is hidden, '
      'a Nāʾib Fāʿil steps in.',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Structure of the Verbal Sentence',
      body:
          'Any sentence whose first element is a fiʿl (verb) is a '
          'جُمْلَة فِعْلِيَّة. The verb is immediately followed by the '
          'noun to which it is attributed.',
      definitions: [
        Definition(
          term: 'Fāʿil (Agent / Subject)',
          termArabic: 'الفَاعِل',
          body:
              'The ism to which a known (active-voice) verb is attributed — '
              'always marfūʿ. e.g. لَمَعَ الْبَرْقُ (the lightning flashed).',
        ),
        Definition(
          term: 'Nāʾib Fāʿil (Passive Agent)',
          termArabic: 'نَائِب الفَاعِل',
          body:
              'When the verb is passive and the real doer is unknown or '
              'unstated, the object rises to fill the Fāʿil slot. '
              'Always marfūʿ. e.g. سُمِعَ الصَّوْتُ (the sound was heard).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Verbal Sentences',
      examples: [
        ExampleItem(
          arabic: 'قَالَ اللهُ',
          transliteration: 'qāla llāhu',
          translation: 'Allah said',
          note: 'Verb (قَالَ) then Fāʿil (اللهُ, marfūʿ).',
        ),
        ExampleItem(
          arabic: 'لَمَعَ الْبَرْقُ',
          transliteration: 'lamaʿa l-barqu',
          translation: 'the lightning flashed',
          note: 'Classic verbal sentence: verb then ism fāʿil.',
        ),
        ExampleItem(
          arabic: 'سُمِعَ الصَّوْتُ',
          transliteration: 'sumiʿa ṣ-ṣawtu',
          translation: 'the sound was heard',
          note: 'Passive verb — الصَّوْتُ is Nāʾib Fāʿil (still marfūʿ).',
        ),
        ExampleItem(
          arabic: 'نَصَرَ قَوْمٌ',
          transliteration: 'naṣara qawmun',
          translation: 'a people helped',
          note: 'Fāʿil is a plural — verb stays singular masculine.',
        ),
        ExampleItem(
          arabic: 'أَكَلَ زَيْدٌ خُبْزًا',
          transliteration: 'akala zaydun khubzan',
          translation: 'Zayd ate bread',
          note: 'Verb — Fāʿil — Mafʿūl (direct object, manṣūb).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'The Rules of Fāʿil',
      rules: [
        RuleItem(
          statement:
              'The Fāʿil and the Nāʾib Fāʿil are always marfūʿ (nominative). '
              'This is an absolute rule with no exception.',
          arabicExemplar: 'قَامَ زَيْدٌ — نُصِرَ زَيْدٌ',
        ),
        RuleItem(
          statement:
              'The verb always comes before the Fāʿil. The verb is always '
              'in the singular, even if the Fāʿil is dual or plural.',
          arabicExemplar: 'قَامَ الرِّجَالُ ← not قَامُوا الرِّجَالُ',
        ),
        RuleItem(
          statement:
              'If the Fāʿil is a non-rational plural (things, animals), the '
              'verb is singular masculine. If it is a feminine ism, the verb '
              'takes a tāʾ of femininity: طَلَعَتِ الشَّمْسُ.',
          arabicExemplar: 'طَلَعَتِ الشَّمْسُ — ذَهَبَ القَوْمُ',
        ),
        RuleItem(
          statement:
              'The direct object (Mafʿūl bihi) comes after the Fāʿil '
              'and is manṣūb (accusative).',
          arabicExemplar: 'ضَرَبَ زَيْدٌ عَمْرًا',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 10 — الجُمْلَة الاِسْمِيَّة (The Nominal Sentence):
/// a sentence that opens with a noun, with its mubtadaʾ (subject),
/// khabar (predicate), and the rules that govern their agreement.
const Lesson _nominalSentence = Lesson(
  id: 'nahw-10-nominal-sentence',
  order: 10,
  titleArabic: 'الجُمْلَة الاِسْمِيَّة',
  titleEnglish: 'The Nominal Sentence (Jumlah Ismiyya)',
  summary:
      'A sentence that opens with a noun. Its two pillars — '
      'the Mubtadaʾ (subject) and the Khabar (predicate) — '
      'are both marfūʿ and must agree in number and gender.',
  estimatedMinutes: 9,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Structure of the Nominal Sentence',
      body:
          'Any sentence whose first element is an ism (noun) is a '
          'جُمْلَة اِسْمِيَّة. It has two mandatory parts: '
          'a subject and a predicate.',
      definitions: [
        Definition(
          term: 'Mubtadaʾ (Subject)',
          termArabic: 'المُبْتَدَأ',
          body:
              'The first part — what the sentence is about. Always marfūʿ. '
              'Usually a maʿrifa (definite) noun, or a descriptive nakira. '
              'e.g. اَللهُ in اَللهُ غَنِيٌّ.',
        ),
        Definition(
          term: 'Khabar (Predicate)',
          termArabic: 'الخَبَر',
          body:
              'The second part — what is said about the mubtadaʾ. '
              'Always marfūʿ. May be a single word, a phrase, or a clause. '
              'e.g. غَنِيٌّ in اَللهُ غَنِيٌّ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Types of Khabar',
      definitions: [
        Definition(
          term: 'Single Word Khabar',
          termArabic: 'خَبَر مُفْرَد',
          body:
              'A single ism or adjective: اَللهُ كَرِيمٌ (Allah is generous), '
              'زَيْدٌ عَالِمٌ (Zayd is a scholar).',
        ),
        Definition(
          term: 'Prepositional Phrase Khabar',
          termArabic: 'خَبَر شِبْه جُمْلَة',
          body:
              'A ẓarf (adverb) or jarr-majrūr (preposition + noun): '
              'زَيْدٌ فِي الدَّارِ (Zayd is in the house).',
        ),
        Definition(
          term: 'Sentence Khabar',
          termArabic: 'خَبَر جُمْلَة',
          body:
              'An entire verbal or nominal sentence: '
              'زَيْدٌ أَبُوهُ عَالِمٌ (Zayd — his father is a scholar). '
              'A pronoun (هُ) must link the khabar back to the mubtadaʾ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Nominal Sentences',
      examples: [
        ExampleItem(
          arabic: 'اَللهُ غَنِيٌّ',
          transliteration: 'allāhu ghaniyyun',
          translation: 'Allah is Self-Sufficient',
          note: 'Mubtadaʾ (اَللهُ) + single-word khabar (غَنِيٌّ), both marfūʿ.',
        ),
        ExampleItem(
          arabic: 'زَيْدٌ فِي الدَّارِ',
          transliteration: 'zaydun fī d-dār',
          translation: 'Zayd is in the house',
          note: 'Khabar is a prepositional phrase (شِبْه جُمْلَة).',
        ),
        ExampleItem(
          arabic: 'اَللهُ هُوَ الرَّزَّاقُ',
          transliteration: 'allāhu huwa r-razzāqu',
          translation: 'Allah — He is the Provider',
          note: 'Maʿrifa khabar: a separating pronoun (هُوَ) is inserted.',
        ),
        ExampleItem(
          arabic: 'هِنْدٌ عَالِمَةٌ',
          transliteration: 'hindun ʿālimatun',
          translation: 'Hind is a scholar',
          note: 'Feminine mubtadaʾ → feminine khabar.',
        ),
        ExampleItem(
          arabic: 'الكُتُبُ مُفِيدَةٌ',
          transliteration: 'al-kutubu mufīdatun',
          translation: 'the books are beneficial',
          note: 'Non-rational plural mubtadaʾ → mufrad muʾannath khabar.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'The Rules of Mubtadaʾ & Khabar',
      rules: [
        RuleItem(
          statement:
              'Both the Mubtadaʾ and the Khabar are always marfūʿ — '
              'this is the defining feature of the nominal sentence.',
          arabicExemplar: 'زَيْدٌ عَالِمٌ — اَلْوَلَدُ قَائِمٌ',
        ),
        RuleItem(
          statement:
              'The Mubtadaʾ is normally maʿrifa. A nakira may serve as '
              'mubtadaʾ only when it carries a descriptive adjective '
              'or is in a specific context.',
          arabicExemplar: 'طِفْلٌ صَغِيرٌ جَالِسٌ ← nakira mubtadaʾ with ṣifah',
        ),
        RuleItem(
          statement:
              'When the khabar is a maʿrifa noun, a separating pronoun '
              '(ḍamīr faṣl) is inserted between mubtadaʾ and khabar to '
              'prevent it being read as an adjective.',
          arabicExemplar: 'اَللهُ هُوَ الرَّزَّاقُ',
        ),
        RuleItem(
          statement:
              'The khabar agrees with the mubtadaʾ in number and gender. '
              'Exception: a non-rational plural mubtadaʾ takes a mufrad '
              'muʾannath khabar.',
          arabicExemplar: 'اَلْأَشْجَارُ مُثْمِرَةٌ — اَلْوَلَدَانِ قَائِمَانِ',
        ),
        RuleItem(
          statement:
              'Usually the mubtadaʾ comes first, but the khabar may precede '
              'when it is a ẓarf or jarr-majrūr: فِي الدَّارِ رَجُلٌ '
              '(In the house is a man).',
          arabicExemplar: 'فِي الدَّارِ رَجُلٌ',
        ),
      ],
    ),
  ],
);
