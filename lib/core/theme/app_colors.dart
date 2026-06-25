import 'package:flutter/material.dart';

/// Al-Mizan brand palette — organic, professional, light-mode only.
///
/// The palette intentionally avoids pure black/white. Text uses a deep
/// ink derived from the forest green so the whole UI reads as one
/// cohesive, hand-tuned system rather than stock Material defaults.
abstract final class AppColors {
  AppColors._();

  // ── Brand core ──────────────────────────────────────────────────────────
  /// Deep Forest Green — primary brand colour.
  static const Color forest = Color(0xFF1B4332);

  /// A slightly lifted forest used for gradients / pressed states.
  static const Color forestLight = Color(0xFF2D6A4F);

  /// Deepest forest, used sparingly for headings on light surfaces.
  static const Color forestDeep = Color(0xFF12301F);

  /// Warm Sand — secondary, used for soft fills and muted surfaces.
  static const Color sand = Color(0xFFF4F1DE);

  /// A warmer sand for layered cards.
  static const Color sandDeep = Color(0xFFEAE5CC);

  /// Burnt Orange — accent for highlights, progress, active states.
  static const Color burntOrange = Color(0xFFBC6C25);

  /// Softer orange tint for backgrounds of accent chips.
  static const Color burntOrangeSoft = Color(0xFFF3E2D2);

  // ── Surfaces ────────────────────────────────────────────────────────────
  /// Soft Off-White — app scaffold background.
  static const Color background = Color(0xFFFDFDFD);

  /// Card / elevated surface.
  static const Color surface = Color(0xFFFFFFFF);

  /// Subtle hairline border (used at 0.5px).
  static const Color border = Color(0xFFE8E6DD);

  // ── Ink (text) ──────────────────────────────────────────────────────────
  /// Primary text — near-black with a green undertone.
  static const Color ink = Color(0xFF1A2421);

  /// Secondary / supporting text.
  static const Color inkMuted = Color(0xFF6B746F);

  /// Tertiary / captions, hints.
  static const Color inkFaint = Color(0xFFA2A89F);

  /// Text/icon colour placed on top of the forest primary.
  static const Color onForest = Color(0xFFF4F1DE);

  // ── Semantic ────────────────────────────────────────────────────────────
  static const Color success = Color(0xFF2D6A4F);
  static const Color error = Color(0xFFB3261E);

  // ── Gradients ───────────────────────────────────────────────────────────
  static const LinearGradient forestGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [forestLight, forest],
  );

  static const LinearGradient sandGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [sand, sandDeep],
  );
}
