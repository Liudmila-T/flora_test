import 'package:flora_test/src/common/navigator/i_navigator.dart';
import 'package:flora_test/src/presentation/pages/result_page.dart';
import 'package:flutter/material.dart';

import '../../presentation/pages/date_of_birth_page.dart';



class SimpleNavigator extends AppNavigator {
  @override
  void goToDateOfBirth(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DateOfBirthPage(),
      ),
    );
  }

  @override
  void goToResult(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ResultPage(),
      ),
    );
  }
}
