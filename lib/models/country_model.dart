import 'dart:convert';

class CountryModel {
  String? Id;
  String? Pid;
  String? RecThumb;
  String? RecTitleAr;
  String? RecTitleEn;
  String? Xtype;
  String? UserId;
  String? Xdate;
  String? Xorder;
  CountryModel({
    this.Id,
    this.Pid,
    this.RecThumb,
    this.RecTitleAr,
    this.RecTitleEn,
    this.Xtype,
    this.UserId,
    this.Xdate,
    this.Xorder,
  });

  CountryModel copyWith({
    String? Id,
    String? Pid,
    String? RecThumb,
    String? RecTitleAr,
    String? RecTitleEn,
    String? Xtype,
    String? UserId,
    String? Xdate,
    String? Xorder,
  }) {
    return CountryModel(
      Id: Id ?? this.Id,
      Pid: Pid ?? this.Pid,
      RecThumb: RecThumb ?? this.RecThumb,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      Xtype: Xtype ?? this.Xtype,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'Pid': Pid,
      'RecThumb': RecThumb,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'Xtype': Xtype,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
    };
  }

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    return CountryModel(
      Id: map['Id'] != null ? map['Id'] : null,
      Pid: map['Pid'] != null ? map['Pid'] : null,
      RecThumb: map['RecThumb'] != null ? map['RecThumb'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      Xtype: map['Xtype'] != null ? map['Xtype'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryModel.fromJson(String source) =>
      CountryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CountryModel(Id: $Id, Pid: $Pid, RecThumb: $RecThumb, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, Xtype: $Xtype, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CountryModel &&
        other.Id == Id &&
        other.Pid == Pid &&
        other.RecThumb == RecThumb &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.Xtype == Xtype &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xorder == Xorder;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        Pid.hashCode ^
        RecThumb.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        Xtype.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xorder.hashCode;
  }
}
