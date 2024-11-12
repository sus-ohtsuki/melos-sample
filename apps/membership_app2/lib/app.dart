// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget/theme/color/membership_app2_color.dart';

// Project imports:
import 'package:membership_app2/router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: MembershipApp2Colors.lightColorScheme,
      ),
      darkTheme: ThemeData(
        colorScheme: MembershipApp2Colors.darkColorScheme,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
