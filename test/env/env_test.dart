import 'package:test/test.dart';

import 'package:shopping_cart/env/env.dart';
import 'package:shopping_cart/utils/enum.dart';

void main() {
  group('Test env', () {
    test('Default env should be dev', () {
      expect(getConfigEnvFile(), EnvFilePath.dev);
    });

    test('Get dev env', () {
      // ignore: avoid_redundant_argument_values
      expect(getConfigEnvFile(activeEnv: Env.dev), EnvFilePath.dev);
    });

    test('Get staging env', () {
      expect(getConfigEnvFile(activeEnv: Env.staging), EnvFilePath.staging);
    });

    test('Get prod env', () {
      expect(getConfigEnvFile(activeEnv: Env.prod), EnvFilePath.prod);
    });
  });
}
