import 'package:flutter/material.dart';
import 'package:widget/ui/app_bottom_navigation.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'BottomNavigation',
  type: AppBottomNavigation,
  path: 'ui/bottom_navigation',
)
Widget bottomNavigation(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: AppBottomNavigation(
      currentIndex: 0,
      children: List.generate(
        5,
        (index) => const Scaffold(),
      ),
      onTap: (index) {},
    ),
  );
}
