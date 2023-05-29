import 'package:fourhundred_app/controllers/sub_category_page.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:fourhundred_app/models/sub_category_model.dart';
import 'package:get/get.dart';

class SubCategoryPageController extends GetxController {
  RxBool isloading = false.obs;
  SubCategoryController subCategoryController = SubCategoryController();
  List<SubCategoryModel> subCategories = [];
  void getSubCategory(int sectionId, int subtitleId) async {
    isloading(true);
    ResponseModel responseModel =
        await subCategoryController.getSubCategory(sectionId, subtitleId);
    if (responseModel.code == 200) {
      subCategories = (responseModel.body as List)
          .map((e) => SubCategoryModel.fromMap(e))
          .toList();
    } else {
      Get.defaultDialog();
    }
    isloading(false);
    update();
  }
}
