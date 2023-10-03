
import 'package:flora_test/src/common/navigator/i_navigator.dart';
import 'package:flora_test/src/common/ui/theme/i_theme_config.dart';
import 'package:flora_test/src/config/configs/app_config.dart';
import 'package:flora_test/src/presentation/bloc/choice/choice_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'config.config.dart';

late final GetIt getIt;
IThemeConfig get theme => getIt<IThemeConfig>();
AppNavigator get appNavigator => getIt<AppNavigator>();
ChoiceBloc get choiceBloc => getIt<ChoiceBloc>();

@injectableInit
Future<void> initDependencies(AppConfig config) async {
  getIt = GetIt.asNewInstance();
  await GetItInjectableX(getIt).init(
    environment: config.name,
  );
}
