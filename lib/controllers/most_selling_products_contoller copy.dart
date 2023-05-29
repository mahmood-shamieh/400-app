import 'dart:io';

import '../app_config.dart';
import '../models/response_model.dart';
import 'package:http/http.dart' as http;

class MostSellingProductsController {
  String apiUrl = hostUrl + 'api/router.php?act=most-selling';

  Future<ResponseModel> getMostSellingProducts() async {
    var response;
    try {
      response = await http.get(Uri.parse(apiUrl));
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
