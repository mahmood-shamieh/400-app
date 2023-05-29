import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/my_text_field.dart';
import 'package:fourhundred_app/get_controlles/mobile_verification_page.dart';
import 'package:fourhundred_app/get_controlles/stepper_login_page.dart';
import 'package:fourhundred_app/get_controlles/stepper_signup_page.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../components/my_text.dart';

class MobileVerifivationPage extends StatelessWidget {
  bool? signUp;
  MobileVerifivationPage({super.key, this.signUp});

  @override
  Widget build(BuildContext context) {
    return signUp ?? false
        ? GetBuilder<MobileVerficationPageController>(
            init: Get.put(MobileVerficationPageController()),
            builder: (controller) {
              return Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                    child: MyText(
                      text:
                          'الرجاء قم بإدخال رمز التوكيد الذي سيصلك برسالة نصية على الرقم الذي أدخلته سابقاً',
                      bold: true,
                      size: 18,
                      textAlign: TextAlign.center,
                      color: iconColor,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(12),
                    child: Visibility(
                      // visible: controller.showPinPut.value,
                      child: Pinput(
                        defaultPinTheme: PinTheme(
                          width: 56,
                          height: 56,
                          textStyle: getTextStyle(
                            bold: FontWeight.bold,
                            size: 18.0,
                            color: iconColor,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: iconColor),
                          ),
                        ),
                        focusedPinTheme: PinTheme(
                          width: 56,
                          height: 56,
                          textStyle: getTextStyle(
                            bold: FontWeight.bold,
                            size: 18.0,
                            color: iconColor,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    primaryColor.withBlue(10).withGreen(200)),
                          ),
                        ),
                        onCompleted: (pin) =>
                            Get.find<StepperSignUpPageController>()
                                .vaildateVerificationcode(pin: pin),
                      ),
                    ),
                  )
                ],
              );
            })
        : Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                child: MyText(
                  text:
                      'الرجاء قم بإدخال رقم الموبايل في الحقل أدناه بدون صفر البداية',
                  bold: true,
                  size: 18,
                  textAlign: TextAlign.center,
                  color: iconColor,
                ),
              ),
              MyTextField(
                paddingBottom: 4,
                paddingLeft: 4,
                paddingRight: 4,
                paddingTop: 4,
                hintText: 'رقم الهاتف كاملاً بدون صفر البداية',
                lineColor: iconColor,
                textAlign: TextAlign.center,
                textEditingController:
                    Get.find<StepperLogInPageController>().phoneNumber,
                textInputType: TextInputType.number,
              ),
            ],
          );
  }
}
