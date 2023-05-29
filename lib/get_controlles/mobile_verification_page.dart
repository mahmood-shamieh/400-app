import 'dart:ui';

import 'package:get/get.dart';

class MobileVerficationPageController extends GetxController {
  RxBool showPinPut = false.obs;
  void changePinPutStatus() {
    showPinPut.value = !showPinPut.value;
    update();
  }
}
