import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/my_text.dart';

Color primaryColor = Color(0xffffe293);
Color textColor = Color(0xff040707);
Color iconColor = Color(0xff040707);
getTextStyle({color, size, bold, linned}) {
  return GoogleFonts.notoKufiArabic(
      color: color ?? primaryColor,
      fontSize: size ?? 18,
      fontWeight: bold ?? FontWeight.normal,
      decoration:
          linned ?? false ? TextDecoration.lineThrough : TextDecoration.none);
}

getDialog({action, text}) {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle: getTextStyle(
        bold: FontWeight.bold,
        color: iconColor,
        size: 20.0,
      ),
      content: MyText(
        text: text,
        bold: false,
        color: iconColor,
        textAlign: TextAlign.center,
      ),
      cancel: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(iconColor)),
          onPressed: action ?? () => Get.back(),
          child: MyText(
            text: "إلغاء",
            bold: true,
            color: Colors.white,
          )));
}

TextDirection direction = TextDirection.rtl;
