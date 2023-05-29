import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/models/sub_category_model.dart';
import 'package:fourhundred_app/pages/product_List_page.dart';
import 'package:get/get.dart';

class SubCategoryWidget extends StatelessWidget {
  SubCategoryModel subCategoryModel;
  MainSectionModel mainSectionModel;
  SubCategoryWidget(
      {super.key,
      required this.subCategoryModel,
      required this.mainSectionModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => ProductListPage(
            mainSectionModel: mainSectionModel,
            subCategoryModel: subCategoryModel,
          )),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width / 2 - 24,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: primaryColor, boxShadow: [
          BoxShadow(
              color: iconColor,
              blurRadius: 0.01,
              // blurStyle: BlurStyle.solid,
              offset: const Offset(0, 0),
              spreadRadius: 0.0001)
        ]),
        child:
            // Row(
            //   children: [
            //     Icon(
            //       Icons.category,
            //       color: iconColor,
            //       size: 30,
            //     ),
            Container(
          width: MediaQuery.of(context).size.width - 100,
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: MyText(
              text: subCategoryModel.RecTitleAr ?? "",
              color: iconColor,
              bold: true,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        //     const Spacer(),
        //     Icon(
        //       Icons.arrow_forward_ios_rounded,
        //       color: iconColor,
        //     )
        //   ],
        // ),
      ),
    );
  }
}
