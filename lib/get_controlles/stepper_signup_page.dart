import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fourhundred_app/controllers/country_controller.dart';
import 'package:fourhundred_app/controllers/signup_controller.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/city_model.dart';
import 'package:fourhundred_app/models/country_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/response_model.dart';

class StepperSignUpPageController extends GetxController {
  RxBool loadCountries = false.obs;
  RxBool signinIn = false.obs;
  RxBool citySelected = false.obs;
  RxBool male = true.obs;
  RxBool married = false.obs;
  RxBool showDatePicker = false.obs;
  RxBool signUpState = false.obs;
  RxInt stepIndex = 0.obs;
  RxString cityCode = ''.obs;
  String verficationCode = '';
  bool skipVerfication = false;
  CountryController countryController = CountryController();
  List<CountryModel>? countries = [];
  TextEditingController username = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController nattionality = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController job = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController mobile2 = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  void onInit() {
    getCountry();
    username.text = 'محمود شاميه';
    birthDate.text = '20/2/2000';
    nattionality.text = 'سوري';
    mobile.text = '945861450';
    job.text = 'مهندس';
    city.text = 'دمشق';
    mobile2.text = '982219358';
    location.text = 'كفر بطنا';
    email.text = 'mahmoodshamiehh2000@gmail.com';
    String gender = 'ذكر';
    String married = 'متزوج';
    super.onInit();
  }

  void getCountry() async {
    loadCountries(true);
    ResponseModel respnse = await countryController.getCountries();
    if (respnse.code == 200) {
      countries = (respnse.body as List).map(
        (e) {
          return CountryModel.fromMap(e);
        },
      ).toList();
    } else if (respnse.code == 503) {
      countries = null;
    } else if (respnse.code == 500) {
      countries = [];
    }
    loadCountries(false);
    update();
  }

  void changeStep({stepIndex}) {
    this.stepIndex.value = stepIndex;
    update();
  }

  void changeGender({gender}) {
    male.value = gender;
    update();
  }

  void changeMarried({married}) {
    this.married.value = married;
    update();
  }

  void changeDatePicker() {
    showDatePicker.value = !showDatePicker.value;
    update();
  }

  void setTimeValue({dateValue}) {
    birthDate.text = dateValue.toString();
    // update();
  }

  void setCityValue({required CountryModel countryModel}) {
    city.text = countryModel.RecTitleAr!;
  }

  void validateData() async {
    if (city.text.isEmpty) {
      getDialog(text: 'يرجى إدخال المدينة أولاً');
    } else if (username.text.isEmpty) {
      getDialog(text: 'يرجى إدخال الاسم الثلاثي أولاً');
    } else if (nattionality.text.isEmpty) {
      getDialog(text: 'يرجى إدخال الجنسية أولاً');
    } else if (mobile.text.isEmpty) {
      getDialog(text: 'يرجى إدخال رقم الموبايل أولاً');
    } else if (job.text.isEmpty) {
      getDialog(text: 'يرجى إدخال المهنة أولاً');
    } else if (birthDate.text.isEmpty) {
      getDialog(text: 'يرجى إدخال تاريخ الميلاد أولاً');
    } else {
      signinIn(true);
      update();
      await signUp();
      signinIn(false);
      if (skipVerfication) {
        stepIndex.value++;
      }
      update();
    }
  }

  Future signUp() async {
    SignUpController signUpController = SignUpController();
    signUpState(true);
    ResponseModel responseModel = await signUpController.signUp(data: {
      'phone': cityCode + mobile.text,
      'cityId': CityModel.fromJson(GetStorage().read('city')).Id
    });
    verficationCode = responseModel.body['code'].toString();
    skipVerfication = responseModel.body['haveAPI'].toString() == '0';
    signUpState(false);
    stepIndex.value++;
    update();
  }

  void vaildateVerificationcode({pin}) {
    if (pin == verficationCode) {
      stepIndex.value++;
    } else {
      getDialog(text: "رمز التأكيد غير صحيح");
    }
    update();
  }
}
