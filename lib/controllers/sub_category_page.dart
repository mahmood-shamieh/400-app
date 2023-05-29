import 'dart:io';

import '../app_config.dart';
import '../models/response_model.dart';
import 'package:http/http.dart' as http;

class SubCategoryController {
  String apiUrl = hostUrl + 'api/router.php?act=sub-cat&section=';

  Future<ResponseModel> getSubCategory(int sectionId, int subtitleId) async {
    StringBuffer finalURL = StringBuffer();
    finalURL.write(apiUrl);
    finalURL.write(sectionId.toString());
    finalURL.write('&subtitle=');
    finalURL.write(subtitleId.toString());
    var response;
    try {
      response = await http.get(Uri.parse(finalURL.toString()));
      return ResponseModel.fromJson(response.body);
    } on SocketException catch (_) {
      return Future.delayed(
        const Duration(seconds: 0),
        () => ResponseModel.noInternt(),
      );
    } catch (e) {
      return Future.delayed(
        const Duration(seconds: 0),
        () => ResponseModel.processError(),
      );
    }
  }
}
