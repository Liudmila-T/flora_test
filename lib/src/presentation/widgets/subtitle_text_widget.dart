import 'package:flutter/material.dart';

import '../../config/config.dart';

class SubTitleTextWidget extends StatelessWidget {
  const SubTitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(text, style: theme.textStyles.subtitle(),);
  }
}
