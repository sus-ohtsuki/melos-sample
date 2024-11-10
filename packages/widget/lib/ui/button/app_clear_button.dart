import 'package:flutter/material.dart';

class AppClearButton extends StatelessWidget {
  const AppClearButton({
    super.key,
    this.color,
    required this.text,
    required this.onPressed,
  });

  final Color? color;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide(
          color: color ?? Theme.of(context).colorScheme.primary,
          width: 3,
        ),
        minimumSize: const Size(double.infinity, 70),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
