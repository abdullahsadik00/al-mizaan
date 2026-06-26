import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'package:al_mizan/app/app_providers.dart';
import 'package:al_mizan/core/theme/app_colors.dart';
import 'package:al_mizan/core/theme/app_dimens.dart';
import 'package:al_mizan/core/theme/app_typography.dart';
import 'package:al_mizan/core/widgets/arabic_text.dart';
import 'package:al_mizan/core/widgets/module_header.dart';
import 'package:al_mizan/features/home/domain/dashboard.dart';

/// Vocabulary — a modern, gesture-based flashcard deck.
///
/// • Tap a card to flip it (Arabic ⇄ meaning + example).
/// • Drag/throw a card left or right to advance to the next word.
/// The next card peeks from behind, growing into place as you swipe.
class VocabScreen extends ConsumerWidget {
  const VocabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cards = ref.watch(flashcardsProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.lg,
            AppSpacing.xl,
            120,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ModuleHeader(
                overline: 'المُفْرَدَات · Vocabulary',
                title: 'Daily Words',
                blurb:
                    'Tap to reveal the meaning · swipe to move on. A few words a '
                    'day keeps the streak alive.',
                icon: PhosphorIconsDuotone.cards,
              ),
              const SizedBox(height: AppSpacing.xl),
              Expanded(child: _FlashcardDeck(cards: cards)),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _FlashcardDeck extends StatefulWidget {
  const _FlashcardDeck({required this.cards});

  final List<Flashcard> cards;

  @override
  State<_FlashcardDeck> createState() => _FlashcardDeckState();
}

class _FlashcardDeckState extends State<_FlashcardDeck>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  Offset _drag = Offset.zero;

  late final AnimationController _settle = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 320),
  );
  Offset _settleFrom = Offset.zero;
  Offset _settleTo = Offset.zero;
  bool _advanceOnSettle = false;

  static const double _swipeThreshold = 120;

  @override
  void initState() {
    super.initState();
    _settle.addListener(() {
      setState(() {
        _drag = Offset.lerp(_settleFrom, _settleTo, _settle.value)!;
      });
    });
    _settle.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _drag = Offset.zero;
          if (_advanceOnSettle) {
            _index = (_index + 1) % widget.cards.length;
          }
        });
        _settle.reset();
      }
    });
  }

  @override
  void dispose() {
    _settle.dispose();
    super.dispose();
  }

  void _onPanUpdate(DragUpdateDetails d) {
    if (_settle.isAnimating) return;
    setState(() => _drag += d.delta);
  }

  void _onPanEnd(DragEndDetails d) {
    final dismiss = _drag.dx.abs() > _swipeThreshold;
    _settleFrom = _drag;
    _advanceOnSettle = dismiss;
    if (dismiss) {
      // Throw the card off-screen in the drag direction.
      final dir = _drag.dx.sign;
      _settleTo = Offset(dir * 600, _drag.dy + 80);
    } else {
      _settleTo = Offset.zero; // snap back to centre
    }
    _settle.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    final cards = widget.cards;
    if (cards.isEmpty) {
      return Center(
        child: Text('No words yet.', style: AppType.bodyMuted),
      );
    }

    final current = cards[_index];
    final next = cards[(_index + 1) % cards.length];
    final progress = (_drag.dx.abs() / _swipeThreshold).clamp(0.0, 1.0);

    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // The peeking next card — scales up as you drag the top one away.
              Transform.scale(
                scale: 0.92 + 0.08 * progress,
                child: Opacity(
                  opacity: 0.5 + 0.5 * progress,
                  child: _FlashcardFace(card: next, faceUp: true),
                ),
              ),
              // The active, draggable + flippable card.
              Transform.translate(
                offset: _drag,
                child: Transform.rotate(
                  angle: _drag.dx / 1400,
                  child: GestureDetector(
                    onPanUpdate: _onPanUpdate,
                    onPanEnd: _onPanEnd,
                    child: _FlipCard(
                      key: ValueKey(_index),
                      card: current,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.lg),
        _DeckFooter(index: _index, total: cards.length),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
/// A card that flips between its Arabic face and its meaning face on tap.
class _FlipCard extends StatefulWidget {
  const _FlipCard({super.key, required this.card});

  final Flashcard card;

  @override
  State<_FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<_FlipCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _flip = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 420),
  );

  void _toggle() {
    if (_flip.isAnimating) return;
    if (_flip.value == 0) {
      _flip.forward();
    } else {
      _flip.reverse();
    }
  }

  @override
  void dispose() {
    _flip.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: AnimatedBuilder(
        animation: _flip,
        builder: (context, _) {
          final angle = _flip.value * math.pi;
          final showBack = _flip.value > 0.5;
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            child: showBack
                // Counter-rotate the back so its content isn't mirrored.
                ? Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(math.pi),
                    child: _FlashcardFace(card: widget.card, faceUp: false),
                  )
                : _FlashcardFace(card: widget.card, faceUp: true),
          );
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
/// One physical face of a flashcard. [faceUp] = the Arabic prompt side;
/// otherwise the meaning + example side.
class _FlashcardFace extends StatelessWidget {
  const _FlashcardFace({required this.card, required this.faceUp});

  final Flashcard card;
  final bool faceUp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: faceUp ? AppColors.forestGradient : null,
        color: faceUp ? null : AppColors.surface,
        borderRadius: AppRadius.hero,
        border: faceUp
            ? null
            : Border.all(color: AppColors.border, width: AppBorders.hairline),
        boxShadow: [
          BoxShadow(
            color: AppColors.forest.withValues(alpha: 0.08),
            blurRadius: 30,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      padding: const EdgeInsets.all(AppSpacing.xxl),
      child: faceUp ? _FrontContent(card: card) : _BackContent(card: card),
    );
  }
}

class _FrontContent extends StatelessWidget {
  const _FrontContent({required this.card});

  final Flashcard card;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.onForest.withValues(alpha: 0.14),
            borderRadius: AppRadius.chip,
          ),
          child: ArabicText(
            'الجَذْر · ${card.root}',
            size: 14,
            color: AppColors.sand,
            align: TextAlign.center,
          ),
        ),
        const Spacer(),
        ArabicText(
          card.arabic,
          size: 60,
          align: TextAlign.center,
          color: AppColors.onForest,
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          card.transliteration,
          style: AppType.en(16,
              weight: FontWeight.w600,
              color: AppColors.onForest.withValues(alpha: 0.85)),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(PhosphorIconsRegular.handTap,
                size: 15, color: AppColors.onForest.withValues(alpha: 0.7)),
            const SizedBox(width: 6),
            Text(
              'Tap to reveal',
              style: AppType.en(12,
                  weight: FontWeight.w600,
                  color: AppColors.onForest.withValues(alpha: 0.7)),
            ),
          ],
        ),
      ],
    );
  }
}

