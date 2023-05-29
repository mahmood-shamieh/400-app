import 'package:flutter/material.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/materials.dart';

class MyTextField extends StatefulWidget {
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;
  TextEditingController? textEditingController;
  Color? lineColor;
  TextInputType? textInputType;
  TextAlign? textAlign;
  String? hintText;
  MyTextField(
      {super.key,
      this.lineColor,
      this.paddingBottom,
      this.paddingLeft,
      this.paddingRight,
      this.paddingTop,
      this.textEditingController,
      this.textInputType,
      this.textAlign,
      this.hintText});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.only(
          top: widget.paddingTop ?? 0.0,
          bottom: widget.paddingBottom ?? 0.0,
          left: widget.paddingLeft ?? 0.0,
          right: widget.paddingRight ?? 0.0,
        ),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          keyboardType: widget.textInputType,
          textAlign: widget.textAlign ?? TextAlign.start,
          style: getTextStyle(color: iconColor, bold: FontWeight.w300),
          controller: widget.textEditingController,
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.hintText!,
            floatingLabelAlignment: FloatingLabelAlignment.center,
            alignLabelWithHint: true,
            hintStyle: getTextStyle(
                color: Colors.grey.shade600, bold: FontWeight.w300),
            labelStyle: getTextStyle(color: iconColor, bold: FontWeight.w300),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: iconColor ?? Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color:
                      primaryColor.withBlue(10).withGreen(200) ?? Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
