import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/city_block_widget.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/components/style_widget.dart';
import 'package:fourhundred_app/get_controlles/city_chose_page.dart';
import 'package:fourhundred_app/get_controlles/stepper_login_page.dart';
import 'package:fourhundred_app/get_controlles/stepper_signup_page.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/pages/home_page.dart';
import 'package:fourhundred_app/pages/stepper_signup_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CityChosePage extends StatelessWidget {
  bool? logIn;
  CityChosePage({super.key, this.logIn});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CityPageChoseController>(
      init: Get.put(CityPageChoseController()),
      builder: (controller) => Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: MyText(
              text: ' إختر البلد الخاص بك',
              bold: true,
              color: textColor,
              size: 18,
              textAlign: TextAlign.center,
            ),
          ),
          controller.isloading.value
              ? Container(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: textColor,
                    ),
                  ),
                )
              : controller.cities == null
                  ? MyText(
                      text: 'لا يوجد اتصال بالانترنت يرجى المحاولة لاحقا',
                      color: iconColor,
                      size: 18,
                      textAlign: TextAlign.center,
                    )
                  : (controller.cities!.isEmpty
                      ? MyText(
                          text: 'حدث خطا اثناء المعالجة يرجى المحاولة لاحقا',
                          color: iconColor,
                          size: 18,
                          textAlign: TextAlign.center,
                        )
                      : Column(
                          children: controller.cities!
                              .map((e) => CityBlockWidget(
                                  onTap: () {
                                    var stepperPageController;
                                    if (logIn ?? false) {
                                      stepperPageController = Get.find<
                                          StepperLogInPageController>();
                                      stepperPageController.cityCode.value =
                                          e.Code;
                                    } else {
                                      stepperPageController = Get.find<
                                          StepperSignUpPageController>();
                                      stepperPageController.cityCode.value =
                                          e.Code;
                                    }
                                    GetStorage().write('city', e.toJson());
                                    controller.update();
                                    controller.citySelectedModel = e.Id;
                                    stepperPageController.citySelected.value =
                                        true;
                                    stepperPageController.update();
                                  },
                                  selected:
                                      e.Id == controller.citySelectedModel,
                                  name: e.RecTitleAr!,
                                  code: e.Code!))
                              .toList(),
                        )),
        ],
      ),
    );
  }
}
