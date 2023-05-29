import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/my_app_bar.dart';
import 'package:fourhundred_app/components/my_elevated_button.dart';
import 'package:fourhundred_app/get_controlles/mobile_verification_page.dart';
import 'package:fourhundred_app/pages/mobile_verification_page.dart';
import 'package:fourhundred_app/pages/card_number_page.dart';
import 'package:fourhundred_app/pages/successful_login_mockup.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../components/my_text.dart';
import '../components/style_widget.dart';
import '../get_controlles/stepper_login_page.dart';
import '../materials.dart';
import 'city_choes_page.dart';

class StepperLogInPage extends StatefulWidget {
  const StepperLogInPage({super.key});

  @override
  State<StepperLogInPage> createState() => _StepperLogInPageState();
}

class _StepperLogInPageState extends State<StepperLogInPage> {
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
        title: StepperText('إدخال رقم البطاقة',
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
        title: StepperText('إدخال رقم الهاتف',
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
  Widget getPageForStepper({index, StepperLogInPageController? controller}) {
    switch (index) {
      case 0:
        return CityChosePage(
          logIn: true,
        );

      case 1:
        return controller!.isloading.value
            ? Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: MyText(
                        text: 'قيد المعالجة يرجى الإنتظار ',
                        color: iconColor,
                        bold: true,
                        size: 18,
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  CircularProgressIndicator(
                    color: iconColor,
                  ),
                ],
              )
            : CardNumberPage();
      case 2:
        return MobileVerifivationPage();

      case 3:
        return SuccessfullLoginMockup();

        break;
      default:
        return Container();
    }
  }

  Widget getActionForPage(
      {index, required StepperLogInPageController controller}) {
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
          textColor:
              controller.citySelected.value ? textColor : Colors.grey.shade300,
          bold: controller.citySelected.value,
          textSize: controller.citySelected.value ? 18 : 16,
        );

      case 1:
        return Visibility(
          visible: !controller.isloading.value,
          child: MyElevatedButton(
            onTap: () {
              if (controller.cardId.text.isNotEmpty) {
                controller.cardCheckFunction();
                // controller.stepIndex.value = 2;

                controller.update();
              }
            },
            backGroundColorcolor:
                controller.canCheckCard.value ? primaryColor : Colors.grey,
            text: "متابعة",
            textColor: controller.canCheckCard.value
                ? textColor
                : Colors.grey.shade300,
            bold: controller.canCheckCard.value,
            textSize: controller.canCheckCard.value ? 18 : 16,
          ),
        );
      case 2:
        return MyElevatedButton(
          onTap: () {
            if (controller.phoneNumber.text.isNotEmpty) {
              controller.checkPhoneNumberFunction();
              controller.update();
            }
          },
          backGroundColorcolor:
              controller.canCheckMobile.value ? primaryColor : Colors.grey,
          text: "متابعة",
          textColor: controller.canCheckMobile.value
              ? textColor
              : Colors.grey.shade300,
          bold: controller.canCheckMobile.value,
          textSize: controller.canCheckMobile.value ? 18 : 16,
        );
      case 3:
        return MyElevatedButton(
          onTap: () {
            if (controller.citySelected.value) {
              GetStorage().write('goToHome', true);
              print(GetStorage().read('goToHome'));
              Get.off(() => StyleWidget());
            } else {
              getDialog(text: "يرجى إختيار البلد قبل المتابعة");
            }
          },
          backGroundColorcolor:
              controller.citySelected.value ? primaryColor : Colors.grey,
          text: "متابعة",
          textColor:
              controller.citySelected.value ? textColor : Colors.grey.shade300,
          bold: controller.citySelected.value,
          textSize: controller.citySelected.value ? 18 : 16,
        );

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'تسجل الدخول', showLogo: false, profileIcon: true),
      body: SafeArea(
        child: GetBuilder<StepperLogInPageController>(
          init: Get.put(StepperLogInPageController()),
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
                                  index: controller.stepIndex.value,
                                  controller: controller),
                              const SizedBox(
                                height: 120,
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
        ),
      ),
    );
  }
}
