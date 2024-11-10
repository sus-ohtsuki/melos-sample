// Flutter imports:
import 'package:flutter/material.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    this.color,
    this.width,
    required this.text,
    required this.onPressed,
  });

  final Color? color;
  final double? width;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: Size(width ?? double.infinity, 70),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
