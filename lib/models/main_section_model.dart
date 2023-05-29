import 'dart:convert';

class MainSectionModel {
  String? Id;
  String? Pid;
  String? RecThumb;
  String? RecTitleAr;
  String? RecTitleEn;
  String? UserId;
  String? Xdate;
  String? Xorder;
  String? Co1;
  String? Co2;
  String? Co3;
  MainSectionModel({
    this.Id,
    this.Pid,
    this.RecThumb,
    this.RecTitleAr,
    this.RecTitleEn,
    this.UserId,
    this.Xdate,
    this.Xorder,
    this.Co1,
    this.Co2,
    this.Co3,
  });

  MainSectionModel copyWith({
    String? Id,
    String? Pid,
    String? RecThumb,
    String? RecTitleAr,
    String? RecTitleEn,
    String? UserId,
    String? Xdate,
    String? Xorder,
    String? Co1,
    String? Co2,
    String? Co3,
  }) {
    return MainSectionModel(
      Id: Id ?? this.Id,
      Pid: Pid ?? this.Pid,
      RecThumb: RecThumb ?? this.RecThumb,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
      Co1: Co1 ?? this.Co1,
      Co2: Co2 ?? this.Co2,
      Co3: Co3 ?? this.Co3,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'Pid': Pid,
      'RecThumb': RecThumb,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
      'Co1': Co1,
      'Co2': Co2,
      'Co3': Co3,
    };
  }

  factory MainSectionModel.fromMap(Map<String, dynamic> map) {
    return MainSectionModel(
      Id: map['Id'] != null ? map['Id'] : null,
      Pid: map['Pid'] != null ? map['Pid'] : null,
      RecThumb: map['RecThumb'] != null ? map['RecThumb'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
      Co1: map['Co1'] != null ? map['Co1'] : null,
      Co2: map['Co2'] != null ? map['Co2'] : null,
      Co3: map['Co3'] != null ? map['Co3'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MainSectionModel.fromJson(String source) =>
      MainSectionModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MainSectionModel(Id: $Id, Pid: $Pid, RecThumb: $RecThumb, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder, Co1: $Co1, Co2: $Co2, Co3: $Co3)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MainSectionModel &&
        other.Id == Id &&
        other.Pid == Pid &&
        other.RecThumb == RecThumb &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xorder == Xorder &&
        other.Co1 == Co1 &&
        other.Co2 == Co2 &&
        other.Co3 == Co3;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        Pid.hashCode ^
        RecThumb.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xorder.hashCode ^
        Co1.hashCode ^
        Co2.hashCode ^
        Co3.hashCode;
  }
}
