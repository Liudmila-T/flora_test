import 'package:flutter/material.dart';

import '../../config/config.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text, this.textStyle});

  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ?? theme.textStyles.buttonBigTitle(),
    );
  }
}
