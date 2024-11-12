// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget/theme/color/membership_app1_color.dart';

// Project imports:
import 'package:membership_app1/router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: MembershipApp1Colors.lightColorScheme,
      ),
      darkTheme: ThemeData(
        colorScheme: MembershipApp1Colors.darkColorScheme,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
