import 'package:al_mizan/features/home/domain/dashboard.dart';

/// Mock dashboard + vocabulary content. Replaceable by a repository later.

const DailyProgress kDailyProgress = DailyProgress(
  wordsLearned: 12,
  dailyGoal: 20,
  streakDays: 7,
  minutesToday: 18,
);

const TopicOfTheDay kTopicOfTheDay = TopicOfTheDay(
  arabic: 'الجُمْلَةُ الاِسْمِيَّة',
  transliteration: 'Al-Jumla al-Ismiyya',
  english: 'The Nominal Sentence',
  blurb:
      'A sentence that begins with a noun — built from a subject (mubtadaʾ) '
      'and a predicate (khabar). Today you’ll learn to balance the two.',
  module: ModuleKind.nahw,
);

const List<Flashcard> kFlashcards = [
  Flashcard(
    arabic: 'كِتَاب',
    transliteration: 'kitāb',
    meaning: 'book',
    root: 'ك-ت-ب',
    exampleArabic: 'قَرَأْتُ الكِتَابَ',
    exampleEnglish: 'I read the book',
  ),
  Flashcard(
    arabic: 'مَدْرَسَة',
    transliteration: 'madrasa',
    meaning: 'school',
    root: 'د-ر-س',
    exampleArabic: 'ذَهَبَ إِلَى المَدْرَسَةِ',
    exampleEnglish: 'He went to the school',
  ),
  Flashcard(
    arabic: 'عِلْم',
    transliteration: 'ʿilm',
    meaning: 'knowledge',
    root: 'ع-ل-م',
    exampleArabic: 'طَلَبُ العِلْمِ فَرِيضَة',
    exampleEnglish: 'Seeking knowledge is an obligation',
  ),
];
