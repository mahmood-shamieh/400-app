import 'dart:convert';

class SubtitleModel {
  String? Id;
  String? Pid;
  String? RecTitleAr;
  String? RecTitleEn;
  String? UserId;
  String? Xdate;
  String? Xorder;
  SubtitleModel({
    this.Id,
    this.Pid,
    this.RecTitleAr,
    this.RecTitleEn,
    this.UserId,
    this.Xdate,
    this.Xorder,
  });

  SubtitleModel copyWith({
    String? Id,
    String? Pid,
    String? RecTitleAr,
    String? RecTitleEn,
    String? UserId,
    String? Xdate,
    String? Xorder,
  }) {
    return SubtitleModel(
      Id: Id ?? this.Id,
      Pid: Pid ?? this.Pid,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'Pid': Pid,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
    };
  }

  factory SubtitleModel.fromMap(Map<String, dynamic> map) {
    return SubtitleModel(
      Id: map['Id'] != null ? map['Id'] : null,
      Pid: map['Pid'] != null ? map['Pid'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubtitleModel.fromJson(String source) =>
      SubtitleModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SubtitleModel(Id: $Id, Pid: $Pid, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SubtitleModel &&
        other.Id == Id &&
        other.Pid == Pid &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xorder == Xorder;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        Pid.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xorder.hashCode;
  }
}
