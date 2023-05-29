import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fourhundred_app/components/my_date_picker.dart';
import 'package:fourhundred_app/components/my_elevated_button.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/get_controlles/stepper_signup_page.dart';
import 'package:fourhundred_app/models/country_model.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../components/my_text_field.dart';
import '../materials.dart';

class UserDetailsIputPage extends StatelessWidget {
  const UserDetailsIputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StepperSignUpPageController>(
      init: Get.find<StepperSignUpPageController>(),
      builder: (controller) => controller.loadCountries.value ||
              controller.signinIn.value
          ? Column(
              children: [
                MyText(
                  text: 'يرجى الانتظار',
                  color: iconColor,
                  bold: true,
                  size: 18,
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: iconColor,
                    ),
                  ),
                ),
              ],
            )
          : controller.countries == null
              ? MyText(
                  text: 'لا يوجد اتصال بالانترنت يرجى المحاولة لاحقا',
                  color: iconColor,
                  size: 18,
                  textAlign: TextAlign.center,
                )
              : (controller.countries!.isEmpty
                  ? MyText(
                      text: 'حدث خطا اثناء المعالجة يرجى المحاولة لاحقا',
                      color: iconColor,
                      size: 18,
                      textAlign: TextAlign.center,
                    )
                  : Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: DropdownSearch<CountryModel>(
                            items: controller.countries!,
                            itemAsString: (CountryModel c) => c.RecTitleAr!,
                            onChanged: (CountryModel? data) =>
                                controller.setCityValue(countryModel: data!),
                            dropdownBuilder: (context, selectedItem) =>
                                selectedItem != null
                                    ? MyText(
                                        text: selectedItem.RecTitleAr!,
                                        color: iconColor,
                                        size: 14,
                                      )
                                    : Row(
                                        children: [
                                          const Spacer(),
                                          MyText(
                                            text: "اختر المدينة",
                                            color: iconColor,
                                            textAlign: TextAlign.right,
                                            size: 14,
                                          )
                                        ],
                                      ),
                            popupProps: PopupProps.dialog(
                              showSearchBox: true,
                              dialogProps: DialogProps(
                                backgroundColor: primaryColor,
                              ),
                              itemBuilder: (context, item, isSelected) => Row(
                                children: [
                                  const Spacer(),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    child: MyText(
                                      text: item.RecTitleAr!,
                                      color:
                                          isSelected ? primaryColor : iconColor,
                                      textAlign: TextAlign.right,
                                      bold: isSelected,
                                      size: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              textAlign: TextAlign.left,
                              dropdownSearchDecoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: iconColor ?? Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: primaryColor
                                              .withBlue(10)
                                              .withGreen(200) ??
                                          Colors.black),
                                ),
                                labelStyle:
                                    getTextStyle(color: iconColor, size: 22.0),
                                alignLabelWithHint: true,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                                // label: MyText(
                                //   text: "اختر المدينة",
                                //   color: iconColor,
                                //   textAlign: TextAlign.right,
                                // ),
                              ),
                            ),
                          ),
                        ),
                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'الاسم الثلاثي (إجباري)',
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.username,
                        ),
                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'الجنسية (إجباري)',
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.nattionality,
                        ),
                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'رقم الموبايل بدون صفر البداية (إجباري)',
                          textInputType: TextInputType.number,
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.mobile,
                        ),
                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'المهنة (إجباري)',
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.job,
                        ),

                        // MyTextField(
                        //   paddingBottom: 8,
                        //   paddingLeft: 8,
                        //   paddingRight: 8,
                        //   paddingTop: 8,
                        //   hintText: 'المدينة (إجباري)',
                        //   lineColor: iconColor,
                        //   textAlign: TextAlign.center,
                        //   textEditingController: controller.city,
                        // ),
                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'رقم الموبايل2 (إختياري)',
                          textInputType: TextInputType.number,
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.mobile2,
                        ),
                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'المنطقة (إختياري)',
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.location,
                        ),

                        MyTextField(
                          paddingBottom: 8,
                          paddingLeft: 8,
                          paddingRight: 8,
                          paddingTop: 8,
                          hintText: 'الإيميل (إختياري)',
                          lineColor: iconColor,
                          textAlign: TextAlign.center,
                          textEditingController: controller.email,
                        ),
                        // MyElevatedButton(
                        //   bold: false,
                        //   text: "اختيار تاريخ الميلاد",
                        //   onTap: () {
                        //     controller.changeDatePicker();
                        //   },
                        //   textColor: iconColor,
                        //   backGroundColorcolor: primaryColor,
                        // ),
                        const SizedBox(height: 10),
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.easeInCubic,
                          child: Visibility(
                              // visible: controller.showDatePicker.value,
                              child: MyDatePicker(
                            onChange: (date) {
                              Get.find<StepperSignUpPageController>()
                                  .setTimeValue(dateValue: date.value);
                            },
                          )),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: MyText(
                                text: ': الحالة الإجتماعية ',
                                textAlign: TextAlign.right,
                                color: iconColor,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                // fit: FlexFit.tight,
                                flex: 1,
                                child: InkWell(
                                  onTap: () =>
                                      controller.changeMarried(married: true),
                                  child: AnimatedContainer(
                                    margin: const EdgeInsets.all(4),
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: controller.married.value
                                            ? primaryColor
                                            : iconColor),
                                    child: Center(
                                      child: MyText(
                                        text: 'متزوج',
                                        color: controller.married.value
                                            ? iconColor
                                            : primaryColor,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                // fit: FlexFit.tight,
                                flex: 1,
                                child: InkWell(
                                  onTap: () =>
                                      controller.changeMarried(married: false),
                                  child: AnimatedContainer(
                                    margin: const EdgeInsets.all(4),
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: !controller.married.value
                                            ? primaryColor
                                            : iconColor),
                                    child: Center(
                                      child: MyText(
                                        text: 'أعزب',
                                        color: !controller.married.value
                                            ? iconColor
                                            : primaryColor,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: MyText(
                                text: ' : الجنس',
                                textAlign: TextAlign.right,
                                color: iconColor,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                // fit: FlexFit.tight,
                                flex: 1,
                                child: InkWell(
                                  onTap: () =>
                                      controller.changeGender(gender: true),
                                  child: AnimatedContainer(
                                    margin: const EdgeInsets.all(4),
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: controller.male.value
                                            ? primaryColor
                                            : iconColor),
                                    child: Center(
                                      child: MyText(
                                        text: 'ذكر',
                                        color: controller.male.value
                                            ? iconColor
                                            : primaryColor,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                // fit: FlexFit.tight,
                                flex: 1,
                                child: InkWell(
                                  onTap: () =>
                                      controller.changeGender(gender: false),
                                  child: AnimatedContainer(
                                    margin: const EdgeInsets.all(4),
                                    duration: const Duration(milliseconds: 200),
                                    curve: Curves.easeIn,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        color: !controller.male.value
                                            ? primaryColor
                                            : iconColor),
                                    child: Center(
                                      child: MyText(
                                        text: 'أنثى',
                                        color: !controller.male.value
                                            ? iconColor
                                            : primaryColor,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
    );
  }
}
