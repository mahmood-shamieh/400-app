import 'package:flutter/material.dart';
import 'package:fourhundred_app/controllers/check_card_existance.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:get/get.dart';

class StepperLogInPageController extends GetxController {
  RxBool citySelected = false.obs;
  RxString cityCode = ''.obs;
  RxInt stepIndex = 0.obs;
  RxBool isloading = false.obs;
  RxBool canCheckCard = false.obs;
  RxBool canCheckMobile = false.obs;
  CardCheckController cardCheckController = CardCheckController();
  TextEditingController cardId = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  String currentPhonenumber = '';
  @override
  void onInit() {
    cardId.addListener(() {
      if (cardId.text.isNotEmpty) {
        canCheckCard.value = true;
      } else {
        canCheckCard.value = false;
      }
      update();
    });
    phoneNumber.addListener(
      () {
        if (phoneNumber.text.isNotEmpty) {
          canCheckMobile.value = true;
        } else {
          canCheckMobile.value = false;
        }
        update();
      },
    );
    super.onInit();
  }

  void changeStep({stepIndex}) {
    this.stepIndex.value = stepIndex;
    update();
  }

  void cardCheckFunction() async {
    isloading(true);
    update();
    ResponseModel responseModel =
        await cardCheckController.checkCard(cardId: cardId.text);
    if (responseModel.code == 200) {
      currentPhonenumber = responseModel.body;
      stepIndex.value++;
    } else {
      cardId.clear();
      getDialog(text: responseModel.message);
    }
    isloading(false);
    update();
  }

  void checkPhoneNumberFunction() {
    if (currentPhonenumber == phoneNumber.text) {
      stepIndex.value++;
    } else {
      getDialog(text: 'رقم الهاتف غير صحيح');
    }
    update();
  }
}
