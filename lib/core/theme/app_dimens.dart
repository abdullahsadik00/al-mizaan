import 'package:flutter/widgets.dart';

/// Spacing, radius, and border tokens for Al-Mizan.
///
/// Centralising these keeps the "handcrafted" rhythm consistent:
/// generous padding (20+), large radii (24 for cards), hairline borders.
abstract final class AppSpacing {
  AppSpacing._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 20; // base screen padding
  static const double xxl = 28;
  static const double xxxl = 40;

  /// Standard horizontal padding for screen bodies.
  static const EdgeInsets screen = EdgeInsets.symmetric(horizontal: xl);
}

abstract final class AppRadius {
  AppRadius._();

  static const double sm = 12;
  static const double md = 18;
  static const double lg = 24; // cards
  static const double xl = 32; // hero surfaces
  static const double pill = 999;

  static const BorderRadius card = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius hero = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius chip = BorderRadius.all(Radius.circular(pill));
  static const BorderRadius soft = BorderRadius.all(Radius.circular(md));
}

abstract final class AppBorders {
  AppBorders._();

  /// The signature 0.5px hairline width.
  static const double hairline = 0.5;
  static const double thin = 1.0;
}
