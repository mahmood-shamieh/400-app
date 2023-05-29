import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'my_text.dart';

class MyElevatedButton extends StatelessWidget {
  Function()? onTap;
  Color? backGroundColorcolor;
  String? text;
  Color? textColor;
  bool? bold;
  double? textSize;
  MyElevatedButton(
      {super.key,
      this.onTap,
      this.backGroundColorcolor,
      this.text,
      this.textColor,
      this.bold,
      this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backGroundColorcolor,
        ),
        child: ElevatedButton(
            onPressed: onTap,
            style:
                ElevatedButton.styleFrom(backgroundColor: backGroundColorcolor),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease,
              padding: const EdgeInsets.all(8),
              child: MyText(
                text: text ?? "",
                textAlign: TextAlign.center,
                color: textColor,
                bold: bold,
                size: textSize,
              ),
            )),
      ),
    );
  }
}
