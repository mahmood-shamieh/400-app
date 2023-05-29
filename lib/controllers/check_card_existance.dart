import 'dart:convert';
import 'dart:io';

import '../app_config.dart';
import '../models/response_model.dart';
import 'package:http/http.dart' as http;

class CardCheckController {
  String apiUrl = hostUrl + 'api/router.php?act=card-check';

  Future<ResponseModel> checkCard({required String cardId}) async {
    var response;
    try {
      response = await http.post(Uri.parse(apiUrl),
          body: json.encode({"cardId": cardId}));
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
