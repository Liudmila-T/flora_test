import 'package:flora_test/src/config/config.dart';
import 'package:flora_test/src/presentation/widgets/svg_image_widget.dart';
import 'package:flora_test/src/presentation/widgets/title_text_widget.dart';
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50.0,
          width: 190.0,
          padding: const EdgeInsets.only(left: 66.0, right: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [
                  theme.colors.firstGradientColor,
                  theme.colors.secondGradientColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0, 2.5366],
                // Use stops to define the percentages
                transform:
                    const GradientRotation(3.14159) // 180 degrees in radians,
                ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleTextWidget(
                text: title,
                textStyle: theme.textStyles
                    .buttonBigSubtitle(color: theme.colors.white),
              ),
              SvgImageWidget(image: theme.icons.whiteArrow),
            ],
          ),
        ));
  }
}
