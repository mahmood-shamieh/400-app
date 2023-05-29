import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../materials.dart';

class MyDatePicker extends StatelessWidget {
  Function(DateRangePickerSelectionChangedArgs date)? onChange;
  MyDatePicker({super.key, this.onChange});

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      onSelectionChanged: onChange,
      backgroundColor: primaryColor,
      selectionTextStyle:
          getTextStyle(color: primaryColor, bold: FontWeight.bold, size: 28.0),
      rangeTextStyle: getTextStyle(
        color: primaryColor,
      ),
      headerStyle: DateRangePickerHeaderStyle(
        textStyle: getTextStyle(
          bold: FontWeight.bold,
          color: iconColor,
          size: 22.0,
        ),
        textAlign: TextAlign.center,
      ),
      yearCellStyle: DateRangePickerYearCellStyle(
        textStyle: getTextStyle(
          color: iconColor,
          size: 22.0,
        ),
        todayTextStyle: getTextStyle(
          color: iconColor,
          bold: FontWeight.bold,
          size: 22.0,
        ),
      ),
      monthCellStyle: DateRangePickerMonthCellStyle(
        textStyle: getTextStyle(color: iconColor, size: 24.0),
        todayTextStyle: getTextStyle(
          color: iconColor,
          size: 24.0,
          bold: FontWeight.bold,
        ),
      ),
      selectionShape: DateRangePickerSelectionShape.rectangle,

      selectionColor: iconColor,
      todayHighlightColor: iconColor,
      // onSelectionChanged: _onSelectionChanged,
      selectionMode: DateRangePickerSelectionMode.single,
      initialSelectedRange: PickerDateRange(
          DateTime.now().subtract(const Duration(days: 4)),
          DateTime.now().add(const Duration(days: 3))),
    );
  }
}
