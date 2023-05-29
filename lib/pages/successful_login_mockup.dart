import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:lottie/lottie.dart';

class SuccessfullLoginMockup extends StatelessWidget {
  const SuccessfullLoginMockup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: MyText(
            text: 'تمت عملية تسجيل الدخول بنجاح',
            bold: true,
            size: 18,
            textAlign: TextAlign.center,
            color: iconColor,
          ),
        ),
        Lottie.asset('assets/lottie/successful-login.json')
        // Container(
        //   child: Center(
        //     child: Image.asset(
        //       'assets/images/mocckup.png',
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
