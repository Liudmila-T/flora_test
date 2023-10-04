import 'package:flora_test/src/presentation/bloc/choice/choice_bloc.dart';
import 'package:flora_test/src/presentation/bloc/date_of_birth/date_of_birth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/config.dart';
import '../../utils/app_strings.dart';
import '../widgets/svg_image_widget.dart';
import '../widgets/title_text_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        SvgImageWidget(image: theme.images.dateOfBirthBackground),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
            ),
            TitleTextWidget(
              text: AppStrings.myChoice,
              textStyle: theme.textStyles.pageTitle(),
            ),
            BlocBuilder<ChoiceBloc, ChoiceState>(
                bloc: choiceBloc,
                builder: (context, state) {
                  return TitleTextWidget(
                    text: getChoice(state),
                    textStyle: theme.textStyles.pageTitle(),
                  );
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TitleTextWidget(
              text: AppStrings.myDateOfBirth,
              textStyle: theme.textStyles.pageTitle(),
            ),
            BlocBuilder<DateOfBirthBloc, DateOfBirthState>(
                bloc: dateOfBirthBloc,
                builder: (context, state) {
                  return TitleTextWidget(
                    text: getDateOfBirth(state),
                    textStyle: theme.textStyles.pageTitle(),
                  );
                }),
          ],
        )
      ]),
    );
  }

  String  getChoice (ChoiceState choiceState){
    return choiceState == ChoiceState.trackPeriod
        ? AppStrings.trackMyPeriod
        : AppStrings.getPregnant;
  }

  String getDateOfBirth(DateOfBirthState state) {
    return state is SelectDateOfBirthState ? state.year.toString() : '';
  }
}
