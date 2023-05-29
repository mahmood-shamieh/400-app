import 'package:fourhundred_app/controllers/product_details_controller.dart';
import 'package:fourhundred_app/models/media_model.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:fourhundred_app/models/site_artcile_model.dart';
import 'package:fourhundred_app/models/size_model.dart';
import 'package:get/get.dart';

import '../models/size_table_model.dart';

class ProductDetailsPageController extends GetxController {
  RxBool loadDetails = false.obs;
  RxBool showReplacment = false.obs;
  late List<SizeModel>? sizes;
  late List<MediaModel>? media;
  late SizeTableModel? tableSize;
  late SiteArticelModel? replacement;
  ProductDetailsController productDetailsController =
      ProductDetailsController();
  void loadproductDetails({codeId}) async {
    loadDetails(true);
    ResponseModel responseModel =
        await productDetailsController.getDetails(codeId: codeId);
    if (responseModel.code == 200) {
      media = (responseModel.body['media'] as List).map(
        (e) {
          return MediaModel.fromMap(e);
        },
      ).toList();
      sizes = (responseModel.body['sizes'] as List).map(
        (e) {
          return SizeModel.fromMap(e);
        },
      ).toList();
      tableSize = SizeTableModel.fromMap(responseModel.body['tableSize']);
      replacement = SiteArticelModel.fromMap(responseModel.body['replace']);
    } else if (responseModel.code == 503) {
      media = null;
      sizes = null;
      tableSize = null;
      replacement = null;
    } else if (responseModel.code == 500) {
      media = [];
      sizes = [];
    }
    loadDetails(false);
    update();
  }
}
