import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../core/theme/app_theme.dart';
import '../core/widgets/mizan_bottom_nav.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/nahw/presentation/nahw_screen.dart';
import '../features/sarf/presentation/sarf_screen.dart';
import '../features/vocab/presentation/vocab_screen.dart';
import 'app_providers.dart';

/// Root application widget.
///
/// The app's base directionality is LTR (English is the instructional
/// language). Arabic content opts into RTL locally via the `ArabicText`
/// widget and `Directionality` wrappers, exactly as the spec requires.
/// Localization delegates for Arabic are registered so any future
/// fully-RTL screens are first-class.
class AlMizanApp extends StatelessWidget {
  const AlMizanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al-Mizan',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      // Light mode only — by product decision.
      themeMode: ThemeMode.light,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ar')],
      home: const HomeShell(),
    );
  }
}

/// The persistent shell: a body that swaps between the four modules and the
/// floating bottom navigation. Uses an [IndexedStack] so each tab keeps its
/// scroll position and state when you switch away and back.
class HomeShell extends ConsumerWidget {
  const HomeShell({super.key});

  static const _items = [
    MizanNavItem(
      label: 'Home',
      icon: PhosphorIconsRegular.house,
      activeIcon: PhosphorIconsFill.house,
    ),
    MizanNavItem(
      label: 'Nahw',
      icon: PhosphorIconsRegular.treeStructure,
      activeIcon: PhosphorIconsFill.treeStructure,
    ),
    MizanNavItem(
      label: 'Sarf',
      icon: PhosphorIconsRegular.scales,
      activeIcon: PhosphorIconsFill.scales,
    ),
    MizanNavItem(
      label: 'Vocab',
      icon: PhosphorIconsRegular.cards,
      activeIcon: PhosphorIconsFill.cards,
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navIndexProvider);

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: index,
        children: const [
          HomeScreen(),
          NahwScreen(),
          SarfScreen(),
          VocabScreen(),
        ],
      ),
      bottomNavigationBar: MizanBottomNav(
        currentIndex: index,
        items: _items,
        onTap: (i) => ref.read(navIndexProvider.notifier).state = i,
      ),
    );
  }
}
