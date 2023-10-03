import 'package:flora_test/src/config/configs/app_config.dart';
import 'package:flora_test/src/config/configs/dev_config.dart';
import 'package:flora_test/src/presentation/bloc/choice/choice_bloc.dart';
import 'package:flora_test/src/presentation/pages/choice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppConfig config = DevConfig();
  await config.init();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiBlocProvider(
      providers: [
        BlocProvider<ChoiceBloc>(
          create: (BuildContext context) => ChoiceBloc(),
        ),
      ],
      child: const ChoicePage(),
    ),
  ));
}
