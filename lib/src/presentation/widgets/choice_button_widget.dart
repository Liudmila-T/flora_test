import 'package:flora_test/src/config/config.dart';
import 'package:flora_test/src/presentation/widgets/subtitle_text_widget.dart';
import 'package:flora_test/src/presentation/widgets/svg_image_widget.dart';
import 'package:flora_test/src/presentation/widgets/title_text_widget.dart';
import 'package:flutter/material.dart';

class ChoiceButtonWidget extends StatelessWidget {
  const ChoiceButtonWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onTap});

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.85,
        padding: const EdgeInsets.only(left: 12.0, right: 18.0),
        decoration: BoxDecoration(
          color: theme.colors.buttonBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleTextWidget(text: title),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: SubTitleTextWidget(text: subtitle),
                ),
              ],
            ),
            Positioned(
                right: 0, child: SvgImageWidget(image: theme.icons.darkArrow)),
          ],
        ),
      ),
    );
  }
}
