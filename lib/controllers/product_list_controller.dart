import 'dart:io';

import 'package:fourhundred_app/app_config.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:http/http.dart' as http;

class ProductListController {
  String apiUrl = hostUrl + 'api/router.php?act=product&section=';

  Future<ResponseModel> getproduct(
      int sectionId, int subCatId, int offset) async {
    StringBuffer finalURL = StringBuffer();
    finalURL.write(apiUrl);
    finalURL.write(sectionId.toString());
    finalURL.write('&subCat=');
    finalURL.write(subCatId.toString());
    finalURL.write('&offset=');
    finalURL.write(offset.toString());
    print(finalURL);
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
