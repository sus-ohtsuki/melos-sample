// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:core/model/app_package.dart';

void main() {
  group('AppPackage', () {
    test('displayVersion should return version when buildNumber is empty', () {
      const appPackage =
          AppPackage(appName: 'TestApp', version: '1.0.0', buildNumber: '');

      expect(appPackage.displayVersion, '1.0.0');
    });

    test('displayVersion should return version when buildNumber contains a dot',
        () {
      const appPackage = AppPackage(
          appName: 'TestApp', version: '1.0.0', buildNumber: '123.456');

      expect(appPackage.displayVersion, '1.0.0');
    });

    test(
        'displayVersion should return version with buildNumber when buildNumber does not contain a dot',
        () {
      const appPackage = AppPackage(
          appName: 'TestApp', version: '1.0.0', buildNumber: '123456');

      expect(appPackage.displayVersion, '1.0.0 (123456)');
    });
  });
}
