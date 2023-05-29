import 'dart:convert';

class CityModel {
  String? Id;
  String? RecTitleAr;
  String? RecTitleEn;
  String? MinPrice;
  String? MaxPrice;
  String? CurrencyUnit;
  String? UserId;
  String? Xdate;
  String? Xorder;
  String? Code;
  CityModel(
      {this.Id,
      this.RecTitleAr,
      this.RecTitleEn,
      this.MinPrice,
      this.MaxPrice,
      this.CurrencyUnit,
      this.UserId,
      this.Xdate,
      this.Xorder,
      this.Code});

  CityModel copyWith(
      {String? Id,
      String? RecTitleAr,
      String? RecTitleEn,
      String? MinPrice,
      String? MaxPrice,
      String? CurrencyUnit,
      String? UserId,
      String? Xdate,
      String? Xorder,
      String? code}) {
    return CityModel(
      Id: Id ?? this.Id,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      MinPrice: MinPrice ?? this.MinPrice,
      MaxPrice: MaxPrice ?? this.MaxPrice,
      CurrencyUnit: CurrencyUnit ?? this.CurrencyUnit,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
      Code: Code ?? this.Code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'MinPrice': MinPrice,
      'MaxPrice': MaxPrice,
      'CurrencyUnit': CurrencyUnit,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
      'Code': Code,
    };
  }

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      Id: map['Id'] != null ? map['Id'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      MinPrice: map['MinPrice'] != null ? map['MinPrice'] : null,
      MaxPrice: map['MaxPrice'] != null ? map['MaxPrice'] : null,
      CurrencyUnit: map['CurrencyUnit'] != null ? map['CurrencyUnit'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
      Code: map['Code'] != null ? map['Code'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CityModel.fromJson(String source) =>
      CityModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CityModel(Id: $Id, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, MinPrice: $MinPrice, MaxPrice: $MaxPrice, CurrencyUnit: $CurrencyUnit, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CityModel &&
        other.Id == Id &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.MinPrice == MinPrice &&
        other.MaxPrice == MaxPrice &&
        other.CurrencyUnit == CurrencyUnit &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Code == Code &&
        other.Xorder == Xorder;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        MinPrice.hashCode ^
        MaxPrice.hashCode ^
        CurrencyUnit.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Code.hashCode ^
        Xorder.hashCode;
  }
}
