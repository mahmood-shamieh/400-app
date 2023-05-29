import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fourhundred_app/components/my_elevated_button.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/get_controlles/splash_screen.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/pages/stepper_login_page.dart';
import 'package:fourhundred_app/pages/stepper_signup_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(GetStorage().read('goToHome'));
    return GetBuilder<SplashScreenContrller>(
      init: Get.put<SplashScreenContrller>(SplashScreenContrller()),
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Lottie.asset('assets/lottie/successful-login.json'),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                  child: Image(
                    image: AssetImage('assets/images/400-logo-3.png'),
                  ),
                ),
                GetStorage().read('goToHome') ?? false
                    ? Center(
                        child: CircularProgressIndicator(
                          color: iconColor,
                        ),
                      )
                    : Column(
                        children: [
                          MyElevatedButton(
                            backGroundColorcolor: primaryColor,
                            bold: true,
                            text: 'تسجيل الدخول',
                            textColor: iconColor,
                            textSize: 24,
                            onTap: () => Get.to(() => const StepperLogInPage()),
                          ),
                          MyElevatedButton(
                            backGroundColorcolor: primaryColor,
                            bold: true,
                            text: 'إنشاء حساب',
                            textColor: iconColor,
                            textSize: 24,
                            onTap: () =>
                                Get.to(() => const StepperSignUpPage()),
                          )
                        ],
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
