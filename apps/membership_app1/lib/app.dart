// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:widget/theme/color/membership_app1_color.dart';

// Project imports:
import 'package:membership_app1/view/page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: MembershipApp1Colors.lightColorScheme,
      ),
      darkTheme: ThemeData(
        colorScheme: MembershipApp1Colors.darkColorScheme,
      ),
      home: const HomePage(),
    );
  }
}
