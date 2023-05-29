import 'package:fourhundred_app/controllers/city_controller.dart';
import 'package:fourhundred_app/models/city_model.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:get/get.dart';

class CityPageChoseController extends GetxController {
  RxBool isloading = true.obs;

  String? citySelectedModel = '';
  CityController cityController = CityController();
  List<CityModel>? cities = [];
  @override
  void onInit() {
    getCities();
    super.onInit();
  }

  Future getCities() async {
    isloading(true);
    ResponseModel responseModel = await cityController.getCities();
    if (responseModel.code == 200) {
      cities = (responseModel.body as List).map(
        (e) {
          return CityModel.fromMap(e);
        },
      ).toList();
    } else if (responseModel.code == 503) {
      cities = null;
    } else if (responseModel.code == 500) {
      cities = [];
    }
    isloading(false);
    update();
  }
}
