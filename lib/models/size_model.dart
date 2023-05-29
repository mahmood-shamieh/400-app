import 'dart:convert';

class SizeModel {
  String? Id;
  String? CodeId;
  String? ColorName;
  String? SizeName;
  String? Ammount;
  String? Active;
  String? Price;
  String? Xdate;
  SizeModel({
    this.Id,
    this.CodeId,
    this.ColorName,
    this.SizeName,
    this.Ammount,
    this.Active,
    this.Price,
    this.Xdate,
  });

  SizeModel copyWith({
    String? Id,
    String? CodeId,
    String? ColorName,
    String? SizeName,
    String? Ammount,
    String? Active,
    String? Price,
    String? Xdate,
  }) {
    return SizeModel(
      Id: Id ?? this.Id,
      CodeId: CodeId ?? this.CodeId,
      ColorName: ColorName ?? this.ColorName,
      SizeName: SizeName ?? this.SizeName,
      Ammount: Ammount ?? this.Ammount,
      Active: Active ?? this.Active,
      Price: Price ?? this.Price,
      Xdate: Xdate ?? this.Xdate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'CodeId': CodeId,
      'ColorName': ColorName,
      'SizeName': SizeName,
      'Ammount': Ammount,
      'Active': Active,
      'Price': Price,
      'Xdate': Xdate,
    };
  }

  factory SizeModel.fromMap(Map<String, dynamic> map) {
    return SizeModel(
      Id: map['Id'] != null ? map['Id'] : null,
      CodeId: map['CodeId'] != null ? map['CodeId'] : null,
      ColorName: map['ColorName'] != null ? map['ColorName'] : null,
      SizeName: map['SizeName'] != null ? map['SizeName'] : null,
      Ammount: map['Ammount'] != null ? map['Ammount'] : null,
      Active: map['Active'] != null ? map['Active'] : null,
      Price: map['Price'] != null ? map['Price'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SizeModel.fromJson(String source) =>
      SizeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SizeModel(Id: $Id, CodeId: $CodeId, ColorName: $ColorName, SizeName: $SizeName, Ammount: $Ammount, Active: $Active, Price: $Price, Xdate: $Xdate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SizeModel &&
        other.Id == Id &&
        other.CodeId == CodeId &&
        other.ColorName == ColorName &&
        other.SizeName == SizeName &&
        other.Ammount == Ammount &&
        other.Active == Active &&
        other.Price == Price &&
        other.Xdate == Xdate;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        CodeId.hashCode ^
        ColorName.hashCode ^
        SizeName.hashCode ^
        Ammount.hashCode ^
        Active.hashCode ^
        Price.hashCode ^
        Xdate.hashCode;
  }
}
