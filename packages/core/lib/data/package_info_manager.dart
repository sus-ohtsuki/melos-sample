// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_info_manager.g.dart';

/// パッケージ情報を取得するマネージャー
class PackageInfoManager {
  PackageInfoManager(this._packageInfo);

  final PackageInfo _packageInfo;

  /// アプリの名前
  String get appName => _packageInfo.appName;

  /// アプリのバージョン名
  String get version => _packageInfo.version;

  /// アプリのバージョンコード
  String get versionCode => _packageInfo.buildNumber;

  /// アプリのパッケージ名
  String get packageName => _packageInfo.packageName;

  /// アプリのビルドシグネチャー
  String get buildSignature => _packageInfo.buildSignature;

  /// アプリのインストールストア
  String? get installerStore => _packageInfo.installerStore;
}

@riverpod
Future<PackageInfoManager> packageInfoManager(Ref ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return PackageInfoManager(packageInfo);
}
