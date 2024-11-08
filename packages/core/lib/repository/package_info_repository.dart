// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:core/data/package_info_manager.dart';
import 'package:core/model/app_package.dart';

part 'package_info_repository.g.dart';

class PackageInfoRepository {
  PackageInfoRepository(
    this._packageInfoManager,
  );

  final Future<PackageInfoManager> _packageInfoManager;

  Future<AppPackage> getAppPackageInfo() async {
    try {
      final package = await _packageInfoManager;
      return AppPackage(
        appName: package.appName,
        version: package.version,
        buildNumber: package.versionCode,
        installerStore: package.installerStore ?? '',
      );
    } on Exception {
      return const AppPackage();
    }
  }
}

@riverpod
PackageInfoRepository packageInfoRepository(Ref ref) {
  final packageInfoManager = ref.read(packageInfoManagerProvider.future);
  return PackageInfoRepository(
    packageInfoManager,
  );
}

@riverpod
Future<AppPackage> fetchAppPackageInfo(Ref ref) async {
  final repository = ref.read(packageInfoRepositoryProvider);
  return repository.getAppPackageInfo();
}
