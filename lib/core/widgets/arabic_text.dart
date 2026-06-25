import 'package:flutter/material.dart';

import '../theme/app_typography.dart';

/// Renders Arabic script with the correct family and a forced RTL direction,
/// regardless of the ambient (English/LTR) directionality of the screen.
///
/// This lets us keep English instruction screens in LTR while individual
/// Arabic words/phrases always shape and align right-to-left.
class ArabicText extends StatelessWidget {
  const ArabicText(
    this.text, {
    super.key,
    this.size = 22,
    this.style,
    this.body = false,
    this.color,
    this.weight,
    this.align = TextAlign.right,
  });

  final String text;
  final double size;

  /// Pass a fully custom style; otherwise one is derived from [body]/[size].
  final TextStyle? style;

  /// Use the Scheherazade body family (true) vs. the Amiri display family.
  final bool body;
  final Color? color;
  final FontWeight? weight;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    final resolved = style ??
        (body
            ? AppType.arBody(size,
                color: color ?? const Color(0xFF1A2421),
                weight: weight ?? FontWeight.w400)
            : AppType.arDisplay(size,
                color: color ?? const Color(0xFF12301F),
                weight: weight ?? FontWeight.w700));

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(text, style: resolved, textAlign: align),
    );
  }
}
