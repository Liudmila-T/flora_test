import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_picker_widget.dart' as custom;

class YearPickerWidget extends StatelessWidget {
  const YearPickerWidget({super.key, required this.onYearChanged});

  final ValueChanged<int> onYearChanged;

  int get countOfYear => 100;

  int get currentYear => DateTime.now().year;

  int get startYear => currentYear - countOfYear;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      child: custom.CupertinoPicker(
        itemExtent: countOfYear.toDouble(),
        useMagnifier: true,
        magnification: 1.0,
        squeeze: 2,
        onSelectedItemChanged: onYearChanged,
        children: List.generate(
          countOfYear,
          (index) => Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text((startYear + index).toString()),
          ),
        ),
      ),
    );
  }
}
