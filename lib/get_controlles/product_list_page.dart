import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fourhundred_app/components/my_text.dart';
import 'package:fourhundred_app/controllers/product_list_controller.dart';
import 'package:fourhundred_app/materials.dart';
import 'package:fourhundred_app/models/product_models.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:get/get.dart';

class ProductListPageController extends GetxController {
  RxBool isloading = false.obs;
  ProductListController productListController = ProductListController();
  List<ProductModel> products = [];
  void getProduct(int sectionId, int subCatId, int offset) async {
    isloading(true);
    update();
    ResponseModel responseModel =
        await productListController.getproduct(sectionId, subCatId, offset);
    if (responseModel.code == 200) {
      /* if ((responseModel.body as List).isEmpty) {
        Get.defaultDialog(
            title: "تنبيه",
            titleStyle: getTextStyle(
              bold: FontWeight.bold,
              color: iconColor,
              size: 20.0,
            ),
            content: MyText(
              text: "لا يوجد المزيد من البيانات",
              bold: false,
              color: iconColor,
              textAlign: TextAlign.center,
            ),
            cancel: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(iconColor)),
                onPressed: () => Get.back(),
                child: MyText(
                  text: "إلغاء",
                  bold: true,
                  color: Colors.white,
                )));
      } else { */
      if ((responseModel.body as List).isNotEmpty) {
        products.addAll((responseModel.body as List)
            .map((e) => ProductModel.fromMap(e))
            .toList());
      }
      print('------->' + products.length.toString());

      // }
    } /* else {
      Get.defaultDialog();
    } */
    isloading(false);
    update();
  }
}
