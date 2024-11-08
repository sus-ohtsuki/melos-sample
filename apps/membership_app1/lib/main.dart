import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:membership_app1/app.dart';

void main() {
  runApp(const ProviderScope(
    child: App(),
  ));
}
