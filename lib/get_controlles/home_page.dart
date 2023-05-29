import 'package:fourhundred_app/controllers/braches_controller.dart';
import 'package:fourhundred_app/controllers/latest_products_contoller.dart';
import 'package:fourhundred_app/controllers/main_sections_ccontroller.dart';
import 'package:fourhundred_app/controllers/most_selling_products_contoller%20copy.dart';
import 'package:fourhundred_app/models/main_section_model.dart';
import 'package:fourhundred_app/models/product_models.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:fourhundred_app/models/site_artcile_model.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool latestproductLoading = false.obs;
  RxBool mostproductLoading = false.obs;
  RxBool mainSectionLoading = false.obs;
  RxBool branchesLoading = false.obs;
  MainSectionsController mainSectionsController = MainSectionsController();
  LatestProductsController latestProductsController =
      LatestProductsController();
  MostSellingProductsController mostSellingProductsController =
      MostSellingProductsController();
  BranchesController branchesController = BranchesController();
  List<MainSectionModel> mainSections = [];
  List<ProductModel> latestProducts = [];
  List<ProductModel> mostSellingProduct = [];
  List<SiteArticelModel> articls = [];
  @override
  void onInit() {
    inialstate();
    super.onInit();
  }

  void getMainSubCat() async {
    mainSectionLoading(true);
    // await Future.delayed(Duration(seconds: 4));
    ResponseModel respnse = await mainSectionsController.getMainSec();
    if (respnse.code == 200) {
      mainSections = (respnse.body as List)
          .map(
            (e) => MainSectionModel.fromMap(e),
          )
          .toList();
      mainSectionLoading(false);
      update();
    }
  }

  void getLatestProducts() async {
    latestproductLoading(true);
    // await Future.delayed(Duration(seconds: 2));
    ResponseModel respnse = await latestProductsController.getLatestProducts();
    if (respnse.code == 200) {
      latestProducts = (respnse.body as List)
          .map(
            (e) => ProductModel.fromMap(e),
          )
          .toList();
      // print(latestProducts);
      latestproductLoading(false);
      update();
    }
  }

  void getMostSellingProducts() async {
    mostproductLoading(true);
    // await Future.delayed(Duration(seconds: 2));
    ResponseModel respnse =
        await mostSellingProductsController.getMostSellingProducts();
    if (respnse.code == 200) {
      mostSellingProduct = (respnse.body as List)
          .map(
            (e) => ProductModel.fromMap(e),
          )
          .toList();
      // print(latestProducts);
      mostproductLoading(false);
      update();
    }
  }

  void getBranches() async {
    branchesLoading(true);
    ResponseModel respnse = await branchesController.getBranches();
    if (respnse.code == 200) {
      articls = (respnse.body as List)
          .map(
            (e) => SiteArticelModel.fromMap(e),
          )
          .toList();
      branchesLoading(false);
      update();
    }
  }

  void inialstate() {
    getMainSubCat();
    getLatestProducts();
    getMostSellingProducts();
    getBranches();
  }
}
