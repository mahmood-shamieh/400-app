import 'dart:convert';

class ResponseModel {
  int code;
  String message;
  dynamic body;
  ResponseModel({
    required this.code,
    required this.message,
    required this.body,
  });
  factory ResponseModel.noInternt() {
    return ResponseModel(
        code: 503, message: "هناك مشكلة في الاتصال بالإنترنت", body: null);
  }
  factory ResponseModel.processError() {
    return ResponseModel(
        code: 500, message: "هناك خطأ أأثناء المعالجة", body: null);
  }
  ResponseModel copyWith({
    int? code,
    String? message,
    dynamic? body,
  }) {
    return ResponseModel(
      code: code ?? this.code,
      message: message ?? this.message,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'message': message,
      'body': body,
    };
  }

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel(
      code: map['code'],
      message: map['message'],
      body: map['body'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponseModel.fromJson(String source) =>
      ResponseModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ResponseModel(code: $code, message: $message, body: $body)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ResponseModel &&
        other.code == code &&
        other.message == message &&
        other.body == body;
  }

  @override
  int get hashCode => code.hashCode ^ message.hashCode ^ body.hashCode;
}
