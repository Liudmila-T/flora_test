import 'package:flora_test/src/config/config.dart';
import 'package:flutter/material.dart';


abstract class AppConfig {
  const AppConfig();

  String get name;

  Future<void> init() async {
    await initSystem();
    await initDependencies(this);

  }

  Future<void> initSystem() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
