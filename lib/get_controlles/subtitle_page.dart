import 'package:fourhundred_app/controllers/subtitles_controller.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:fourhundred_app/models/subtitle_model.dart';
import 'package:fourhundred_app/pages/subtitle-page.dart';
import 'package:get/get.dart';

class SubtitlePageController extends GetxController {
  RxBool isLoading = false.obs;
  List<SubtitleModel> subtitles = [];
  SubtitleController subtitleController = SubtitleController();
  void loadSubtitles(int sectionId) async {
    isLoading(true);
    ResponseModel responseModel =
        await subtitleController.getSubtitles(sectionId);
    if (responseModel.code == 200) {
      subtitles = (responseModel.body as List)
          .map((e) => SubtitleModel.fromMap(e))
          .toList();
    } else if (responseModel.code == 500) {
      Get.defaultDialog();
    } else {
      Get.defaultDialog();
    }
    isLoading(false);
    update();
  }
}
