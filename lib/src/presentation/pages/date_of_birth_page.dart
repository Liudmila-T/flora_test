import 'package:flora_test/src/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../widgets/svg_image_widget.dart';
import '../widgets/title_text_widget.dart';

class DateOfBirthPage extends StatelessWidget {
  const DateOfBirthPage({super.key});

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
          ],
        )
      ]),
    );
  }
}
