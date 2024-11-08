import 'package:core/model/app_package.dart';
import 'package:core/repository/package_info_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              return Center(
                child: Text(appPackage.data?.appName ?? ''),
              );
            }
            return const SizedBox.shrink();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
