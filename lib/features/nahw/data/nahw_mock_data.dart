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
  // Phase 2 — Khulāṣat-un-Naḥw Part 1 (lessons 11-38)
  _khabariyyaInsha,
  _hurufJarr,
  _murabMabni,
  _murabMabniTypes,
  _damir,
  _ismIshara,
  _ismMawsul,
  _ismIstifham,
  _ismShart,
  _ismDharf,
  _mansrifGhair,
  _iraabIsm,
  _nawasibJawazim,
  _mudariIraab,
  _hurufMushabbaha,
  _innaAnPositions,
  _laNafiyya,
  _afaalNaqisah,
  _maLaLaysa,
  _mafUlMutlaq,
  _mafUlBihi,
  _mafUlFihi,
  _mafUlLahuMaa,
  _hal,
  _tamyiz,
  _mustathna,
  _fiilTypes,
  _marfuatMansubatMajrurat,
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

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 11 — جُمْلَةٌ خَبَرِيَّةٌ وَإِنْشَائِيَّة
const Lesson _khabariyyaInsha = Lesson(
  id: 'nahw-11-khabariyya-insha',
  order: 11,
  titleArabic: 'جُمْلَةٌ خَبَرِيَّةٌ وَإِنْشَائِيَّة',
  titleEnglish: 'Declarative & Performative Sentences',
  summary:
      'Every sentence is either a statement that can be true or false '
      '(Khabariyya), or a performative utterance that cannot (Inshāʾiyya).',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Two Kinds of Sentence',
      definitions: [
        Definition(
          term: 'Khabariyya (Declarative)',
          termArabic: 'جُمْلَةٌ خَبَرِيَّة',
          body:
              'A sentence whose speaker can be called truthful or a liar — '
              'e.g. Zaydun ʿālimun; Jāʾa Bakrun (Bakr came).',
        ),
        Definition(
          term: 'Inshāʾiyya (Performative)',
          termArabic: 'جُمْلَةٌ إِنْشَائِيَّة',
          body:
              'A sentence to which truth or falsehood cannot be attributed — '
              'e.g. Man huwa? (Who is he?); Hal dhahaba Khālid?',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Eight Types of Inshāʾiyya',
      body: 'The performative sentence has eight recognised sub-types.',
      definitions: [
        Definition(
          term: '1. Amr (Command)',
          termArabic: 'أَمْر',
          body: 'A command — e.g. اُنْصُرْ (Help!).',
        ),
        Definition(
          term: '2. Nahiy (Prohibition)',
          termArabic: 'نَهْي',
          body: 'Stopping someone from an act — e.g. لَا تَكْفُرْ.',
        ),
        Definition(
          term: '3. Istifhām (Question)',
          termArabic: 'اِسْتِفْهَام',
          body: 'A question — e.g. أَجَاءَ زَيْدٌ؟',
        ),
        Definition(
          term: '4. Tamannī (Wish)',
          termArabic: 'تَمَنِّي',
          body: 'Wishing — e.g. لَيْتَ زَيْدًا فَازَ.',
        ),
        Definition(
          term: '5. Tarajjī (Hope)',
          termArabic: 'تَرَجِّي',
          body: 'Hoping — e.g. لَعَلَّ زَيْدًا جَاءَ.',
        ),
        Definition(
          term: '6. ʿUqūd (Contracts)',
          termArabic: 'عُقُود',
          body: 'Contracts — e.g. بِعْتُ، نَكَحْتُ.',
        ),
        Definition(
          term: '7. Qasam (Oath)',
          termArabic: 'قَسَم',
          body: 'An oath — e.g. أُقْسِمُ بِاللهِ.',
        ),
        Definition(
          term: '8. Duʿāʾ (Supplication)',
          termArabic: 'دُعَاء',
          body: 'Supplication — e.g. يَرْحَمُنَا اللهُ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'A Khabariyya can be verified as true or false; '
              'an Inshāʾiyya cannot.',
          arabicExemplar: 'جَاءَ زَيْدٌ ← خَبَرِيَّة',
        ),
        RuleItem(
          statement:
              'Every sentence other than the eight Inshāʾiyya types is Khabariyya.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 12 — حُرُوفُ الْجَرّ
const Lesson _hurufJarr = Lesson(
  id: 'nahw-12-huruf-jarr',
  order: 12,
  titleArabic: 'حُرُوفُ الْجَرّ',
  titleEnglish: 'The Particles of Jarr',
  summary:
      'Seventeen particles that attach to a noun, pull its ending into '
      'the genitive case, and link it to a governing word.',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & the Seventeen Particles',
      body:
          'A ḥarf jārr enters upon a noun and gives it the jarr ending. '
          'There are seventeen, memorised in the verse:\n'
          'بِا وَتَا وَكَافٍ وَلَامٍ وَوَاوٍ وَمُنْذُ وَخَلَا\n'
          'رُبَّ حَاشَا مِنْ عَدَا فِي عَنْ عَلَى حَتَّى إِلَى',
      definitions: [
        Definition(
          term: 'مِنْ (from)',
          termArabic: 'مِنْ',
          body: 'خَرَجْتُ مِنَ الْبَيْتِ — I left from the house.',
        ),
        Definition(
          term: 'إِلَى (to)',
          termArabic: 'إِلَى',
          body: 'تُوبُوا إِلَى اللهِ — Turn to Allāh.',
        ),
        Definition(
          term: 'عَنْ (from / away from)',
          termArabic: 'عَنْ',
          body: 'اِجْتَنِبْ عَنِ الْمَعَاصِي — Keep away from sins.',
        ),
        Definition(
          term: 'عَلَى (on / upon)',
          termArabic: 'عَلَى',
          body: 'اَلسَّلَامُ عَلَيْكُمْ — Peace be upon you.',
        ),
        Definition(
          term: 'فِي (in)',
          termArabic: 'فِي',
          body: 'عُثْمَانُ فِي الْجَنَّةِ — ʿUthmān is in Paradise.',
        ),
        Definition(
          term: 'بَاء (by / with / in)',
          termArabic: 'بِـ',
          body: 'بِسْمِ اللهِ — In the name of Allāh.',
        ),
        Definition(
          term: 'كَاف (like)',
          termArabic: 'كَـ',
          body: 'زَيْدٌ كَالْأَسَدِ — Zayd is like a lion.',
        ),
        Definition(
          term: 'لَام (for / of)',
          termArabic: 'لِـ',
          body: 'اَلْمَالُ لِزَيْدٍ — The wealth belongs to Zayd.',
        ),
        Definition(
          term: 'رُبَّ (many a)',
          termArabic: 'رُبَّ',
          body: 'رُبَّ عَالِمٍ لَقِيتُ — Many a scholar I met.',
        ),
        Definition(
          term: 'حَتَّى (until / even)',
          termArabic: 'حَتَّى',
          body: 'حَتَّى مَطْلَعِ الْفَجْرِ — Until the break of dawn.',
        ),
        Definition(
          term: 'خَلَا / عَدَا / حَاشَا (except)',
          termArabic: 'خَلَا — عَدَا — حَاشَا',
          body: 'Particles of exception — e.g. جَاءَ الْقَوْمُ خَلَا زَيْدًا.',
        ),
        Definition(
          term: 'مُنْذُ / مُذْ (since)',
          termArabic: 'مُنْذُ — مُذْ',
          body: 'مَا رَأَيْتُهُ مُنْذُ سَنَةٍ — I have not seen him for a year.',
        ),
        Definition(
          term: 'وَاو / تَاء of Oath',
          termArabic: 'وَ — تَ',
          body: 'وَاللهِ — تَاللهِ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Key Rules',
      rules: [
        RuleItem(
          statement:
              'A ḥarf jārr always gives jarr to the noun after it; '
              'that noun is the majrūr.',
          arabicExemplar: 'ذَهَبْتُ إِلَى الْمَسْجِدِ',
        ),
        RuleItem(
          statement:
              'The ḥarf jārr + majrūr together form the jarr-majrūr, '
              'connected (mutaʿalliq) to a verb, verbal noun, or adjective.',
          arabicExemplar: 'قَرَأْتُ الْقُرْآنَ فِي الْبَيْتِ',
        ),
        RuleItem(
          statement:
              'When the governing word is absent, the jarr-majrūr becomes '
              'a predicate (ẓarf mustaqarr).',
          arabicExemplar: 'اَلْوَلَدُ فِي الدَّارِ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 13 — الْمُعْرَبُ وَالْمَبْنِيُّ
const Lesson _murabMabni = Lesson(
  id: 'nahw-13-murab-mabni',
  order: 13,
  titleArabic: 'الْمُعْرَبُ وَالْمَبْنِيُّ',
  titleEnglish: 'Muʿrab & Mabnī',
  summary:
      'Arabic words divide into those whose final letter changes with '
      'grammatical factors (muʿrab) and those whose ending is fixed (mabnī).',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Core Definitions',
      definitions: [
        Definition(
          term: 'Muʿrab',
          termArabic: 'الْمُعْرَب',
          body:
              'A word whose final letter changes because of a governing factor — '
              'e.g. جَاءَ زَيْدٌ / رَأَيْتُ زَيْدًا / نَظَرْتُ إِلَى زَيْدٍ.',
        ),
        Definition(
          term: 'Mabnī',
          termArabic: 'الْمَبْنِيّ',
          body:
              'A word whose final letter does NOT change — '
              'e.g. جَاءَ هَذَا / رَأَيْتُ هَذَا / مَرَرْتُ بِهَذَا.',
        ),
        Definition(
          term: 'ʿĀmil (Governing Factor)',
          termArabic: 'الْعَامِل',
          body: 'What produces a grammatical quality in the muʿrab word.',
        ),
        Definition(
          term: 'Maʿmūl',
          termArabic: 'الْمَعْمُول',
          body: 'The word upon which the ʿāmil acts.',
        ),
        Definition(
          term: 'Iʿrāb',
          termArabic: 'الْإِعْرَاب',
          body:
              'The change at the end of a muʿrab word — shown by a vowel '
              '(ḥaraka) or a letter (ḥarf).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Visible vs. Estimated Iʿrāb',
      definitions: [
        Definition(
          term: 'Lafẓī (pronounced)',
          termArabic: 'إِعْرَابٌ لَفْظِيّ',
          body: 'Case marking that is audible — e.g. زَيْدٌ / زَيْدًا / زَيْدٍ.',
        ),
        Definition(
          term: 'Taqdīrī (estimated)',
          termArabic: 'إِعْرَابٌ تَقْدِيرِيّ',
          body:
              'Case marking present in meaning but not pronounced — '
              'e.g. جَاءَ فَتًى (the ā on fatā hides a ḍamma).',
        ),
        Definition(
          term: 'Lafẓī ʿĀmil',
          termArabic: 'عَامِلٌ لَفْظِيّ',
          body: 'A governing factor that is pronounced — most ʿāmils.',
        ),
        Definition(
          term: 'Maʿnawī ʿĀmil',
          termArabic: 'عَامِلٌ مَعْنَوِيّ',
          body:
              'An abstract governing factor — ibtidāʾ (for mubtadaʾ and khabar) '
              'and the absence of nāṣib/jāzim (for marfūʿ mudāriʿ).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'Iʿrāb is shown by ḥaraka (ḍamma / fatḥa / kasra) or by '
              'ḥarf (wāw / alif / yāʾ).',
          arabicExemplar: 'زَيْدٌ — زَيْدًا — زَيْدٍ',
        ),
        RuleItem(
          statement:
              'Only three things act as maʿnawī ʿāmil: ibtidāʾ for the '
              'mubtadaʾ, ibtidāʾ for the khabar, and the unmarked mudāriʿ.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 14 — أَقْسَامُ الْمُعْرَبِ وَالْمَبْنِيّ
const Lesson _murabMabniTypes = Lesson(
  id: 'nahw-14-murab-mabni-types',
  order: 14,
  titleArabic: 'أَقْسَامُ الْمُعْرَبِ وَالْمَبْنِيّ',
  titleEnglish: 'Types of Muʿrab & Mabnī',
  summary:
      'Every Arabic word is either mabnī (fixed ending) or muʿrab '
      '(changing ending). This lesson catalogues which word-types fall where.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Six Mabnī Word-Types',
      body: 'All words of the following types have fixed, unchanging endings.',
      definitions: [
        Definition(
          term: '1. Fiʿl Māḍī & Amr',
          termArabic: 'الْفِعْلُ الْمَاضِي وَالْأَمْر',
          body: 'e.g. نَصَرَ، ذَهَبَ; اُنْصُرْ، اِذْهَبْ.',
        ),
        Definition(
          term: '2. All Particles',
          termArabic: 'جَمِيعُ الْحُرُوف',
          body: 'e.g. مِنْ، إِنَّ، لَا.',
        ),
        Definition(
          term: '3. Ism Ghayru Mutamakkin',
          termArabic: 'اِسْمٌ غَيْرُ مُتَمَكِّن',
          body: 'Non-declinable nouns — pronouns, demonstratives, etc.',
        ),
        Definition(
          term: '4. Mudāriʿ + Nūn Tawkīd / Nūn Nisāʾ',
          termArabic: 'الْمُضَارِعُ مَعَ نُونِ التَّوْكِيدِ أَوِ النِّسْوَة',
          body: 'e.g. يَضْرِبَنَّ; يَضْرِبْنَ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Two Muʿrab Word-Types',
      definitions: [
        Definition(
          term: '1. Ism Mutamakkin',
          termArabic: 'اِسْمٌ مُتَمَكِّن',
          body: 'Most nouns — e.g. زَيْدٌ، رَجُلٌ.',
        ),
        Definition(
          term: '2. Fiʿl Muḍāriʿ (without nūn)',
          termArabic: 'الْفِعْلُ الْمُضَارِع',
          body: 'e.g. يَنْصُرُ، تَنْصُرِينَ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Eight Sub-types of Ism Ghayru Mutamakkin',
      definitions: [
        Definition(term: '1. Ḍamīr', termArabic: 'ضَمِير', body: 'e.g. أَنَا، هُوَ.'),
        Definition(term: '2. Ism Ishāra', termArabic: 'اِسْمُ الْإِشَارَة', body: 'e.g. هَذَا، ذَلِكَ.'),
        Definition(term: '3. Ism Mawṣūl', termArabic: 'اِسْمُ الْمَوْصُول', body: 'e.g. اَلَّذِي، اَلَّتِي.'),
        Definition(term: '4. Ism Istifhām', termArabic: 'اِسْمُ الاِسْتِفْهَام', body: 'e.g. أَيْنَ، مَتَى.'),
        Definition(term: '5. Ism Sharṭ', termArabic: 'اِسْمُ الشَّرْط', body: 'e.g. مَنْ، مَا.'),
        Definition(term: '6. Ism Ẓarf', termArabic: 'اِسْمُ الظَّرْف', body: 'e.g. إِذْ، إِذَا.'),
        Definition(term: '7. Ism Kināya', termArabic: 'اِسْمُ الْكِنَايَة', body: 'e.g. كَمْ، كَذَا.'),
        Definition(term: '8. Ism Fiʿl', termArabic: 'اِسْمُ الْفِعْل', body: 'e.g. هَيْهَاتَ، حَيَّ.'),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 15 — الضَّمَائِر
const Lesson _damir = Lesson(
  id: 'nahw-15-damir',
  order: 15,
  titleArabic: 'الضَّمَائِر',
  titleEnglish: 'Pronouns (Ḍamāʾir)',
  summary:
      'Pronouns stand in place of nouns for the speaker, the addressed, or '
      'the absent. They come in five types across three grammatical positions.',
  estimatedMinutes: 9,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Five Types of Pronoun',
      body:
          'Pronouns (ḍamāʾir) refer to the speaker (mutakallim), the '
          'addressed (mukhāṭab), or the absent (ghāʾib). They fall into '
          'five types by grammatical position.',
      definitions: [
        Definition(
          term: '1. Marfūʿ Muttaṣil (attached nominative)',
          termArabic: 'ضَمِيرٌ مَرْفُوعٌ مُتَّصِل',
          body:
              'Attached to a verb as its doer — 14 forms:\n'
              'نَصَرَ، نَصَرَا، نَصَرُوا، نَصَرَتْ، نَصَرَتَا، نَصَرْنَ،\n'
              'نَصَرْتَ، نَصَرْتُمَا، نَصَرْتُمْ، نَصَرْتِ، نَصَرْتُنَّ، نَصَرْتُ، نَصَرْنَا.',
        ),
        Definition(
          term: '2. Marfūʿ Munfaṣil (separate nominative)',
          termArabic: 'ضَمِيرٌ مَرْفُوعٌ مُنْفَصِل',
          body:
              'Stand-alone subject pronouns:\n'
              'هُوَ، هُمَا، هُمْ، هِيَ، هُمَا، هُنَّ،\n'
              'أَنْتَ، أَنْتُمَا، أَنْتُمْ، أَنْتِ، أَنْتُنَّ، أَنَا، نَحْنُ.',
        ),
        Definition(
          term: '3. Manṣūb Muttaṣil (attached accusative)',
          termArabic: 'ضَمِيرٌ مَنْصُوبٌ مُتَّصِل',
          body:
              'Attached to a verb as its object — e.g. نَصَرَهُ، نَصَرَهُمَا، نَصَرَهُمْ… '
              'Also attached to ḥurūf mushabbaha: إِنَّهُ، إِنَّهُمَا، إِنَّهُمْ…',
        ),
        Definition(
          term: '4. Manṣūb Munfaṣil (separate accusative)',
          termArabic: 'ضَمِيرٌ مَنْصُوبٌ مُنْفَصِل',
          body:
              'Stand-alone object pronouns — إِيَّاهُ، إِيَّاهُمَا، إِيَّاهُمْ، '
              'إِيَّاهَا، إِيَّاكَ، إِيَّاكُمَا، إِيَّاكُمْ، إِيَّاكِ، إِيَّانَا.',
        ),
        Definition(
          term: '5. Majrūr Muttaṣil (attached genitive)',
          termArabic: 'ضَمِيرٌ مَجْرُورٌ مُتَّصِل',
          body:
              'Attached to nouns as possessives, or to particles of jarr — '
              'e.g. وَلَدُهُ، وَلَدُهُمَا، لَهُ، لَهُمَا، لَهُمْ، لَكَ، لَنَا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'The wāw, alif, and yāʾ hidden inside certain verb forms '
              '(e.g. يَكْتُبُ, يَكْتُبَانِ) are ḍamīr marfūʿ muttaṣil '
              'called mustatirun (concealed).',
          arabicExemplar: 'يَكْتُبُ ← ضَمِيرٌ مُسْتَتِر',
        ),
        RuleItem(
          statement:
              'The ḍamāʾir that always appear openly are called bāriz '
              '(manifest).',
          arabicExemplar: 'كَتَبُوا ← ضَمِيرٌ بَارِز',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 16 — أَسْمَاءُ الْإِشَارَة
const Lesson _ismIshara = Lesson(
  id: 'nahw-16-ism-ishara',
  order: 16,
  titleArabic: 'أَسْمَاءُ الْإِشَارَة',
  titleEnglish: 'Demonstrative Nouns (Ism al-Ishāra)',
  summary:
      'Demonstratives point to a nearby or distant referent. They agree '
      'with their referent in gender, and the kāf of distance is added to '
      'match the addressee.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Near & Far Demonstratives',
      body:
          'Demonstratives are of two kinds: near (li-l-qarīb) and far '
          '(li-l-baʿīd).',
      definitions: [
        Definition(
          term: 'Near — Masculine',
          termArabic: 'ذَا — ذَانِ — هَؤُلَاء',
          body: 'Singular: هَذَا · Dual: هَذَانِ · Plural: هَؤُلَاء.',
        ),
        Definition(
          term: 'Near — Feminine',
          termArabic: 'تَا — تَانِ — هَؤُلَاء',
          body: 'Singular: هَذِهِ · Dual: هَاتَانِ · Plural: هَؤُلَاء.',
        ),
        Definition(
          term: 'Far — Masculine',
          termArabic: 'ذَاكَ — ذَانِكَ — أُولَئِكَ',
          body: 'Singular: ذَلِكَ · Dual: ذَانِكَ · Plural: أُولَئِكَ.',
        ),
        Definition(
          term: 'Far — Feminine',
          termArabic: 'تَاكَ — تَانِكَ — أُولَئِكَ',
          body: 'Singular: تِلْكَ · Dual: تَانِكَ / تَيْنِكَ · Plural: أُولَئِكَ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Key Rules',
      definitions: [
        Definition(
          term: 'Rule 1: Gender Agreement',
          termArabic: '',
          body:
              'The ism ishāra must match its referent (mushār ilayhi) in '
              'gender — هَذَا الْقَلَمُ (m) / هَذِهِ الْكُرَّاسَةُ (f).',
        ),
        Definition(
          term: 'Rule 2: Non-rational Plural → Feminine Singular',
          termArabic: '',
          body:
              'For non-rational (inanimate) plurals, the singular feminine '
              'demonstrative is used — هَذِهِ الْعُلُومُ.',
        ),
        Definition(
          term: 'Rule 3: هُنَا / هُنَاكَ for Place',
          termArabic: 'هُنَا — هُنَاكَ',
          body:
              'هُنَا (here) points to a near place; هُنَاكَ / هُنَالِكَ (there) '
              'points to a far place.',
        ),
        Definition(
          term: 'Rule 4: Kāf of Address',
          termArabic: 'كَافُ الْخِطَاب',
          body:
              'The kāf at the end of ذَلِكَ etc. matches the addressee — '
              'ذَلِكَ الْكِتَابُ (to a male) / تِلْكَ الْكِتَابُ (to a female).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'In Practice',
      examples: [
        ExampleItem(
          arabic: 'هَذَا الْقَلَمُ',
          transliteration: 'hādhā-l-qalamu',
          translation: 'this pen',
          note: 'Near, masculine.',
        ),
        ExampleItem(
          arabic: 'هَذِهِ الْكِتَابُ',
          transliteration: 'hādhihi-l-kitābu',
          translation: 'this book (pointed to as feminine context)',
          note: 'Near, feminine.',
        ),
        ExampleItem(
          arabic: 'ذَلِكَ الطَّالِبُ',
          transliteration: 'dhālika-ṭ-ṭālibu',
          translation: 'that student',
          note: 'Far, masculine.',
        ),
        ExampleItem(
          arabic: 'تِلْكَ الْمَدْرَسَةُ',
          transliteration: 'tilka-l-madrasatu',
          translation: 'that school',
          note: 'Far, feminine.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 17 — أَسْمَاءُ الْمَوْصُول
const Lesson _ismMawsul = Lesson(
  id: 'nahw-17-ism-mawsul',
  order: 17,
  titleArabic: 'أَسْمَاءُ الْمَوْصُول',
  titleEnglish: 'Relative Nouns (Ism al-Mawṣūl)',
  summary:
      'Relative nouns join a dependent clause (ṣila) to the main sentence. '
      'They are mabnī and require a ṣila that contains a pronoun '
      'referring back to them.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Relative Nouns',
      body:
          'An ism mawṣūl joins a sentence (ṣila) to the main clause, '
          'functioning as noun, subject, object, or muḍāf ilayhi.',
      definitions: [
        Definition(
          term: 'Masculine Forms',
          termArabic: 'اَلَّذِي — اَللَّذَانِ — اَلَّذِينَ',
          body: 'Sg: اَلَّذِي · Dual: اَللَّذَانِ · Pl: اَلَّذِينَ.',
        ),
        Definition(
          term: 'Feminine Forms',
          termArabic: 'اَلَّتِي — اَللَّتَانِ — اَللَّوَاتِي',
          body: 'Sg: اَلَّتِي · Dual: اَللَّتَانِ · Pl: اَللَّوَاتِي.',
        ),
        Definition(
          term: 'Shared Forms',
          termArabic: 'مَنْ — مَا — أَيٌّ — أَيَّةٌ',
          body:
              'مَنْ for rational beings; مَا for non-rational; '
              'أَيٌّ (m) / أَيَّةٌ (f) for both.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Rules of the Ṣila',
      rules: [
        RuleItem(
          statement:
              'The ṣila is always a complete sentence and must contain '
              'a pronoun (ʿāʾid) that refers back to the ism mawṣūl.',
          arabicExemplar: 'جَاءَ الَّذِي نَصَرْتُهُ',
        ),
        RuleItem(
          statement:
              'The ṣila is usually a verbal sentence; if it is a nominal '
              'sentence, the ʿāʾid must be present.',
          arabicExemplar: 'جَاءَ الَّذِي هُوَ شَاعِرٌ',
        ),
        RuleItem(
          statement:
              'When أَيٌّ / أَيَّةٌ is muḍāf and its mudāf ilayhi is dropped, '
              'it becomes muʿrab.',
          arabicExemplar: 'رَأَيْتُ أَيُّهُمْ عَالِمٌ',
        ),
      ],
    ),
  ],
);


// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 18 — أَسْمَاءُ الاِسْتِفْهَام
const Lesson _ismIstifham = Lesson(
  id: 'nahw-18-ism-istifham',
  order: 18,
  titleArabic: 'أَسْمَاءُ الاِسْتِفْهَام',
  titleEnglish: 'Interrogative Nouns (Ism al-Istifhām)',
  summary:
      'Interrogative nouns are used to ask about a person, thing, time, '
      'place, manner, or quantity.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Eleven Interrogative Nouns',
      definitions: [
        Definition(term: 'مَنْ (who)', termArabic: 'مَنْ', body: 'For rational beings — مَنْ جَاءَ؟'),
        Definition(term: 'مَا (what)', termArabic: 'مَا', body: 'For non-rationals — مَا بِيَدِكَ؟'),
        Definition(term: 'أَيٌّ / أَيَّةٌ (which)', termArabic: 'أَيٌّ', body: 'Which one — أَيُّ رَجُلٍ جَاءَ؟'),
        Definition(term: 'مَاذَا (what)', termArabic: 'مَاذَا', body: 'مَاذَا فِي جَيْبِكَ؟'),
        Definition(term: 'كَمْ (how many)', termArabic: 'كَمْ', body: 'كَمْ كِتَابًا لَكَ؟'),
        Definition(term: 'كَيْفَ (how)', termArabic: 'كَيْفَ', body: 'كَيْفَ أَنْتَ؟'),
        Definition(term: 'مَتَى (when)', termArabic: 'مَتَى', body: 'مَتَى تَذْهَبُ؟'),
        Definition(term: 'أَيَّانَ (when — future)', termArabic: 'أَيَّانَ', body: 'أَيَّانَ يَوْمُ الدِّينِ؟'),
        Definition(term: 'أَيْنَ (where)', termArabic: 'أَيْنَ', body: 'أَيْنَ زَيْدٌ؟'),
        Definition(term: 'أَنَّى (how / whence)', termArabic: 'أَنَّى', body: 'أَنَّى تَجْلِسُ؟'),
        Definition(
          term: 'Hamza & هَلْ (yes/no question)',
          termArabic: 'الْهَمْزَة — هَلْ',
          body: 'These are ḥurūf istifhām, not nouns — أَبَكْرٌ عَالِمٌ؟ هَلِ الْوَلَدُ قَائِمٌ؟',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Iʿrāb of Interrogatives',
      rules: [
        RuleItem(
          statement:
              'The ism istifhām takes the case required by its position in '
              'the sentence — subject, object, muḍāf ilayhi, or adverb.',
          arabicExemplar: 'مَنْ جَاءَ؟ ← marfūʿ (subject)',
        ),
        RuleItem(
          statement:
              'When preceded by a ḥarf jārr or a muḍāf, it becomes majrūr.',
          arabicExemplar: 'بِمَنْ مَرَرْتَ؟ — غُلَامُ مَنْ نَصَرْتَ؟',
        ),
        RuleItem(
          statement:
              'كَمْ after a verb gives its tamyīz in the accusative; '
              'after a ḥarf jārr its tamyīz is in the genitive.',
          arabicExemplar: 'كَمْ كِتَابًا قَرَأْتَ؟ — بِكَمِ الْكِتَابِ؟',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 19 — أَسْمَاءُ الشَّرْط
const Lesson _ismShart = Lesson(
  id: 'nahw-19-ism-shart',
  order: 19,
  titleArabic: 'أَسْمَاءُ الشَّرْط',
  titleEnglish: 'Conditional Nouns (Ism al-Sharṭ)',
  summary:
      'Conditional nouns link two sentences so that the first is the '
      'condition (sharṭ) and the second is its consequence (jawāb).',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Eleven Conditional Nouns',
      definitions: [
        Definition(term: 'مَنْ (whoever)', termArabic: 'مَنْ', body: 'مَنْ صَمَتَ فَقَدْ نَجَا.'),
        Definition(term: 'مَا (whatever)', termArabic: 'مَا', body: 'مَا تَزْرَعْ تَحْصُدْ.'),
        Definition(term: 'أَيٌّ (whichever)', termArabic: 'أَيٌّ', body: 'أَيُّكُمْ يَضْرِبْ أَضْرِبْهُ.'),
        Definition(term: 'مَتَى (whenever)', termArabic: 'مَتَى', body: 'مَتَى تَقُمْ أَقُمْ.'),
        Definition(term: 'أَيْنَمَا (wherever)', termArabic: 'أَيْنَمَا', body: 'أَيْنَمَا تَقُمْ أَجْلِسْ.'),
        Definition(term: 'إِذْمَا (if ever)', termArabic: 'إِذْمَا', body: 'إِذْمَا تَقُمْ أَقُمْ.'),
        Definition(term: 'كَيْفَمَا (however)', termArabic: 'كَيْفَمَا', body: 'كَيْفَمَا تَقْرَأْ أَقْرَأْ.'),
        Definition(term: 'مَهْمَا (whatever)', termArabic: 'مَهْمَا', body: 'مَهْمَا تَأْتِيَ آتِكَ.'),
        Definition(term: 'حَيْثُمَا (wherever)', termArabic: 'حَيْثُمَا', body: 'حَيْثُمَا تَجْلِسْ أَجْلِسْ.'),
        Definition(term: 'أَنَّى (whenever/wherever)', termArabic: 'أَنَّى', body: 'أَنَّى تَذْهَبْ أَذْهَبْ.'),
        Definition(
          term: 'إِنْ / لَوْ / أَمَّا (conditional particles)',
          termArabic: 'إِنْ — لَوْ — أَمَّا',
          body: 'These are ḥurūf sharṭ, not nouns, but give jazm to the mudāriʿ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Iʿrāb of Conditional Nouns',
      rules: [
        RuleItem(
          statement:
              'Ism sharṭ acts like ism istifhām in iʿrāb — its case is '
              'determined by the verb of the sharṭ clause.',
          arabicExemplar: 'مَا تَصْنَعْ أَصْنَعْ ← manṣūb (maf\'ūl)',
        ),
        RuleItem(
          statement:
              'All asmāʾ sharṭ give jazm to both the sharṭ and jawāb verbs, '
              'except إِذَا and كَيْفَمَا which are shādhdh.',
        ),
        RuleItem(
          statement:
              'إِنْ and لَوْ are not isms — they are ḥurūf and give jazm to '
              'the mudāriʿ verb.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 20 — أَسْمَاءُ الظُّرُوف
const Lesson _ismDharf = Lesson(
  id: 'nahw-20-ism-dharf',
  order: 20,
  titleArabic: 'أَسْمَاءُ الظُّرُوف',
  titleEnglish: 'Adverbial Nouns (Ism al-Ẓarf)',
  summary:
      'Adverbial nouns denote time or place and carry an implied فِي. '
      'They are divided into mabni (fixed) and muʿrab (declinable), '
      'and into indefinite and definite in their scope.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition and Two Divisions',
      body:
          'An ism ẓarf (adverb of time or place) is a noun that carries '
          'the implicit meaning of "in/at". It is divided in two ways.',
      definitions: [
        Definition(
          term: 'Division 1 — by Meaning',
          termArabic: 'ظَرْفُ الزَّمَانِ — ظَرْفُ الْمَكَان',
          body:
              'Ẓarf Zamān (time adverb) — e.g. مَتَى، بَعْدُ.\n'
              'Ẓarf Makān (place adverb) — e.g. أَيْنَ، تَحْتَ.',
        ),
        Definition(
          term: 'Division 2 — by Iʿrāb',
          termArabic: 'مَبْنِيّ — مُعْرَب',
          body:
              'Mabnī (fixed ending) — e.g. إِذْ، مُنْذُ، مَذْ، لَدَى، أَمْسِ.\n'
              'Muʿrab (changing ending) — e.g. لَيْلٌ، مَدِينَةٌ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Mabni Adverbs',
      definitions: [
        Definition(term: 'إِذْ (when — past)', termArabic: 'إِذْ', body: 'أَكْرَمْتُهُ إِذْ أَكْرَمَ أَمْسِ.'),
        Definition(term: 'مُنْذُ / مُذْ (since)', termArabic: 'مُنْذُ — مُذْ', body: 'مَا رَأَيْتُهُ مُنْذُ سَنَةٍ.'),
        Definition(term: 'لَدَى / لَدُنْ (at / near)', termArabic: 'لَدَى — لَدُنْ', body: 'اَلْقَلَمُ لَدَى زَيْدٍ.'),
        Definition(term: 'أَمْسِ (yesterday)', termArabic: 'أَمْسِ', body: 'جُنْتُ أَمْسِ.'),
        Definition(term: 'قَطُّ (ever — negative past)', termArabic: 'قَطُّ', body: 'لَمْ أَرَهُ قَطُّ.'),
        Definition(term: 'حَيْثُ (where)', termArabic: 'حَيْثُ', body: 'اِجْلِسْ حَيْثُ الْمَنْظَرُ جَمِيلٌ.'),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Muʿrab Adverbs',
      body:
          'Muʿrab adverbs like قَبْلَ، بَعْدَ، فَوْقَ، تَحْتَ، عِنْدَ are '
          'mabnī on ḍamma when used without a muḍāf ilayhi, but muʿrab '
          'when they have a muḍāf — e.g. جِئْتُ قَبْلَهُ (muʿrab).',
      definitions: [
        Definition(term: 'فَوْقَ / تَحْتَ', termArabic: 'فَوْقَ — تَحْتَ', body: 'زَيْدٌ فَوْقُ (without muḍāf) / فَوْقَ خَالِدٍ (with).'),
        Definition(term: 'قَبْلَ / بَعْدَ', termArabic: 'قَبْلَ — بَعْدَ', body: 'جِئْتُ قَبْلَ خَالِدٍ.'),
        Definition(
          term: 'لَاغَيْرُ / حَسْبُ',
          termArabic: 'لَاغَيْرُ — حَسْبُ',
          body: 'Always mabnī on ḍamma — جَاءَ زَيْدٌ لَاغَيْرُ.',
        ),
        Definition(
          term: 'مِثْلُ / غَيْرُ',
          termArabic: 'مِثْلُ — غَيْرُ',
          body: 'Muʿrab when muḍāf; mabnī when without muḍāf.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 21 — الْمُنْصَرِفُ وَغَيْرُ الْمُنْصَرِف
const Lesson _mansrifGhair = Lesson(
  id: 'nahw-21-mansrif-ghair',
  order: 21,
  titleArabic: 'الْمُنْصَرِفُ وَغَيْرُ الْمُنْصَرِف',
  titleEnglish: 'Fully & Partially Declined Nouns',
  summary:
      'Declinable nouns are either fully declined (munṣarif — takes tanwīn '
      'and kasra) or partially declined (ghayru munṣarif — takes neither).',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition',
      definitions: [
        Definition(
          term: 'Munṣarif (Fully Declined)',
          termArabic: 'الْمُنْصَرِف',
          body:
              'A muʿrab noun whose genitive ends in kasra and which takes '
              'tanwīn — e.g. جَاءَ زَيْدٌ، نَظَرْتُ إِلَى زَيْدٍ.',
        ),
        Definition(
          term: 'Ghayru Munṣarif (Partially Declined)',
          termArabic: 'غَيْرُ الْمُنْصَرِف',
          body:
              'A muʿrab noun that takes neither tanwīn nor kasra in the '
              'genitive — e.g. جَاءَ أَحْمَدُ، نَظَرْتُ إِلَى أَحْمَدَ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Seven Types of Ghayru Munṣarif',
      definitions: [
        Definition(
          term: '1. Jamʿ that ends in ة on the pattern of مَفَاعِل',
          termArabic: 'مَسَاجِد — مَدَارِس',
          body: 'Broken plurals on مَفَاعِل / مَفَاعِيل pattern.',
        ),
        Definition(
          term: '2. Ism ending in alif maqṣūra or mamdūda',
          termArabic: 'صُغْرَى — حَمْرَاء',
          body: 'e.g. صُغْرَى، حَمْرَاء.',
        ),
        Definition(
          term: '3. Ism ʿAdad on the pattern فُعَلُ / أَفْعَلُ',
          termArabic: 'أَحَادُ — مَعْشَر',
          body: 'e.g. أَحَادُ، مَعْشَرُ.',
        ),
        Definition(
          term: '4. ʿAlam on pattern أَفْعَلُ / يَافْعَلُ (no attribution)',
          termArabic: 'بَعْلَبَك — عُمَر',
          body: 'e.g. بَعْلَبَكَّ، عُمَرُ، أَحْمَدُ.',
        ),
        Definition(
          term: '5. ʿAlam ending in alif + nūn (extra)',
          termArabic: 'طَلْحَة — عُثْمَان',
          body: 'e.g. طَلْحَةُ، عَائِشَةُ، عُثْمَانُ.',
        ),
        Definition(
          term: '6. Muʾannath ʿAlam with three or more letters',
          termArabic: 'زَيْنَب — إِسْحَاق',
          body: 'e.g. زَيْنَبُ، إِسْحَاقُ, or three letters with a moving middle vowel.',
        ),
        Definition(
          term: '7. Adjective on pattern أَفْعَلُ / فَعْلَانُ',
          termArabic: 'أَحْمَر — غَضْبَان',
          body: 'e.g. أَحْمَرُ، أَنْصَرُ، غَضْبَانُ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'When a ghayru munṣarif is preceded by alif-lām or becomes '
              'muḍāf, it regains kasra and tanwīn — '
              'e.g. مَرَرْتُ بِالْمَسَاجِدِ / مَرَرْتُ بِمَسَاجِدِكُمْ.',
          arabicExemplar: 'مَرَرْتُ بِالْمَسَاجِدِ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 22 — إِعْرَابُ الاِسْمِ الْمُعْرَب
const Lesson _iraabIsm = Lesson(
  id: 'nahw-22-iraab-ism',
  order: 22,
  titleArabic: 'إِعْرَابُ الاِسْمِ الْمُعْرَب',
  titleEnglish: 'Declension of the Muʿrab Noun',
  summary:
      'The muʿrab noun has three cases (Rafʿ, Naṣb, Jarr) shown by '
      'different signs across its twelve sub-types.',
  estimatedMinutes: 10,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Twelve Sub-types of Muʿrab Noun',
      body:
          'Each sub-type takes case signs in a specific way across Rafʿ, '
          'Naṣb, and Jarr.',
      definitions: [
        Definition(
          term: '1–3. Mufrad / Qāʾim Maqām / Jamʿ Mukassar (munṣarif)',
          termArabic: 'مُفْرَد مُنْصَرِف',
          body: 'Rafʿ: ḍamma · Naṣb: fatḥa · Jarr: kasra — e.g. جَاءَ رَجُلٌ، رَأَيْتُ رَجُلًا، نَظَرْتُ إِلَى رَجُلٍ.',
        ),
        Definition(
          term: '4. Jamʿ Muʾannath Sālim',
          termArabic: 'جَمْعُ الْمُؤَنَّثِ السَّالِم',
          body: 'Rafʿ: ḍamma · Naṣb & Jarr: kasra — e.g. هَذِهِ كُرَّاسَاتٌ، رَأَيْتُ كُرَّاسَاتٍ.',
        ),
        Definition(
          term: '5. Ghayru Munṣarif',
          termArabic: 'غَيْرُ الْمُنْصَرِف',
          body: 'Rafʿ: ḍamma · Naṣb & Jarr: fatḥa — e.g. جَاءَ عُمَرُ، رَأَيْتُ عُمَرَ، نَظَرْتُ إِلَى عُمَرَ.',
        ),
        Definition(
          term: '6. Ism Maqṣūr',
          termArabic: 'اِسْمٌ مَقْصُور',
          body: 'All three cases taqdīrī — e.g. جَاءَ الْفَتَى، رَأَيْتُ الْفَتَى، نَظَرْتُ إِلَى الْفَتَى.',
        ),
        Definition(
          term: '7. Ism Manqūṣ',
          termArabic: 'اِسْمٌ مَنْقُوص',
          body: 'Rafʿ & Jarr taqdīrī · Naṣb: fatḥa — e.g. جَاءَ الْقَاضِي، رَأَيْتُ الْقَاضِيَ.',
        ),
        Definition(
          term: '8. Ism Maqṣūr / Muḍāf ilā Yāʾ',
          termArabic: 'مُضَافٌ إِلَى يَاء',
          body: 'All three cases taqdīrī — e.g. جَاءَ غُلَامِي.',
        ),
        Definition(
          term: '9. Asmāʾ Sittah',
          termArabic: 'أَسْمَاءُ السِّتَّة — أَبٌ — أَخٌ — حَمٌ — هَنٌ — فَمٌ — ذُو',
          body: 'Rafʿ: wāw · Naṣb: alif · Jarr: yāʾ — e.g. جَاءَ أَبُو زَيْدٍ، رَأَيْتُ أَبَا زَيْدٍ.',
        ),
        Definition(
          term: '10. Tathniyah / كِلَا / كِلْتَا',
          termArabic: 'الْمُثَنَّى',
          body: 'Rafʿ: alif (ān) · Naṣb & Jarr: yāʾ (ayn) — e.g. جَاءَ رَجُلَانِ، رَأَيْتُ رَجُلَيْنِ.',
        ),
        Definition(
          term: '11. Jamʿ Mudhakkar Sālim',
          termArabic: 'جَمْعُ الْمُذَكَّرِ السَّالِم',
          body: 'Rafʿ: wāw (ūn) · Naṣb & Jarr: yāʾ (īn) — e.g. جَاءَ الْمُسْلِمُونَ، رَأَيْتُ الْمُسْلِمِينَ.',
        ),
        Definition(
          term: '12. Jamʿ Mudhakkar Sālim (addressee)',
          termArabic: 'جَمْعُ الْمُذَكَّرِ السَّالِمُ لِلْمُتَكَلِّم',
          body: 'Rafʿ: wāw · Naṣb & Jarr: yāʾ — e.g. جَاءَ مُسْلِمِي.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'The asmāʾ sittah, tathniyah, and jamʿ mudhakkar sālim '
              'take case by letter (ḥarf), not vowel (ḥaraka).',
          arabicExemplar: 'أَبُوهُ — أَبَاهُ — أَبِيهِ',
        ),
        RuleItem(
          statement:
              'Ism maqṣūr and muḍāf ilā yāʾ carry estimated (taqdīrī) '
              'iʿrāb in all three cases.',
          arabicExemplar: 'الْفَتَى — الْقَاضِي — غُلَامِي',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 23 — نَوَاصِبُ وَجَوَازِمُ الْمُضَارِع
const Lesson _nawasibJawazim = Lesson(
  id: 'nahw-23-nawasib-jawazim',
  order: 23,
  titleArabic: 'نَوَاصِبُ وَجَوَازِمُ الْمُضَارِع',
  titleEnglish: 'Nawāṣib & Jawāzim of the Muḍāriʿ',
  summary:
      'Four particles pull the mudāriʿ into the accusative (naṣb); five '
      'pull it into the jussive (jazm).',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Four Nawāṣib',
      body: 'These four particles give naṣb (accusative) to the mudāriʿ.',
      definitions: [
        Definition(
          term: 'أَنْ (that / to)',
          termArabic: 'أَنْ',
          body: 'أُرِيدُ أَنْ أَذْهَبَ — I want to go. Also أَنْ maṣdariyya.',
        ),
        Definition(
          term: 'لَنْ (will never)',
          termArabic: 'لَنْ',
          body: 'لَنْ يَنْصُرَ — He will never help.',
        ),
        Definition(
          term: 'كَيْ (in order to)',
          termArabic: 'كَيْ',
          body: 'أَدْرُسُ كَيْ أَفْهَمَ الْقُرْآنَ — I study in order to understand.',
        ),
        Definition(
          term: 'إِذَنْ (then / in that case)',
          termArabic: 'إِذَنْ',
          body: 'أَسْلِمْ إِذَنْ تَنْجُوَ — Submit; then you will be saved.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Five Jawāzim',
      body: 'These five particles give jazm (jussive) to the mudāriʿ.',
      definitions: [
        Definition(
          term: 'لَمْ (did not)',
          termArabic: 'لَمْ',
          body: 'لَمْ يَأْكُلْ، لَمْ يَدَعْ — He did not eat / leave.',
        ),
        Definition(
          term: 'لَمَّا (not yet)',
          termArabic: 'لَمَّا',
          body: 'لَمَّا يَقُلْ — He has not yet said.',
        ),
        Definition(
          term: 'لَـ (imperative lām)',
          termArabic: 'لِـ / لَـ',
          body: 'لِيَنْصُرْ، لِيَزُمْ — Let him help / commit.',
        ),
        Definition(
          term: 'لَا (prohibitive)',
          termArabic: 'لَا',
          body: 'لَا تَشْرَبْ، لَا تَنْسَ — Do not drink / forget.',
        ),
        Definition(
          term: 'إِنْ (conditional if)',
          termArabic: 'إِنْ',
          body: 'إِنْ تَجْتَهِدْ تَنْجُحْ — If you strive, you will succeed.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Remember',
      rules: [
        RuleItem(
          statement:
              'Both nawāṣib and jawāzim drop the nūn iʿrābī from the '
              'five forms (أَفْعَالُ الْخَمْسَة) and give ḍamma to the '
              'munṣarif mudāriʿ forms.',
          arabicExemplar: 'لَنْ يَنْصُرُوا → لَنْ يَنْصُرُوا',
        ),
        RuleItem(
          statement:
              'A mudāriʿ that has neither nāṣib nor jāzim before it '
              'is marfūʿ by default.',
          arabicExemplar: 'يَنْصُرُ (no particle) ← marfūʿ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 24 — إِعْرَابُ الْفِعْلِ الْمُضَارِع
const Lesson _mudariIraab = Lesson(
  id: 'nahw-24-mudari-iraab',
  order: 24,
  titleArabic: 'إِعْرَابُ الْفِعْلِ الْمُضَارِع',
  titleEnglish: 'Declension of the Muḍāriʿ Verb',
  summary:
      'The present/future verb is muʿrab and takes three cases; how each '
      'case is shown depends on whether the verb is ṣaḥīḥ, nāqiṣ, or '
      'bi-nūn iʿrābī.',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Four Sub-types and Their Iʿrāb',
      definitions: [
        Definition(
          term: '1. Ṣaḥīḥ (sound verb)',
          termArabic: 'صَحِيح',
          body:
              'Ends in a consonant with no ʿilla. '
              'Rafʿ: ḍamma · Naṣb: fatḥa · Jazm: sukūn — '
              'يَنْصُرُ / لَنْ يَنْصُرَ / لَمْ يَنْصُرْ.',
        ),
        Definition(
          term: '2. Nāqiṣ Wāwī / Yāʾī (ending in wāw or yāʾ)',
          termArabic: 'نَاقِصٌ وَاوِيّ / يَائِيّ',
          body:
              'Rafʿ: ḍamma taqdīrī · Naṣb: fatḥa taqdīrī · Jazm: drop final letter — '
              'يَدْعُو / لَنْ يَدْعُوَ / لَمْ يَدْعُ.',
        ),
        Definition(
          term: '3. Nāqiṣ Alfī (ending in alif)',
          termArabic: 'نَاقِصٌ أَلِفِيّ',
          body:
              'Rafʿ & Naṣb: taqdīrī · Jazm: drop final letter — '
              'يَرْضَى / لَنْ يَرْضَى / لَمْ يَرْضَ.',
        ),
        Definition(
          term: '4. Mudāriʿ bi-Nūn Iʿrābī (five forms)',
          termArabic: 'أَفْعَالُ الْخَمْسَة',
          body:
              'Rafʿ: nūn at end · Naṣb & Jazm: drop nūn — '
              'يَنْصُرُونَ / لَنْ يَنْصُرُوا / لَمْ يَنْصُرُوا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Pattern at a Glance',
      examples: [
        ExampleItem(arabic: 'يَنْصُرُ', transliteration: 'yanṣuru', translation: 'he helps', note: 'Ṣaḥīḥ — Rafʿ (ḍamma).'),
        ExampleItem(arabic: 'لَنْ يَنْصُرَ', transliteration: 'lan yanṣura', translation: 'he will never help', note: 'Ṣaḥīḥ — Naṣb (fatḥa).'),
        ExampleItem(arabic: 'لَمْ يَنْصُرْ', transliteration: 'lam yanṣur', translation: 'he did not help', note: 'Ṣaḥīḥ — Jazm (sukūn).'),
        ExampleItem(arabic: 'يَدْعُو', transliteration: 'yadʿū', translation: 'he calls', note: 'Nāqiṣ Wāwī — Rafʿ (taqdīrī).'),
        ExampleItem(arabic: 'لَمْ يَدْعُ', transliteration: 'lam yadʿu', translation: 'he did not call', note: 'Nāqiṣ Wāwī — Jazm (deletion).'),
        ExampleItem(arabic: 'يَنْصُرُونَ', transliteration: 'yanṣurūna', translation: 'they help', note: 'Afʿāl al-Khamsa — Rafʿ (nūn).'),
        ExampleItem(arabic: 'لَمْ يَنْصُرُوا', transliteration: 'lam yanṣurū', translation: 'they did not help', note: 'Afʿāl al-Khamsa — Jazm (drop nūn).'),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 25 — الْحُرُوفُ الْمُشَبَّهَةُ بِالْفِعْل (Inna and its sisters)
const Lesson _hurufMushabbaha = Lesson(
  id: 'nahw-25-huruf-mushabbaha',
  order: 25,
  titleArabic: 'الْحُرُوفُ الْمُشَبَّهَةُ بِالْفِعْل',
  titleEnglish: 'Inna and Its Sisters',
  summary:
      'Six particles that resemble verbs: they enter upon a nominal sentence '
      'and give its mubtadaʾ the accusative (naṣb) while keeping its khabar '
      'in the nominative (rafʿ).',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Six Particles',
      definitions: [
        Definition(term: 'إِنَّ (indeed / verily)', termArabic: 'إِنَّ', body: 'إِنَّ زَيْدًا عَالِمٌ — Indeed Zayd is a scholar.'),
        Definition(term: 'أَنَّ (that)', termArabic: 'أَنَّ', body: 'عَلِمْتُ أَنَّ زَيْدًا عَالِمٌ — I knew that Zayd is a scholar.'),
        Definition(term: 'كَأَنَّ (as if)', termArabic: 'كَأَنَّ', body: 'كَأَنَّ زَيْدًا أَسَدٌ — Zayd is as if a lion.'),
        Definition(term: 'لَكِنَّ (but / however)', termArabic: 'لَكِنَّ', body: 'مَا جَاءَ خَالِدٌ لَكِنَّ بَكْرًا جَاءَ.'),
        Definition(term: 'لَيْتَ (would that / I wish)', termArabic: 'لَيْتَ', body: 'لَيْتَ خَالِدًا جَاءَ — Would that Khālid had come.'),
        Definition(term: 'لَعَلَّ (perhaps / maybe)', termArabic: 'لَعَلَّ', body: 'لَعَلَّ زَيْدًا جَاءَ — Perhaps Zayd came.'),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Five Rules',
      rules: [
        RuleItem(
          statement:
              'These particles enter upon a nominal sentence and give its '
              'ism (mubtadaʾ) the accusative, leaving the khabar in the '
              'nominative.',
          arabicExemplar: 'إِنَّ زَيْدًا عَالِمٌ',
        ),
        RuleItem(
          statement:
              'The khabar must agree with the ism in person, number, and '
              'gender.',
          arabicExemplar: 'إِنَّ بَكْرًا شَاعِرٌ — إِنَّ الْبِنْتَيْنِ لَاعِبَتَانِ',
        ),
        RuleItem(
          statement:
              'If the khabar is a jarr-majrūr or a muḍāf ilayhi phrase, '
              'it is connected (mutaʿalliq) to a deleted verb or adjective.',
          arabicExemplar: 'إِنَّ زَيْدًا فِي الدَّارِ — إِنَّ هِنْدًا فِي الدَّارِ',
        ),
        RuleItem(
          statement:
              'When the khabar is a sentence, its pronoun must match '
              'the ism.',
          arabicExemplar: 'إِنَّ اللهَ خَلَقَ الْجَنَّةَ',
        ),
        RuleItem(
          statement:
              'مَاكَلَّ (the particle of stopping) is found with إِنَّ: '
              'إِنَّمَا جَاءَ خَالِدٌ.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 26 — مَوَاضِعُ إِنَّ وَأَنَّ
const Lesson _innaAnPositions = Lesson(
  id: 'nahw-26-inna-an',
  order: 26,
  titleArabic: 'مَوَاضِعُ إِنَّ وَأَنَّ',
  titleEnglish: 'Where to Use Inna vs. Anna',
  summary:
      'إِنَّ (with kasra) is used in six fixed positions; أَنَّ (with fatḥa) '
      'is used everywhere else where the particle can be dissolved into '
      'a maṣdar.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Six Positions for إِنَّ (kasra)',
      definitions: [
        Definition(
          term: '(الف) At the start of a sentence',
          termArabic: '',
          body: 'إِنَّ اللهَ غَفُورٌ رَحِيمٌ.',
        ),
        Definition(
          term: '(ب) After a verb of saying (قَوْل)',
          termArabic: '',
          body: 'يَقُولُ إِنَّ الدَّرْسَ صَعْبٌ.',
        ),
        Definition(
          term: '(ج) After an ism mawṣūl',
          termArabic: '',
          body: 'مَا جَاءَ الَّذِي إِنَّهُ ذَهَبَ.',
        ),
        Definition(
          term: '(د) After ʿalima / shahida when the khabar has lām',
          termArabic: '',
          body: 'أَعْلَمُ اللهَ إِنَّكَ لَعَالِمٌ.',
        ),
        Definition(
          term: '(هـ) At the start of an oath reply (jawāb qasam)',
          termArabic: '',
          body: 'وَاللهِ إِنَّكَ جَوَادٌ.',
        ),
        Definition(
          term: '(و) After ḥarf tanbīh / ḥayth',
          termArabic: '',
          body: 'أَلَا إِنَّ زَيْدًا عَالِمٌ — جَلَسْتُ حَيْثُ إِنَّ الْعَالِمَ جَالِسٌ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Positions for أَنَّ (fatḥa)',
      definitions: [
        Definition(
          term: '(الف) When ism + khabar follow a verb, fāʿil, or mubtadaʾ',
          termArabic: '',
          body: 'بَلَغَنِي أَنَّ زَيْدًا عَالِمٌ — أُعْلِنَ أَنَّ خَالِدًا نَاجِحٌ.',
        ),
        Definition(
          term: '(ب) After ʿalima / shahida + lām khabar without lām',
          termArabic: '',
          body: 'أَشْهَدُ أَنَّ بَكْرًا عَالِمٌ.',
        ),
        Definition(
          term: '(ج) After a ḥarf jārr',
          termArabic: '',
          body: 'أَكْرَمْتُهُ لِأَنَّهُ عَالِمٌ.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 27 — لَا النَّافِيَةُ لِلْجِنْس
const Lesson _laNafiyya = Lesson(
  id: 'nahw-27-la-nafiyya',
  order: 27,
  titleArabic: 'لَا النَّافِيَةُ لِلْجِنْس',
  titleEnglish: 'Lā al-Nāfiyya li-l-Jins',
  summary:
      'The lā that negates an entire genus — it enters upon a nominal '
      'sentence, gives its ism the accusative (or a mabni form), and '
      'its khabar is always marfūʿ.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & Effect',
      body:
          'لَا نَافِيَةُ لِلْجِنْس negates every individual of a genus '
          '— e.g. لَا سُرُورَ دَائِمٌ (there is no permanent joy at all). '
          'Its ism is manṣūb (or mabni for the manṣūb position) and its '
          'khabar is marfūʿ.',
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Three Forms of Its Ism',
      definitions: [
        Definition(
          term: '1. Simple (Mufrad / Muḍāf)',
          termArabic: '',
          body: 'When the ism is a simple nakira or muḍāf it is manṣūb — '
              'لَا غُلَامَ رَجُلٍ قَائِمٌ.',
        ),
        Definition(
          term: '2. Resembling Muḍāf',
          termArabic: '',
          body: 'Also manṣūb — لَا طَالِعًا جَبَلًا قَائِمٌ.',
        ),
        Definition(
          term: '3. Mabni on fatḥa',
          termArabic: '',
          body: 'When undetermined and not muḍāf — لَا رَجُلَ قَائِمٌ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Five Rules',
      rules: [
        RuleItem(
          statement:
              'لَا نَافِيَة enters upon a nominal sentence; its ism is '
              'what follows it and its khabar is that ism\'s khabar.',
        ),
        RuleItem(
          statement:
              'The khabar of لَا نَافِيَة is always marfūʿ.',
          arabicExemplar: 'لَا رَجُلَ قَائِمٌ',
        ),
        RuleItem(
          statement:
              'For agreement, treat lā\'s ism as if it were singular, '
              'dual, or plural — لَا رَجُلَ مَوْجُودٌ، لَا امْرَأَةَ قَائِمَةٌ.',
        ),
        RuleItem(
          statement:
              'Its khabar-sentence must match its ism in pronoun.',
          arabicExemplar: 'لَا إِنْسَانَ يَمْشِي عَلَى بَطْنِهِ',
        ),
        RuleItem(
          statement: 'لَا نَافِيَة\'s khabar can also be a jarr-majrūr.',
          arabicExemplar: 'لَا زَيْبَ فِيهِ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 28 — الأَفْعَالُ النَّاقِصَة (Kāna and Its Sisters)
const Lesson _afaalNaqisah = Lesson(
  id: 'nahw-28-afaal-naqisah',
  order: 28,
  titleArabic: 'الأَفْعَالُ النَّاقِصَة',
  titleEnglish: 'The Incomplete Verbs (Kāna and Its Sisters)',
  summary:
      'Seventeen verbs that enter upon a nominal sentence and give its '
      'mubtadaʾ the nominative (as their ism) and its khabar the '
      'accusative.',
  estimatedMinutes: 9,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'The Seventeen Verbs',
      body:
          'كَانَ، صَارَ، بَاتَ، ظَلَّ، أَصْبَحَ، أَضْحَى، أَمْسَى، '
          'عَادَ، رَاحَ، مَازَالَ، مَافَتِئَ، مَابَرِحَ، مَاانْفَكَّ، '
          'مَادَامَ، لَيْسَ — these seventeen verbs are called Afʿāl Nāqiṣa.',
      definitions: [
        Definition(
          term: 'كَانَ (was / is)',
          termArabic: 'كَانَ',
          body: 'كَانَ النَّبِيُّ رَحِيمًا — The Prophet was compassionate.',
        ),
        Definition(
          term: 'صَارَ (became)',
          termArabic: 'صَارَ',
          body: 'صَارَ الْمَاءُ بَارِدًا — The water became cold.',
        ),
        Definition(
          term: 'لَيْسَ (is not)',
          termArabic: 'لَيْسَ',
          body: 'لَيْسَ الْمُتَكَبِّرُ نَاجِحًا — The arrogant is not successful.',
        ),
        Definition(
          term: 'مَازَالَ (still is / continues)',
          termArabic: 'مَازَالَ',
          body: 'مَازَالَ الْمَرِيضُ بَاكِيًا — The sick person is still crying.',
        ),
        Definition(
          term: 'مَادَامَ (as long as)',
          termArabic: 'مَادَامَ',
          body: 'أَطِعْ أَبَاكَ مَادَامَ حَيًّا — Obey your father as long as he lives.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Four Rules',
      rules: [
        RuleItem(
          statement:
              'Afʿāl nāqiṣa enter upon a nominal sentence and give the '
              'mubtadaʾ rafʿ (as their ism) and the khabar naṣb.',
          arabicExemplar: 'كَانَ النَّبِيُّ رَحِيمًا',
        ),
        RuleItem(
          statement:
              'They agree with their ism in gender and number.',
          arabicExemplar: 'صَارَ بَكْرٌ عَالِمًا — لَيْسَتِ الْحَيَاةُ دَائِمَةً',
        ),
        RuleItem(
          statement:
              'Their khabar can precede their ism — مَازَالَ قَائِمًا زَيْدٌ. '
              'If the verb begins with مَا (nāqiṣa), the khabar can even '
              'precede the مَا.',
        ),
        RuleItem(
          statement:
              'When فِعْلٌ نَاقِصٌ follows its ism as a hidden pronoun, '
              'the ism is absent and a ḍamīr replaces it — '
              'صَارَ زَيْدٌ غَنِيًّا وَكَانَ فَقِيرًا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Usage of Each Verb',
      examples: [
        ExampleItem(arabic: 'كَانَ الشَّجَرُ مُثْمِرًا', transliteration: 'kāna-sh-shajaru muthmiran', translation: 'The tree was fruitful', note: 'كَانَ — was.'),
        ExampleItem(arabic: 'صَارَ الْمَاءُ بَارِدًا', transliteration: 'ṣāra-l-māʾu bāridan', translation: 'The water became cold', note: 'صَارَ — became.'),
        ExampleItem(arabic: 'ظَلَّ الْعَالِمُ مُسَافِرًا', transliteration: 'ẓalla-l-ʿālimu musāfiran', translation: 'The scholar remained a traveller', note: 'ظَلَّ — continued to be.'),
        ExampleItem(arabic: 'أَصْبَحَ الْمَاءُ بَارِدًا', transliteration: 'aṣbaḥa-l-māʾu bāridan', translation: 'The water became cold in the morning', note: 'أَصْبَحَ — became (morning).'),
        ExampleItem(arabic: 'لَيْسَ الْمُتَكَبِّرُ نَاجِحًا', transliteration: 'laysa-l-mutakabbiru nājiḥan', translation: 'The arrogant is not successful', note: 'لَيْسَ — is not.'),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 29 — مَا وَلَا مُشَابِهَتَانِ بِلَيْسَ
const Lesson _maLaLaysa = Lesson(
  id: 'nahw-29-ma-la-laysa',
  order: 29,
  titleArabic: 'مَا وَلَا مُشَابِهَتَانِ بِلَيْسَ',
  titleEnglish: 'Mā and Lā Resembling Laysa',
  summary:
      'مَا and لَا can function like لَيْسَ — giving their ism the nominative '
      'and their khabar the accusative — under certain conditions.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Mā and Lā Like Laysa',
      body:
          'These two particles (مَا and لَا) enter upon a nominal sentence '
          'and act like لَيْسَ. Their ism is the mubtadaʾ (marfūʿ) and their '
          'khabar is the khabar (manṣūb) — e.g. مَا زَيْدٌ غَائِبًا، '
          'لَا خَالِدٌ شَاعِرًا.',
      definitions: [
        Definition(
          term: 'Rule 1: Ism & Khabar Position',
          termArabic: '',
          body:
              'مَا and لَا give rafʿ to the ism and naṣb to the khabar — '
              'مَا خَالِدٌ غَيْبًا، لَا ابْنَةُ قَائِمَةٌ.',
        ),
        Definition(
          term: 'Rule 2: Nakira Only',
          termArabic: '',
          body:
              'مَا acts on both maʿrifa and nakira; لَا acts on nakira only.',
        ),
        Definition(
          term: 'Rule 3: Khabar Like Laysa',
          termArabic: '',
          body: 'The khabar of مَا comes after لَيْسَ\'s style — مَا أَحَدٌ بِغَائِبٍ.',
        ),
        Definition(
          term: 'Rule 4: إِنْ Used Like مَا',
          termArabic: '',
          body: 'إِنْ زَيْدٌ قَائِمًا — إِنْ can also mean "not" like مَا.',
        ),
        Definition(
          term: 'Rule 5: Three Cases Where مَا / لَا Do Not Work',
          termArabic: '',
          body:
              '(a) When khabar precedes ism. '
              '(b) When إِلَّا appears in the khabar. '
              '(c) When مَا is followed by إِنْ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.examples,
      title: 'Examples',
      examples: [
        ExampleItem(arabic: 'مَا خَالِدٌ شَاعِرًا', transliteration: 'mā khālidun shāʿiran', translation: 'Khālid is not a poet', note: 'مَا like لَيْسَ.'),
        ExampleItem(arabic: 'لَا رَجُلٌ كَاذِبٌ', transliteration: 'lā rajulun kādhibun', translation: 'No man is a liar', note: 'لَا like لَيْسَ (both remain marfūʿ here — no ʿamal on nakira without conditions).'),
        ExampleItem(arabic: 'مَا زَيْدٌ إِلَّا شَاعِرٌ', transliteration: 'mā zaydun illā shāʿirun', translation: 'Zayd is nothing but a poet', note: 'إِلَّا cancels مَا\'s ʿamal.'),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 30 — الْمَفْعُولُ الْمُطْلَق
const Lesson _mafUlMutlaq = Lesson(
  id: 'nahw-30-maf-ul-mutlaq',
  order: 30,
  titleArabic: 'الْمَفْعُولُ الْمُطْلَق',
  titleEnglish: 'The Absolute Object (Mafʿūl Muṭlaq)',
  summary:
      'The absolute object is a verbal noun (maṣdar) of the same root as '
      'its verb, placed after it to confirm, describe, or count the action.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & Three Types',
      body:
          'The mafʿūl muṭlaq is the verb\'s own maṣdar (or a word in its '
          'position) placed after it in the accusative.',
      definitions: [
        Definition(
          term: '1. Tawkīdī (confirmatory)',
          termArabic: 'مَفْعُولٌ مُطْلَقٌ تَوْكِيدِيّ',
          body:
              'Confirms the action — on the pattern فَعْلَة or muḍāf to it: '
              'جَلَسَ جُلُوسًا، ضَرَبَ ضَرْبًا، ضَرَبَ ضَرْبَ زَيْدٍ.',
        ),
        Definition(
          term: '2. Nawʿī (descriptive)',
          termArabic: 'مَفْعُولٌ مُطْلَقٌ نَوْعِيّ',
          body:
              'Describes the kind of action — on the pattern فَعْلَة or muḍāf: '
              'ضَرَبْتُ ضَرْبًا شَدِيدًا.',
        ),
        Definition(
          term: '3. ʿAdadī (enumerative)',
          termArabic: 'مَفْعُولٌ مُطْلَقٌ عَدَدِيّ',
          body:
              'Counts the action — a number used as maṣdar: '
              'أَكَلْتُ أَكْلَةً، أَكَلْتُ أَكْلَتَيْنِ، أَكَلْتُ ثَلَاثَ أَكَلَاتٍ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Rules',
      rules: [
        RuleItem(
          statement:
              'The mafʿūl muṭlaq is always manṣūb.',
          arabicExemplar: 'ضَرَبَ ضَرْبًا شَدِيدًا',
        ),
        RuleItem(
          statement:
              'Sometimes the mafʿūl muṭlaq itself is omitted and only '
              'its adjective or muḍāf ilayhi remains — '
              'اُذْكُرُوا اللهَ ذِكْرًا كَثِيرًا.',
        ),
        RuleItem(
          statement:
              'Some verbs always have an implicit (maḥdhūf) mafʿūl muṭlaq — '
              'e.g. سَقْيًا لَكَ (= سَقَاكَ اللهُ سَقْيًا).',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 31 — الْمَفْعُولُ بِه
const Lesson _mafUlBihi = Lesson(
  id: 'nahw-31-maf-ul-bihi',
  order: 31,
  titleArabic: 'الْمَفْعُولُ بِه',
  titleEnglish: 'The Direct Object (Mafʿūl Bihi)',
  summary:
      'The direct object is the noun upon which the action falls. It is '
      'always manṣūb and normally follows the verb and its fāʿil.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & Governance',
      definitions: [
        Definition(
          term: 'Mafʿūl Bihi',
          termArabic: 'الْمَفْعُولُ بِه',
          body:
              'The noun upon which the action of the verb falls — always '
              'manṣūb: نَصَرْتُ ضَعِيفًا، أَعْطَيْتُ الْفَقِيرَ دِرْهَمًا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Four Rules',
      rules: [
        RuleItem(
          statement:
              'One verb may govern one, two, or three mafʿūlāt bihi.',
          arabicExemplar: 'أَعْطَيْتُ زَيْدًا قَلَمًا — أَعْلَمْتُ زَيْدًا بَكْرًا فَاضِلًا',
        ),
        RuleItem(
          statement:
              'The mafʿūl bihi normally follows the verb and fāʿil, '
              'but may precede them.',
          arabicExemplar: 'نَصَرَ عَمْرًا زَيْدٌ — عَمْرًا نَصَرَ زَيْدٌ',
        ),
        RuleItem(
          statement:
              'The mafʿūl bihi may be a muḍāf, moṣūf, or jarr-majrūr phrase.',
          arabicExemplar: 'سَلَّمُوا اللهَ عَالِمًا نَافِعًا — رَأَيْتُ غُلَامَ زَيْدٍ',
        ),
        RuleItem(
          statement:
              'When the fāʿil is absent (passive), the first mafʿūl '
              'bihi becomes nāʾib fāʿil (marfūʿ).',
          arabicExemplar: 'أُعْطِيَ زَيْدٌ قَلَمًا',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 32 — الْمَفْعُولُ فِيه (Ẓarf)
const Lesson _mafUlFihi = Lesson(
  id: 'nahw-32-maf-ul-fihi',
  order: 32,
  titleArabic: 'الْمَفْعُولُ فِيهِ (الظَّرْف)',
  titleEnglish: 'The Adverbial Object (Mafʿūl Fīhi)',
  summary:
      'The adverbial object is the time or place in which the action '
      'occurs. It is always manṣūb and carries an implicit فِي.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & Two Types',
      definitions: [
        Definition(
          term: 'Mafʿūl Fīhi',
          termArabic: 'الْمَفْعُولُ فِيه',
          body:
              'A noun denoting time or place at which the verb occurs, '
              'always manṣūb — e.g. دَخَلْتُ فِي الْمَدِينَةِ يَوْمَ الْجُمُعَةِ.',
        ),
        Definition(
          term: 'Ẓarf Zamān (Time Adverb)',
          termArabic: 'ظَرْفُ الزَّمَان',
          body:
              'The time at which the action occurs — indefinite (mubham) '
              'e.g. أَذْهَبُ غَدًا; or definite (maḥdūd) e.g. صُمْتُ شَهْرَ رَمَضَانَ.',
        ),
        Definition(
          term: 'Ẓarf Makān (Place Adverb)',
          termArabic: 'ظَرْفُ الْمَكَان',
          body:
              'The place at which the action occurs — indefinite e.g. '
              'جَلَسْتُ أَمَامَ الْأَمِيرِ; or definite e.g. دَخَلْتُ دَارًا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Rules',
      rules: [
        RuleItem(
          statement:
              'A time ẓarf that is indefinite (mubham) may always be '
              'placed before فِي; a definite one may not.',
          arabicExemplar: 'أَذْهَبُ غَدًا ← indefinite ẓarf zamān',
        ),
        RuleItem(
          statement:
              'When a place ẓarf is indefinite (mubham) it may precede '
              'فِي; when definite it may not.',
          arabicExemplar: 'صَلَّيْتُ خَلْفَ الْإِمَامِ',
        ),
        RuleItem(
          statement:
              'The ẓarf\'s governing verb may be omitted and '
              'the questioner supplies it from context.',
          arabicExemplar: 'مَتَى تَصُومُ؟ — غَدًا أَصُومُ غَدًا.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 33 — الْمَفْعُولُ لَهُ وَالْمَفْعُولُ مَعَه
const Lesson _mafUlLahuMaa = Lesson(
  id: 'nahw-33-maf-ul-lahu-maa',
  order: 33,
  titleArabic: 'الْمَفْعُولُ لَهُ وَالْمَفْعُولُ مَعَه',
  titleEnglish: 'Mafʿūl Lahu & Mafʿūl Maʿah',
  summary:
      'Mafʿūl lahu states the reason for the action; mafʿūl maʿah states '
      'what accompanied the subject during the action.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Mafʿūl Lahu (Reason)',
      definitions: [
        Definition(
          term: 'Mafʿūl Lahu',
          termArabic: 'الْمَفْعُولُ لَهُ',
          body:
              'A maṣdar that states the cause/reason for the action — '
              'always manṣūb: قُمْتُ إِكْرَامًا، سَلَّتُ جَهْلًا.',
        ),
        Definition(
          term: 'Rule 1',
          termArabic: '',
          body:
              'If preceded by a lām it becomes majrūr, no longer manṣūb — '
              'قُمْتُ لِلْأُسْتَاذِ، وَقَفْتُ مِنَ الْمَطَرِ.',
        ),
        Definition(
          term: 'Rule 2',
          termArabic: '',
          body:
              'The mafʿūl lahu must be a maṣdar; if not a maṣdar the lām '
              'is obligatory — جِئْتُ لِلْمَاءِ، قُمْتُ إِكْرَامًا لِلْكِرَامِ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Mafʿūl Maʿah (Accompaniment)',
      definitions: [
        Definition(
          term: 'Mafʿūl Maʿah',
          termArabic: 'الْمَفْعُولُ مَعَه',
          body:
              'The noun after a wāw meaning "together with" — always manṣūb: '
              'جَاءَ الْبَرْدُ وَالْجَبَلَ.',
        ),
        Definition(
          term: 'Rule 1',
          termArabic: '',
          body:
              'If ʿaṭf is possible the wāw is ʿaṭf, not maʿah — '
              'e.g. جَاءَ خَالِدٌ وَزَيْدٌ (ʿaṭf) vs جَاءَ خَالِدٌ وَزَيْدًا (maʿah).',
        ),
        Definition(
          term: 'Rule 2',
          termArabic: '',
          body:
              'If ʿaṭf is not possible the wāw is obligatorily maʿah — '
              'جَاءَ زَيْدٌ وَزَيْدًا (logically same person — maʿah).',
        ),
        Definition(
          term: 'Rule 3',
          termArabic: '',
          body:
              'The word after مَعَ the particle is also mafʿūl maʿah — '
              'ذَهَبْتُ مَعَ زَيْدٍ is normally jarr-majrūr, not maʿah.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 34 — الْحَال
const Lesson _hal = Lesson(
  id: 'nahw-34-hal',
  order: 34,
  titleArabic: 'الْحَال',
  titleEnglish: 'The Circumstantial Accusative (Ḥāl)',
  summary:
      'The ḥāl describes the state of the fāʿil or mafʿūl at the time of '
      'the action. It is always manṣūb and mostly nakira.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition',
      definitions: [
        Definition(
          term: 'Ḥāl',
          termArabic: 'الْحَال',
          body:
              'A word describing the state of the doer (fāʿil) or object '
              '(mafʿūl) at the time of the verb — always manṣūb: '
              'ضَرَبْتُ زَيْدًا قَائِمًا، لَقِيتُ زَيْدًا رَاكِبِينَ.',
        ),
        Definition(
          term: 'Dhul-Ḥāl',
          termArabic: 'ذُو الْحَال',
          body:
              'The noun whose state the ḥāl describes — always maʿrifa, '
              'and the ḥāl comes after it.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Five Rules',
      rules: [
        RuleItem(
          statement:
              'Ḥāl is always manṣūb and usually nakira, '
              'occurring after the dhul-ḥāl.',
          arabicExemplar: 'جَاءَ زَيْدٌ رَاكِبًا',
        ),
        RuleItem(
          statement:
              'The dhul-ḥāl comes after the ḥāl if the dhul-ḥāl is nakira — '
              'but this is not recommended.',
          arabicExemplar: 'جَاءَ رَاكِبًا رَجُلٌ',
        ),
        RuleItem(
          statement:
              'The ḥāl must agree with its dhul-ḥāl in gender and number.',
          arabicExemplar: 'جَاءَتِ الْمَرْأَةُ رَاكِبَةً — جَاءَ الرِّجَالُ رَاكِبِينَ',
        ),
        RuleItem(
          statement:
              'When the ḥāl is a nominal sentence, a wāw and a ḍamīr '
              'referring to the dhul-ḥāl are required.',
          arabicExemplar: 'اُدْعُ اللهَ وَأَنْتَ مُوقِنٌ',
        ),
        RuleItem(
          statement:
              'When the ḥāl is a verbal sentence in the past, قَدْ must '
              'precede it; in the present/future a ḍamīr must match '
              'the dhul-ḥāl.',
          arabicExemplar: 'جَاءَ زَيْدٌ قَدْ قُمْتُ — جَاءَ يَرْكُبُ',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 35 — التَّمْيِيز
const Lesson _tamyiz = Lesson(
  id: 'nahw-35-tamyiz',
  order: 35,
  titleArabic: 'التَّمْيِيز',
  titleEnglish: 'The Specifying Accusative (Tamyīz)',
  summary:
      'Tamyīz removes ambiguity (ibhām) from a word or sentence by '
      'specifying what it refers to. It is always manṣūb and nakira.',
  estimatedMinutes: 6,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & Two Types',
      definitions: [
        Definition(
          term: 'Tamyīz',
          termArabic: 'التَّمْيِيز',
          body:
              'A nakira noun that clarifies an ambiguous word or sentence '
              '— always manṣūb: عِشْرُونَ قَلَمًا.',
        ),
        Definition(
          term: 'Tamyīz ʿan al-Dhāt',
          termArabic: 'تَمْيِيزٌ عَنِ الذَّات',
          body:
              'Specifies an ambiguous measurement (number, weight, measure, '
              'area) — e.g. لِزَيْدٍ عِشْرُونَ دِرْهَمًا، هَذَا صَاعٌ بُرًّا.',
        ),
        Definition(
          term: 'Tamyīz ʿan al-Nisbah',
          termArabic: 'تَمْيِيزٌ عَنِ النِّسْبَة',
          body:
              'Specifies an ambiguous relationship in a sentence — '
              'e.g. حَسُنَ زَيْدٌ خُلُقًا; أَنَا أَكْثَرُ مِنْكَ مَالًا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Three Rules',
      rules: [
        RuleItem(
          statement: 'Tamyīz is always manṣūb and nakira.',
          arabicExemplar: 'اشْتَرَيْتُ عِشْرِينَ كِتَابًا',
        ),
        RuleItem(
          statement:
              'Tamyīz may be converted to a majrūr by a ḥarf jārr — '
              'عِنْدِي شِبْرُ أَرْضٍ، بَعَثَ صَاعًا بُرًّا، هَذَا عِقْدُ فِضَّةٍ.',
        ),
        RuleItem(
          statement:
              'When tamyīz ʿan dhāt is a number, it may be made muḍāf — '
              'عِنْدِي ثَلَاثَةُ أَقْلَامٍ.',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 36 — الْمُسْتَثْنَى
const Lesson _mustathna = Lesson(
  id: 'nahw-36-mustathna',
  order: 36,
  titleArabic: 'الْمُسْتَثْنَى',
  titleEnglish: 'The Exception (Mustathná)',
  summary:
      'The exception removes an individual from a general ruling. The '
      'excepted noun (mustathná) takes different iʿrāb depending on which '
      'particle introduces it.',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Definition & Eleven Particles',
      body:
          'An ism that is excluded from the ruling of a general group by '
          'an exception particle — e.g. قَامَ الْقَوْمُ إِلَّا زَيْدًا.',
      definitions: [
        Definition(
          term: 'إِلَّا (except)',
          termArabic: 'إِلَّا',
          body: 'Most common — قَامَ الْقَوْمُ إِلَّا زَيْدًا.',
        ),
        Definition(
          term: 'غَيْرُ / سِوَى / سُوَى / خَلَا / عَدَا / حَاشَا / مَاخَلَا / مَاعَدَا / لَيْسَ / لَايَكُونُ',
          termArabic: 'غَيْرُ — سِوَى…',
          body: 'Also exception particles — جَاءَ الْقَوْمُ غَيْرَ زَيْدٍ.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Two Types of Mustathná',
      definitions: [
        Definition(
          term: 'Muttaṣil (connected — mustathná was in the group)',
          termArabic: 'مُتَّصِل',
          body: 'e.g. جَاءَ الْقَوْمُ إِلَّا زَيْدًا — Zayd was part of the group.',
        ),
        Definition(
          term: 'Munqaṭiʿ (disconnected — was never in the group)',
          termArabic: 'مُنْقَطِع',
          body: 'e.g. مَاجَاءَ الْقَوْمُ إِلَّا حِمَارًا — the donkey was never human.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Iʿrāb of the Mustathná',
      rules: [
        RuleItem(
          statement:
              'After إِلَّا in a positive (mūjab) sentence the mustathná '
              'is manṣūb regardless of its position.',
          arabicExemplar: 'جَاءَ الْقَوْمُ إِلَّا زَيْدًا',
        ),
        RuleItem(
          statement:
              'After غَيْرُ / سِوَى the mustathná is always majrūr.',
          arabicExemplar: 'جَاءَ الْقَوْمُ غَيْرَ زَيْدٍ — مَا لَقِيتُ سِوَى خَالِدٍ',
        ),
        RuleItem(
          statement:
              'When the mustathná is munqaṭiʿ from a positive sentence, '
              'it is manṣūb.',
          arabicExemplar: 'جَاءَ الْقَوْمُ إِلَّا فَرَسًا',
        ),
        RuleItem(
          statement:
              'When the mustathná precedes the mustathná-minhu it is '
              'always manṣūb.',
          arabicExemplar: 'جَاءَ إِلَّا زَيْدًا الْقَوْمُ',
        ),
        RuleItem(
          statement:
              'In a negative (ghayru mūjab) sentence the mustathná after '
              'إِلَّا may be marfūʿ, manṣūb, or majrūr depending on '
              'its position.',
          arabicExemplar: 'مَا جَاءَ الْقَوْمُ إِلَّا زَيْدٌ (muttaṣil — marfūʿ)',
        ),
        RuleItem(
          statement:
              'غَيْرُ used as exception always takes the iʿrāb the mustathná '
              'would have had — marfūʿ or manṣūb.',
          arabicExemplar: 'مَا جَاءَ غَيْرُ زَيْدٍ — مَا لَقِيتُ غَيْرَ زَيْدٍ بَكْرًا',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 37 — أَقْسَامُ الْفِعْلِ وَعَمَلُه
const Lesson _fiilTypes = Lesson(
  id: 'nahw-37-fiil-types',
  order: 37,
  titleArabic: 'أَقْسَامُ الْفِعْلِ وَعَمَلُه',
  titleEnglish: "Types of Verb & Its Governance",
  summary:
      'Verbs are classified as active or passive, intransitive or transitive '
      '(with one to three objects). Every active verb raises a fāʿil and '
      'may give naṣb to up to three objects.',
  estimatedMinutes: 7,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Active & Passive',
      definitions: [
        Definition(
          term: 'Fiʿl Maʿrūf (Active)',
          termArabic: 'فِعْلٌ مَعْرُوف',
          body:
              'Its attribution is to the fāʿil — e.g. جَاءَ زَيْدٌ (Zayd came).',
        ),
        Definition(
          term: 'Fiʿl Majhūl (Passive)',
          termArabic: 'فِعْلٌ مَجْهُول',
          body:
              'Its attribution is to the mafʿūl — e.g. سُوقَ مَتَاعٌ (goods were sold).',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Intransitive & Transitive',
      definitions: [
        Definition(
          term: 'Fiʿl Lāzim (Intransitive)',
          termArabic: 'فِعْلٌ لَازِم',
          body: 'Cannot take a mafʿūl — e.g. جَلَسَ زَيْدٌ.',
        ),
        Definition(
          term: 'Fiʿl Mutaʿaddī — One Object',
          termArabic: 'فِعْلٌ مُتَعَدٍّ بِمَفْعُولٍ وَاحِد',
          body: 'e.g. أَكْرَمْتُ زَيْدًا.',
        ),
        Definition(
          term: 'Fiʿl Mutaʿaddī — Two Objects',
          termArabic: 'فِعْلٌ مُتَعَدٍّ بِمَفْعُولَيْن',
          body: 'e.g. أَعْطَيْتُ زَيْدًا قَلَمًا.',
        ),
        Definition(
          term: 'Fiʿl Mutaʿaddī — Three Objects',
          termArabic: 'فِعْلٌ مُتَعَدٍّ بِثَلَاثَةِ مَفَاعِيل',
          body: 'e.g. أَخْبَرْتُ زَيْدًا بَكْرًا عَالِمًا.',
        ),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'What a Verb Governs',
      rules: [
        RuleItem(
          statement:
              'Every verb (active or passive) raises its fāʿil / nāʾib fāʿil '
              'to the nominative.',
          arabicExemplar: 'قَالَ رَسُولُ اللهِ ﷺ',
        ),
        RuleItem(
          statement:
              'Beyond the fāʿil, a verb also gives naṣb to: mafʿūl muṭlaq, '
              'mafʿūl fīhi, mafʿūl maʿah, mafʿūl lahu, ḥāl, and tamyīz.',
          arabicExemplar: 'قَامَ زَيْدٌ قِيَامًا — نَصَرَ زَيْدٌ رَاكِبًا',
        ),
        RuleItem(
          statement:
              'A transitive verb also gives naṣb to the mafʿūl bihi.',
          arabicExemplar: 'نَصَرَ زَيْدٌ ضَعِيفًا',
        ),
      ],
    ),
  ],
);

// ─────────────────────────────────────────────────────────────────────────────
/// Lesson 38 — الْمَرْفُوعَاتُ وَالْمَنْصُوبَاتُ وَالْمَجْرُورَات
const Lesson _marfuatMansubatMajrurat = Lesson(
  id: 'nahw-38-marfuat-mansubat-majrurat',
  order: 38,
  titleArabic: 'الْمَرْفُوعَاتُ وَالْمَنْصُوبَاتُ وَالْمَجْرُورَات',
  titleEnglish: 'Nominatives, Accusatives & Genitives',
  summary:
      'A comprehensive summary of all grammatical positions: eight types '
      'of marfūʿ, twelve types of manṣūb, and two types of majrūr — '
      'completing Part One of Khulāṣat-un-Naḥw.',
  estimatedMinutes: 8,
  sections: [
    LessonSection(
      kind: SectionKind.concept,
      title: 'Eight Marfūʿāt (Nominative Nouns)',
      definitions: [
        Definition(term: '1. Fāʿil', termArabic: 'الْفَاعِل', body: 'The doer of the action.'),
        Definition(term: '2. Nāʾib Fāʿil', termArabic: 'نَائِبُ الْفَاعِل', body: 'The substitute subject in passive sentences.'),
        Definition(term: '3. Mubtadaʾ', termArabic: 'الْمُبْتَدَأ', body: 'The subject of the nominal sentence.'),
        Definition(term: '4. Khabar', termArabic: 'الْخَبَر', body: 'The predicate of the nominal sentence.'),
        Definition(term: '5. Ism al-Afʿāl al-Nāqiṣa', termArabic: 'اِسْمُ الأَفْعَالِ النَّاقِصَة', body: 'Subject of kāna and its sisters.'),
        Definition(term: '6. Khabar Lā Nāfiyya', termArabic: 'خَبَرُ لَا النَّافِيَة', body: 'Predicate of lā nafiyya li-l-jins.'),
        Definition(term: '7. Ism al-Ḥurūf al-Mushabbaha', termArabic: 'اِسْمُ الْحُرُوفِ الْمُشَبَّهَة', body: 'Subject of inna and sisters (but it is manṣūb — listed here for review).'),
        Definition(term: '8. Khabar Mā wa Lā', termArabic: 'خَبَرُ مَا وَلَا', body: 'Predicate of mā and lā resembling laysa.'),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Twelve Manṣūbāt (Accusative Nouns)',
      definitions: [
        Definition(term: '1. Mafʿūl Bihi', termArabic: 'الْمَفْعُولُ بِه', body: 'Direct object.'),
        Definition(term: '2. Mafʿūl Muṭlaq', termArabic: 'الْمَفْعُولُ الْمُطْلَق', body: 'Absolute object.'),
        Definition(term: '3. Mafʿūl Fīhi', termArabic: 'الْمَفْعُولُ فِيه', body: 'Adverbial object (ẓarf).'),
        Definition(term: '4. Mafʿūl Maʿah', termArabic: 'الْمَفْعُولُ مَعَه', body: 'Accompaniment object.'),
        Definition(term: '5. Mafʿūl Lahu', termArabic: 'الْمَفْعُولُ لَهُ', body: 'Causal object.'),
        Definition(term: '6. Ḥāl', termArabic: 'الْحَال', body: 'Circumstantial accusative.'),
        Definition(term: '7. Tamyīz', termArabic: 'التَّمْيِيز', body: 'Specifying accusative.'),
        Definition(term: '8. Mustathná', termArabic: 'الْمُسْتَثْنَى', body: 'Exception.'),
        Definition(term: '9. Khabar al-Afʿāl al-Nāqiṣa', termArabic: 'خَبَرُ الأَفْعَالِ النَّاقِصَة', body: 'Predicate of kāna sisters.'),
        Definition(term: '10. Khabar Mā wa Lā (naṣb form)', termArabic: 'خَبَرُ مَا وَلَا', body: 'Predicate of mā/lā like laysa.'),
        Definition(term: '11. Ism al-Ḥurūf al-Mushabbaha', termArabic: 'اِسْمُ الْحُرُوفِ الْمُشَبَّهَة', body: 'Subject of inna and sisters (manṣūb).'),
        Definition(term: '12. Ism Lā Nāfiyya', termArabic: 'اِسْمُ لَا النَّافِيَة', body: 'Subject of lā nafiyya li-l-jins.'),
      ],
    ),
    LessonSection(
      kind: SectionKind.concept,
      title: 'Two Majrūrāt (Genitive Nouns)',
      definitions: [
        Definition(term: '1. Muḍāf Ilayhi', termArabic: 'الْمُضَافُ إِلَيْه', body: 'The second term of an iḍāfa construct.'),
        Definition(term: '2. Madkhūl Ḥarf Jarr', termArabic: 'مَدْخُولُ حَرْفِ الْجَرّ', body: 'Any noun preceded by a particle of jarr.'),
      ],
    ),
    LessonSection(
      kind: SectionKind.rules,
      title: 'Closing Note',
      rules: [
        RuleItem(
          statement:
              'Any tābiʿ (follower — adjective, badal, ʿaṭf, tawkīd) '
              'takes the same case as the word it follows.',
          arabicExemplar: 'جَاءَ زَيْدٌ الْعَالِمُ ← adjective marfūʿ',
        ),
        RuleItem(
          statement:
              'A non-rational plural mubtadaʾ or subject takes the verb, '
              'ḥāl, and tamyīz in the feminine singular.',
          arabicExemplar: 'الْكُتُبُ مُفِيدَةٌ',
        ),
      ],
    ),
  ],
);
