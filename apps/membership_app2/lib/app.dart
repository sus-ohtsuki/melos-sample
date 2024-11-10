// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:membership_app2/view/page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
      ),
      home: const HomePage(),
    );
  }
}
