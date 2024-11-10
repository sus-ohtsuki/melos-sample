// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:widget/theme/color/membership_app2_color.dart';

// Project imports:
import 'package:membership_app2/view/page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: MembershipApp2Colors.lightColorScheme,
      ),
      darkTheme: ThemeData(
        colorScheme: MembershipApp2Colors.darkColorScheme,
      ),
      home: const HomePage(),
    );
  }
}