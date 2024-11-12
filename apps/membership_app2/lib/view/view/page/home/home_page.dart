// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:core/model/app_package.dart';
import 'package:core/repository/package_info_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget/ui/button/app_filled_button.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder<AppPackage>(
        future: ref.watch(fetchAppPackageInfoProvider.future),
        builder: (context, appPackage) {
          if (appPackage.connectionState == ConnectionState.done) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(appPackage.data?.appName ?? ''),
                ),
                const SizedBox(height: 24),
                AppFilledButton(
                  width: 150,
                  text: 'Licenses',
                  onPressed: () {
                    showLicensePage(
                      context: context,
                      applicationName: appPackage.data?.appName,
                      applicationVersion: appPackage.data?.version,
                    );
                  },
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
