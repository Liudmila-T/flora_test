import 'package:flora_test/src/presentation/bloc/date_of_birth/date_of_birth_bloc.dart';
import 'package:flora_test/src/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/config.dart';
import '../widgets/custom_year_picker/year_picker_widget.dart';
import '../widgets/next_button_widget.dart';
import '../widgets/svg_image_widget.dart';
import '../widgets/title_text_widget.dart';

const int _numberOfYears = 100;

class DateOfBirthPage extends StatefulWidget {
  const DateOfBirthPage({super.key});

  @override
  State<DateOfBirthPage> createState() => _DateOfBirthPageState();
}

class _DateOfBirthPageState extends State<DateOfBirthPage> {
  late int year;

  @override
  void initState() {
    super.initState();
    year = startYear;
  }

  int get numberOfYears => _numberOfYears;

  int get currentYear => DateTime.now().year;

  int get startYear => currentYear - numberOfYears;

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
              text: AppStrings.logInYourDateOfBirth,
              textStyle: theme.textStyles.pageTitle(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            BlocBuilder<DateOfBirthBloc, DateOfBirthState>(
                bloc: dateOfBirthBloc,
                builder: (context, state) {
                  return YearPickerWidget(
                    numberOfYears: numberOfYears,
                    startYear: startYear,
                    onYearChanged: (int value) {
                      year = value;
                    },
                  );
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.24,
            ),
            NextButtonWidget(title: AppStrings.next, onTap: onNext),
          ],
        )
      ]),
    );
  }

  void onNext() {
    dateOfBirthBloc.add(SelectDateOfBirthEvent(year: year));
    navigateToResultPage();
  }

  void navigateToResultPage() {
    appNavigator.goToResult(context);
  }
}
