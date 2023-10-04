import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_picker_widget.dart' as custom;

class YearPickerWidget extends StatelessWidget {
  const YearPickerWidget({
    super.key,
    required this.numberOfYears,
    required this.startYear,
    required this.onYearChanged,
  });

  final int numberOfYears;
  final int startYear;
  final ValueChanged<int> onYearChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: custom.CupertinoPicker(
        itemExtent: numberOfYears.toDouble(),
        useMagnifier: true,
        magnification: 1.0,
        squeeze: 2,
        onSelectedItemChanged: (int value) => onYearChanged(startYear + value),
        children: List.generate(
          numberOfYears,
          (index) => Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text((startYear + index).toString()),
          ),
        ),
      ),
    );
  }
}
