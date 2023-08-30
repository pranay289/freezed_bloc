import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'lib/app/Env/.env')
abstract class Env {
  Env._();
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static String baseUrl = _Env.baseUrl;
}
