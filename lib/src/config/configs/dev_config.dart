import 'package:flora_test/src/config/configs/app_config.dart';
import 'package:injectable/injectable.dart';

const dev = Environment('dev');

@dev
@Injectable(as: AppConfig)
class DevConfig extends AppConfig {

  @override
  String get name => 'dev';
}
