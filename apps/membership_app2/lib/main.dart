// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:membership_app2/app.dart';

void main() {
  runApp(const ProviderScope(
    child: App(),
  ));
}
