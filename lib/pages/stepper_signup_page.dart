import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fourhundred_app/components/style_widget.dart';
import 'package:fourhundred_app/get_controlles/stepper_signup_page.dart';
import 'package:fourhundred_app/pages/card_number_page.dart';
import 'package:fourhundred_app/pages/successful_login_mockup.dart';
import 'package:fourhundred_app/pages/user_details_inputs_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../components/my_app_bar.dart';
import '../components/my_elevated_button.dart';
import '../get_controlles/mobile_verification_page.dart';
import '../materials.dart';
import 'city_choes_page.dart';
import 'mobile_verification_page.dart';

class StepperSignUpPage extends StatelessWidget {
  const StepperSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<StepperData> stepperData = [
      StepperData(
          title: StepperText('إختيار البلد',
              textStyle: getTextStyle(
                  color: iconColor, bold: FontWeight.bold, size: 20.0)),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: iconColor,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: const Icon(Icons.looks_one, color: Colors.white),
          )),
      StepperData(
          title: StepperText('معلومات المستخدم',
              textStyle: getTextStyle(
                  color: iconColor, bold: FontWeight.bold, size: 20.0)),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: iconColor,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: const Icon(Icons.looks_two, color: Colors.white),
          )),
      StepperData(
          title: StepperText('توكيد رقم الهاتف',
              textStyle: getTextStyle(
                  color: iconColor, bold: FontWeight.bold, size: 20.0)),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: iconColor,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: const Icon(Icons.looks_3, color: Colors.white),
          )),
      StepperData(
          title: StepperText('إتمام العملية',
              textStyle: getTextStyle(
                  color: iconColor, bold: FontWeight.bold, size: 20.0)),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: iconColor,
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: const Icon(Icons.looks_4, color: Colors.white),
          )),
    ];
    Widget getPageForStepper({index}) {
      switch (index) {
        case 0:
          return CityChosePage();

        case 1:
          return UserDetailsIputPage();
        case 2:
          return MobileVerifivationPage(
            signUp: true,
          );

        case 3:
          return SuccessfullLoginMockup();

          break;
        default:
          return Container();
      }
    }

    Widget getActionForPage(
        {index, required StepperSignUpPageController controller}) {
      switch (index) {
        case 0:
          return MyElevatedButton(
            onTap: () {
              if (controller.citySelected.value) {
                controller.stepIndex.value = 1;
                controller.update();
              } else {
                getDialog(text: "يرجى إختيار البلد قبل المتابعة");
              }
            },
            backGroundColorcolor:
                controller.citySelected.value ? primaryColor : Colors.grey,
            text: "متابعة",
            textColor: controller.citySelected.value
                ? textColor
                : Colors.grey.shade300,
            bold: controller.citySelected.value,
            textSize: controller.citySelected.value ? 18 : 16,
          );

        case 1:
          return MyElevatedButton(
            onTap: () {
              controller.validateData();
            },
            backGroundColorcolor: primaryColor,
            text: "متابعة",
            textColor: iconColor,
            bold: true,
            textSize: 18,
          );
        case 2:
          return Container();
        case 3:
          return MyElevatedButton(
            onTap: () {
              GetStorage().write('goToHome', true);
              Get.off(() => StyleWidget());
            },
            backGroundColorcolor: primaryColor,
            text: "متابعة",
            textColor: iconColor,
            bold: true,
            textSize: 18,
          );

        default:
          return Container();
      }
    }

    return Scaffold(
      appBar: MyAppBar(text: 'إنشاء حساب', showLogo: false, profileIcon: true),
      body: SafeArea(
          child: GetBuilder<StepperSignUpPageController>(
        init: Get.put(StepperSignUpPageController()),
        builder: (controller) {
          return Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: AnotherStepper(
                          stepperList: stepperData,
                          stepperDirection: Axis.horizontal,
                          gap: 10,
                          iconWidth: 40,
                          iconHeight: 40,
                          activeBarColor: primaryColor,
                          inActiveBarColor: Colors.grey,
                          activeIndex: controller.stepIndex.value,
                          barThickness: 10,
                        ),
                      ),
                      Divider(
                          color: iconColor,
                          thickness: 0.5,
                          endIndent: 15,
                          indent: 15),
                      SizedBox(
                        height: MediaQuery.of(context).size.height - 245,
                        child: ListView(
                          children: [
                            getPageForStepper(
                                index: controller.stepIndex.value),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const Spacer(),
                  getActionForPage(
                    controller: controller,
                    index: controller.stepIndex.value,
                  ),
                  Visibility(
                      visible: controller.stepIndex.value > 0,
                      child: MyElevatedButton(
                        text: 'رجوع',
                        bold: false,
                        backGroundColorcolor: Colors.red.shade400,
                        onTap: () {
                          if (controller.stepIndex.value > 0) {
                            controller.stepIndex.value--;
                            controller.update();
                          }
                        },
                      ))
                ],
              ),
            ],
          );
        },
      )),
    );
  }
}
