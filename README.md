# Al-Mizan

A Flutter app for learning Arabic grammar: *Sarf* (morphology) and *Nahw* (syntax). Lessons are organised by module, with definition boxes, Arabic text rendered in Amiri / Scheherazade New, progress rings and a vocabulary section.

## Stack

- Flutter + Dart 3
- Riverpod for state management
- Feature-first structure: `lib/features/<feature>/{data,domain,presentation}`, with shared theme and widgets in `lib/core`

## Running it

Only `lib/` and `pubspec.yaml` are committed, so generate the platform folders first:

```bash
flutter create . --platforms=android,ios,web
flutter pub get
flutter run
```

## Status

Early prototype. Lesson content is mock data for now.
