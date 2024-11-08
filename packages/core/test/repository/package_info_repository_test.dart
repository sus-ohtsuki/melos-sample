// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:core/data/package_info_manager.dart';
import 'package:core/model/app_package.dart';
import 'package:core/repository/package_info_repository.dart';
import 'package_info_repository_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<PackageInfo>(),
    MockSpec<PackageInfoManager>(),
  ],
)
void main() {
  const mockAppPackage = AppPackage(
    appName: 'Test App',
    version: '1.0.0',
    installerStore: 'Test Store',
  );

  group('PackageInfoRepository Test', () {
    test('アプリパッケージ情報を取得する', () async {
      // Arrange
      final mockPackageInfoManager = MockPackageInfoManager();
      when(mockPackageInfoManager.appName).thenReturn(mockAppPackage.appName);
      when(mockPackageInfoManager.version).thenReturn(mockAppPackage.version);
      when(mockPackageInfoManager.installerStore)
          .thenReturn(mockAppPackage.installerStore);

      final repository = PackageInfoRepository(
        Future.value(mockPackageInfoManager),
      );

      // Act
      final result = await repository.getAppPackageInfo();

      // Assert
      expect(result.appName, mockAppPackage.appName);
      expect(result.version, mockAppPackage.version);
      expect(result.installerStore, mockAppPackage.installerStore);
    });

    test('アプリパッケージ情報を取得時、エラーが発生した場合デフォルトを返す', () async {
      // Arrange
      final mockPackageInfoManager = MockPackageInfoManager();
      final exception = Exception('Error');
      when(mockPackageInfoManager.appName).thenThrow(exception);

      final repository = PackageInfoRepository(
        Future.value(mockPackageInfoManager),
      );

      // Act
      final result = await repository.getAppPackageInfo();

      // Assert
      expect(result, const AppPackage());
    });

    group('appPackageRepositoryProvider', () {
      late ProviderContainer container;

      setUp(() {
        container = ProviderContainer(
          overrides: [
            packageInfoManagerProvider.overrideWith(
              (_) => MockPackageInfoManager(),
            ),
          ],
        );
      });

      tearDown(() {
        container.dispose();
      });

      test('DI', () {
        final appPackageRepository =
            container.read(packageInfoRepositoryProvider);
        expect(appPackageRepository, isA<PackageInfoRepository>());
      });
    });
  });
}
