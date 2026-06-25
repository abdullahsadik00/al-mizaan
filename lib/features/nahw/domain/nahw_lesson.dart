/// Nahw (syntax) lessons reuse the shared [Lesson] model from `core/domain`.
///
/// `NahwLesson` is kept as a readable alias so call-sites and providers read
/// in the language of the feature while the underlying type stays shared.
library;

export 'package:al_mizan/core/domain/lesson.dart';

import 'package:al_mizan/core/domain/lesson.dart';

typedef NahwLesson = Lesson;
