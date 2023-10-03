import 'package:flutter/material.dart';

import '../../config/config.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text, style: theme.textStyles.title(),);
  }
}
