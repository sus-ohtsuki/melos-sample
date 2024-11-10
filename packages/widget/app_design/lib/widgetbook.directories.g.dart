// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_design/ui/buttons.dart' as _i2;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'ui',
    children: [
      _i1.WidgetbookFolder(
        name: 'buttons',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'AppClearButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'AppClearButtons',
              builder: _i2.appClearButtons,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'AppFilledButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'AppButtons',
              builder: _i2.appFilledButtons,
            ),
          ),
        ],
      )
    ],
  )
];
