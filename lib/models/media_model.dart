import 'dart:convert';

class MediaModel {
  String? Id;
  String? CodeId;
  String? Color;
  String? Number;
  String? Extention;
  MediaModel({
    this.Id,
    this.CodeId,
    this.Color,
    this.Number,
    this.Extention,
  });

  MediaModel copyWith({
    String? Id,
    String? CodeId,
    String? Color,
    String? Number,
    String? Extention,
  }) {
    return MediaModel(
      Id: Id ?? this.Id,
      CodeId: CodeId ?? this.CodeId,
      Color: Color ?? this.Color,
      Number: Number ?? this.Number,
      Extention: Extention ?? this.Extention,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'CodeId': CodeId,
      'Color': Color,
      'Number': Number,
      'Extention': Extention,
    };
  }

  factory MediaModel.fromMap(Map<String, dynamic> map) {
    return MediaModel(
      Id: map['Id'] != null ? map['Id'] : null,
      CodeId: map['CodeId'] != null ? map['CodeId'] : null,
      Color: map['Color'] != null ? map['Color'] : null,
      Number: map['Number'] != null ? map['Number'] : null,
      Extention: map['Extention'] != null ? map['Extention'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MediaModel.fromJson(String source) =>
      MediaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MediaModel(Id: $Id, CodeId: $CodeId, Color: $Color, Number: $Number, Extention: $Extention)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MediaModel &&
        other.Id == Id &&
        other.CodeId == CodeId &&
        other.Color == Color &&
        other.Number == Number &&
        other.Extention == Extention;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        CodeId.hashCode ^
        Color.hashCode ^
        Number.hashCode ^
        Extention.hashCode;
  }
}