class _BackContent extends StatelessWidget {
  const _BackContent({required this.card});

  final Flashcard card;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('MEANING', style: AppType.overline, textAlign: TextAlign.center),
        const SizedBox(height: AppSpacing.sm),
        Text(
          card.meaning,
          textAlign: TextAlign.center,
          style: AppType.en(30,
              weight: FontWeight.w700, color: AppColors.forestDeep),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          '${card.arabic} · ${card.transliteration}',
          textAlign: TextAlign.center,
          style: AppType.en(14,
              weight: FontWeight.w600, color: AppColors.forest),
        ),
        if (card.exampleArabic != null) ...[
          const SizedBox(height: AppSpacing.xl),
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.sand.withValues(alpha: 0.55),
              borderRadius: AppRadius.soft,
            ),
            child: Column(
              children: [
                ArabicText(
                  card.exampleArabic!,
                  size: 24,
                  align: TextAlign.center,
                ),
                if (card.exampleEnglish != null) ...[
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    card.exampleEnglish!,
                    textAlign: TextAlign.center,
                    style: AppType.en(13,
                        color: AppColors.inkMuted, height: 1.4),
                  ),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
class _DeckFooter extends StatelessWidget {
  const _DeckFooter({required this.index, required this.total});

  final int index;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Progress dots.
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < total; i++)
              AnimatedContainer(
                duration: const Duration(milliseconds: 240),
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: i == index ? 22 : 7,
                height: 7,
                decoration: BoxDecoration(
                  color: i == index ? AppColors.burntOrange : AppColors.border,
                  borderRadius: AppRadius.chip,
                ),
              ),
          ],
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          'Word ${index + 1} of $total',
          style: AppType.en(12, weight: FontWeight.w600, color: AppColors.inkFaint),
        ),
      ],
    );
  }
}
