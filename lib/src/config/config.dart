
import 'package:flora_test/src/common/ui/theme/i_theme_config.dart';
import 'package:flora_test/src/config/configs/app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.config.dart';

late final GetIt getIt;
IThemeConfig get theme => getIt<IThemeConfig>();

@injectableInit
Future<void> initDependencies(AppConfig config) async {
  getIt = GetIt.asNewInstance();
  await GetItInjectableX(getIt).init(
    environment: config.name,
  );
}
