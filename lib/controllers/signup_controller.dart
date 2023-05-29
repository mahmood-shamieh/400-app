import 'dart:convert';
import 'dart:io';

import 'package:fourhundred_app/app_config.dart';
import 'package:fourhundred_app/models/response_model.dart';
import 'package:http/http.dart' as http;

class SignUpController {
  String apiUrl = hostUrl + 'api/router.php?act=signup';
  Future<ResponseModel> signUp({required Map data}) async {
    var response;
    try {
      response = await http.post(Uri.parse(apiUrl), body: json.encode(data));
      print(response.body);
      return Future.delayed(
        Duration(seconds: 0),
        () {
          return ResponseModel.fromJson(response.body);
        },
      );
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
