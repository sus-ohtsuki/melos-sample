// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_package.freezed.dart';

@freezed
class AppPackage with _$AppPackage {
  const AppPackage._();

  const factory AppPackage({
    @Default('') String appName,
    @Default('') String version,
    @Default('') String buildNumber,
    @Default('') String installerStore,
  }) = _AppPackage;

  String get displayVersion {
    // contains('.') の判定はローカル実行時のみ有効
    if (buildNumber.isEmpty || buildNumber.contains('.')) {
      return version;
    }
    return '$version ($buildNumber)';
  }
}
