import 'dart:io';

import '../app_config.dart';
import '../models/response_model.dart';
import 'package:http/http.dart' as http;

class ProductDetailsController {
  String apiUrl = hostUrl + 'api/router.php?act=product-details&codeId=';

  Future<ResponseModel> getDetails({required codeId}) async {
    StringBuffer finalURL = StringBuffer(apiUrl);
    finalURL.write(codeId);
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
