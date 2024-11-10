import 'package:flutter/material.dart';
import 'package:widget/ui/button/app_clear_button.dart';
import 'package:widget/ui/button/app_filled_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'AppButtons',
  type: AppFilledButton,
  path: 'ui/buttons',
)
Widget appFilledButtons(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.surface,
    padding: const EdgeInsets.symmetric(horizontal: 32).copyWith(top: 100),
    width: double.infinity,
    alignment: Alignment.center,
    child: Column(
      children: [
        AppFilledButton(
          text: context.knobs.string(
            label: 'Primary Button text',
            initialValue: 'Primary',
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        AppFilledButton(
          color: Theme.of(context).colorScheme.secondaryContainer,
          text: context.knobs.string(
            label: 'Secondary Button text',
            initialValue: 'Secondary',
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        AppFilledButton(
          text: context.knobs.string(
            label: 'Disabled Button text',
            initialValue: 'Disabled',
          ),
          onPressed: null,
        ),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'AppClearButtons',
  type: AppClearButton,
  path: 'ui/buttons',
)
Widget appClearButtons(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.surface,
    padding: const EdgeInsets.symmetric(horizontal: 32).copyWith(top: 100),
    width: double.infinity,
    alignment: Alignment.center,
    child: Column(
      children: [
        AppClearButton(
          text: context.knobs.string(
            label: 'Clear Button text',
            initialValue: 'Clear',
          ),
          onPressed: () {},
        ),
      ],
    ),
  );
}
