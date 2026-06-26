import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';
import 'app_typography.dart';

/// The single source of truth for Al-Mizan's look & feel.
///
/// Light mode only — by design. Everything here leans on the brand
/// tokens so the app reads as one bespoke system: hairline borders,
/// soft surfaces, no heavy Material shadows.
abstract final class AppTheme {
  AppTheme._();

  static ThemeData light() {
    const scheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.forest,
      onPrimary: AppColors.onForest,
      secondary: AppColors.burntOrange,
      onSecondary: Colors.white,
      tertiary: AppColors.sand,
      onTertiary: AppColors.forestDeep,
      surface: AppColors.surface,
      onSurface: AppColors.ink,
      error: AppColors.error,
      onError: Colors.white,
      outline: AppColors.border,
    );

    final base = ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.background,
      splashFactory: InkSparkle.splashFactory,
      visualDensity: VisualDensity.comfortable,
    );

    return base.copyWith(
      textTheme: _textTheme(base.textTheme),

      // Flat, editorial app bars — no shadow.
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: AppColors.ink, size: 22),
        titleTextStyle: AppType.title.copyWith(color: AppColors.ink),
      ),

      // Cards: hairline border, large radius, zero elevation.
      cardTheme: const CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.card,
          side: BorderSide(
            color: AppColors.border,
            width: AppBorders.hairline,
          ),
        ),
      ),

      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: AppBorders.hairline,
        space: AppBorders.hairline,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: AppColors.sand,
        side: BorderSide.none,
        labelStyle: AppType.label,
        shape: const RoundedRectangleBorder(borderRadius: AppRadius.chip),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.forest,
          foregroundColor: AppColors.onForest,
          textStyle: AppType.en(15, weight: FontWeight.w600),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: const RoundedRectangleBorder(borderRadius: AppRadius.soft),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.burntOrange,
          textStyle: AppType.en(14, weight: FontWeight.w600),
        ),
      ),

      iconTheme: const IconThemeData(color: AppColors.ink, size: 22),
    );
  }

  static TextTheme _textTheme(TextTheme base) => base.copyWith(
        displayLarge: AppType.displayLarge,
        headlineMedium: AppType.headline,
        titleLarge: AppType.title,
        titleMedium: AppType.en(16, weight: FontWeight.w600),
        bodyLarge: AppType.body,
        bodyMedium: AppType.bodyMuted,
        labelLarge: AppType.label,
        labelSmall: AppType.overline,
      );
}
