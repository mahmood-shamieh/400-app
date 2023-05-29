import 'package:fourhundred_app/components/style_widget.dart';
import 'package:fourhundred_app/controllers/main_sections_ccontroller.dart';
import 'package:fourhundred_app/pages/city_choes_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreenContrller extends GetxController {
  MainSectionsController mainSectionsController = MainSectionsController();
  RxInt currentStep = 1.obs;

  @override
  void onInit() {
    mainSectionsController.getMainSec();

    Future.delayed(
      Duration(seconds: 3),
      () {
        var goToCity = GetStorage().read('goToHome');
        if (goToCity ?? false) {
          Get.off(StyleWidget());
        }
      },
    );
  }

  incresStep() {
    return Stream<int>.periodic(
      Duration(milliseconds: 200),
      (computationCount) {
        if (currentStep.value > 15)
          currentStep.value = 0;
        else
          currentStep += 1;
        return currentStep.value;
        // update();
      },
    );
  }
}
