// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:core/data/package_info_manager.dart';
import 'package_info_manager_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<PackageInfo>(),
    MockSpec<PackageInfoManager>(),
  ],
)
void main() {
  late PackageInfoManager packageInfoManager;
  late MockPackageInfo mockPackageInfo;

  setUp(() {
    mockPackageInfo = MockPackageInfo();
    packageInfoManager = PackageInfoManager(mockPackageInfo);
  });

  group('PackageInfoManager Tests', () {
    test('getter', () {
      when(mockPackageInfo.appName).thenReturn('Test App');
      when(mockPackageInfo.version).thenReturn('1.0.0');
      when(mockPackageInfo.buildNumber).thenReturn('100');
      when(mockPackageInfo.packageName).thenReturn('com.example.test');
      when(mockPackageInfo.buildSignature).thenReturn('ABC123');
      when(mockPackageInfo.installerStore).thenReturn('Test Store');

      expect(packageInfoManager.appName, 'Test App');
      expect(packageInfoManager.version, '1.0.0');
      expect(packageInfoManager.versionCode, '100');
      expect(packageInfoManager.packageName, 'com.example.test');
      expect(packageInfoManager.buildSignature, 'ABC123');
      expect(packageInfoManager.installerStore, 'Test Store');
    });
  });
}
