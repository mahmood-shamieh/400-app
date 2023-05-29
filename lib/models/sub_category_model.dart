import 'dart:convert';

class SubCategoryModel {
  String? Id;
  String? Pid;
  String? Subtitle;
  String? RecTitleAr;
  String? RecTitleEn;
  String? EgyptTitleAr;
  String? EgyptTitleEn;
  String? UserId;
  String? Xdate;
  String? Xorder;
  SubCategoryModel({
    this.Id,
    this.Pid,
    this.Subtitle,
    this.RecTitleAr,
    this.RecTitleEn,
    this.EgyptTitleAr,
    this.EgyptTitleEn,
    this.UserId,
    this.Xdate,
    this.Xorder,
  });

  SubCategoryModel copyWith({
    String? Id,
    String? Pid,
    String? Subtitle,
    String? RecTitleAr,
    String? RecTitleEn,
    String? EgyptTitleAr,
    String? EgyptTitleEn,
    String? UserId,
    String? Xdate,
    String? Xorder,
  }) {
    return SubCategoryModel(
      Id: Id ?? this.Id,
      Pid: Pid ?? this.Pid,
      Subtitle: Subtitle ?? this.Subtitle,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      EgyptTitleAr: EgyptTitleAr ?? this.EgyptTitleAr,
      EgyptTitleEn: EgyptTitleEn ?? this.EgyptTitleEn,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'Pid': Pid,
      'Subtitle': Subtitle,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'EgyptTitleAr': EgyptTitleAr,
      'EgyptTitleEn': EgyptTitleEn,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
    };
  }

  factory SubCategoryModel.fromMap(Map<String, dynamic> map) {
    return SubCategoryModel(
      Id: map['Id'] != null ? map['Id'] : null,
      Pid: map['Pid'] != null ? map['Pid'] : null,
      Subtitle: map['Subtitle'] != null ? map['Subtitle'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      EgyptTitleAr: map['EgyptTitleAr'] != null ? map['EgyptTitleAr'] : null,
      EgyptTitleEn: map['EgyptTitleEn'] != null ? map['EgyptTitleEn'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubCategoryModel.fromJson(String source) =>
      SubCategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SubCategoryModel(Id: $Id, Pid: $Pid, Subtitle: $Subtitle, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, EgyptTitleAr: $EgyptTitleAr, EgyptTitleEn: $EgyptTitleEn, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SubCategoryModel &&
        other.Id == Id &&
        other.Pid == Pid &&
        other.Subtitle == Subtitle &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.EgyptTitleAr == EgyptTitleAr &&
        other.EgyptTitleEn == EgyptTitleEn &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xorder == Xorder;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        Pid.hashCode ^
        Subtitle.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        EgyptTitleAr.hashCode ^
        EgyptTitleEn.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xorder.hashCode;
  }
}
