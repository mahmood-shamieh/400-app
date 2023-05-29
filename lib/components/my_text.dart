import 'package:flutter/material.dart';
import 'package:fourhundred_app/materials.dart';

class MyText extends StatelessWidget {
  String text;
  bool? bold;
  double? size;
  Color? color;
  TextAlign? textAlign;
  bool? textLinned;
  MyText(
      {Key? key,
      required this.text,
      this.bold,
      this.size,
      this.color,
      this.textAlign,
      this.textLinned})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.rtl,
      textAlign: textAlign ?? TextAlign.right,
      overflow: TextOverflow.visible,
      softWrap: true,
      text: TextSpan(
        text: text,
        style: getTextStyle(
            color: color,
            bold: bold ?? false ? FontWeight.bold : FontWeight.normal,
            size: size,
            linned: textLinned),
      ),
    );
  }
}
