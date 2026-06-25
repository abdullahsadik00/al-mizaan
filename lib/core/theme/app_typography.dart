import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Typography system for Al-Mizan.
///
/// Two families, deliberately separated:
///  • Arabic  → Amiri (display) / Scheherazade New (body) — classical naskh.
///  • English → Inter — clean, modern, neutral for instructions & UI.
///
/// Helpers are exposed so widgets never hard-code font families; they ask
/// for "arabic" or "english" intent and get a tuned style back.
abstract final class AppType {
  AppType._();

  // ── English (UI / instructions) ──────────────────────────────────────────
  static TextStyle en(
    double size, {
    FontWeight weight = FontWeight.w500,
    Color color = AppColors.ink,
    double? height,
    double letterSpacing = 0,
  }) =>
      GoogleFonts.inter(
        fontSize: size,
        fontWeight: weight,
        color: color,
        height: height,
        letterSpacing: letterSpacing,
      );

  // ── Arabic display (titles, single words, conjugations) ──────────────────
  static TextStyle arDisplay(
    double size, {
    FontWeight weight = FontWeight.w700,
    Color color = AppColors.forestDeep,
    double? height,
  }) =>
      GoogleFonts.amiri(
        fontSize: size,
        fontWeight: weight,
        color: color,
        height: height ?? 1.4,
      );

  // ── Arabic body (longer explanatory Arabic passages) ─────────────────────
  static TextStyle arBody(
    double size, {
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.ink,
    double? height,
  }) =>
      GoogleFonts.scheherazadeNew(
        fontSize: size,
        fontWeight: weight,
        color: color,
        height: height ?? 1.9,
      );

  // ── Named English ramp (used to build ThemeData.textTheme) ───────────────
  static TextStyle get displayLarge =>
      en(32, weight: FontWeight.w700, color: AppColors.forestDeep, height: 1.2);
  static TextStyle get headline =>
      en(24, weight: FontWeight.w700, color: AppColors.ink, height: 1.25);
  static TextStyle get title =>
      en(18, weight: FontWeight.w600, color: AppColors.ink);
  static TextStyle get body =>
      en(15, weight: FontWeight.w400, color: AppColors.ink, height: 1.5);
  static TextStyle get bodyMuted =>
      en(15, weight: FontWeight.w400, color: AppColors.inkMuted, height: 1.5);
  static TextStyle get label =>
      en(13, weight: FontWeight.w600, color: AppColors.inkMuted, letterSpacing: 0.2);
  static TextStyle get overline => en(
        11,
        weight: FontWeight.w700,
        color: AppColors.burntOrange,
        letterSpacing: 1.4,
      );
}
