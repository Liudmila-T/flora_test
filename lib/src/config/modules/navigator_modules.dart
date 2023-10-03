import 'package:flora_test/src/common/navigator/i_navigator.dart';
import 'package:flora_test/src/common/navigator/navigator.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NavigatorModules {

  @singleton
  @factoryMethod
  AppNavigator get appNavigator {
    return SimpleNavigator();
  }
}