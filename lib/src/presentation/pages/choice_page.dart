import 'package:flora_test/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/app_strings.dart';
import '../bloc/choice/choice_bloc.dart';
import '../widgets/choice_button_widget.dart';
import '../widgets/svg_image_widget.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        SvgImageWidget(image: theme.images.choiceBackground),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
            ),
            ChoiceButtonWidget(
              title: AppStrings.trackMyPeriod,
              subtitle: AppStrings.contraceptionAndWellBeing,
              onTap: () {
                choiceBloc.add(TrackPeriodChoiceEvent());
                navigateToDateOfBirthPage(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            ChoiceButtonWidget(
              title: AppStrings.getPregnant,
              subtitle: AppStrings.learnAboutReproductiveHealth,
              onTap: () {
                choiceBloc.add(GetPregnantChoiceEvent());
                navigateToDateOfBirthPage(context);
              },
            ),
          ],
        )
      ]),
    );
  }

  void navigateToDateOfBirthPage(BuildContext context) {
    appNavigator.goToDateOfBirth(context);
  }
}
