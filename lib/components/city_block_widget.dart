import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:get/get.dart';

class CityBlockWidget extends StatelessWidget {
  String name;
  String code;
  bool? selected;
  Function()? onTap;
  CityBlockWidget(
      {super.key,
      required this.name,
      required this.code,
      this.selected,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        decoration:
            BoxDecoration(color: selected ?? false ? primaryColor : textColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: MyText(
                    text: code,
                    bold: selected ?? false,
                    textAlign: TextAlign.center,
                    color: selected ?? false ? textColor : primaryColor,
                    size: selected ?? false ? 18 : 16),
              ),
            ),
            Expanded(
              child: Container(
                child: MyText(
                    text: name,
                    bold: selected ?? false,
                    textAlign: TextAlign.center,
                    color: selected ?? false ? textColor : primaryColor,
                    size: selected ?? false ? 18 : 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
