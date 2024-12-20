// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.children,
    required this.onTap,
  });

  final int currentIndex;
  final List<Widget> children;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          _Icon(icon: Icons.home),
          _Icon(icon: Icons.person),
          _Icon(icon: Icons.add),
          _Icon(icon: Icons.chat_outlined),
          _Icon(icon: Icons.favorite),
        ],
        index: 2,
        color: Theme.of(context).colorScheme.primary,
        buttonBackgroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        animationCurve: Curves.easeInOut,
        onTap: onTap,
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 30,
      color: Theme.of(context).colorScheme.surface,
    );
  }
}
