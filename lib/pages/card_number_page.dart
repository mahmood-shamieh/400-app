import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/get_controlles/stepper_login_page.dart';
import 'package:get/get.dart';

import '../components/my_text_field.dart';
import '../materials.dart';

class CardNumberPage extends StatelessWidget {
  const CardNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          child: MyText(
            text: 'الرجاء إدخال رقم البطاقة في الحقل أدناه',
            bold: true,
            size: 24,
            textAlign: TextAlign.center,
            color: iconColor,
          ),
        ),
        MyTextField(
          paddingBottom: 4,
          paddingLeft: 4,
          paddingRight: 4,
          paddingTop: 4,
          hintText: 'رقم البطاقة كاملاً',
          lineColor: iconColor,
          textAlign: TextAlign.center,
          textInputType: TextInputType.number,
          textEditingController: Get.find<StepperLogInPageController>().cardId,
        ),
      ],
    );
  }
}
