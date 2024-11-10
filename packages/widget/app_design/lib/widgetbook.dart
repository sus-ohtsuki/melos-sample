import 'package:flutter/material.dart';
import 'package:widget/theme/color/membership_app1_color.dart';
import 'package:widget/theme/color/membership_app2_color.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        DeviceFrameAddon(
          devices: Devices.ios.all + Devices.android.all,
          initialDevice: Devices.ios.iPhone13,
        ),
        InspectorAddon(),
        GridAddon(100),
        AlignmentAddon(),
        ZoomAddon(),
        ThemeAddon(
          initialTheme: const WidgetbookTheme(
            name: 'MEM1-Light',
            data: MembershipApp1Colors.lightColorScheme,
          ),
          themes: [
            const WidgetbookTheme(
              name: 'MEM1-Light',
              data: MembershipApp1Colors.lightColorScheme,
            ),
            const WidgetbookTheme(
              name: 'MEM1-Dark',
              data: MembershipApp1Colors.darkColorScheme,
            ),
            const WidgetbookTheme(
              name: 'MEM2-Light',
              data: MembershipApp2Colors.lightColorScheme,
            ),
            const WidgetbookTheme(
              name: 'MEM2-Dark',
              data: MembershipApp2Colors.darkColorScheme,
            ),
          ],
          themeBuilder: (context, theme, child) {
            return MaterialApp(
              theme: ThemeData.from(
                colorScheme: theme,
              ),
              home: child,
            );
          },
        ),
      ],
      appBuilder: (context, child) {
        return MaterialApp(
          theme: ThemeData.from(
            colorScheme: MembershipApp1Colors.lightColorScheme,
          ),
          home: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: child,
          ),
        );
      },
      integrations: [
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
