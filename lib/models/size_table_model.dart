import 'dart:convert';

class SizeTableModel {
  String? Id;
  String? Sid;
  String? Pid;
  String? RecTitle;
  String? UserId;
  String? Xdate;
  String? Xorder;
  String? Size;
  String? Chest;
  String? Shoulder;
  String? Middle;
  String? Height;
  String? Quantum;
  String? Collar;
  String? MiddleMan;
  String? Loin;
  String? ThighWidth;
  String? FootWidth;
  String? FootLength;
  SizeTableModel({
    this.Id,
    this.Sid,
    this.Pid,
    this.RecTitle,
    this.UserId,
    this.Xdate,
    this.Xorder,
    this.Size,
    this.Chest,
    this.Shoulder,
    this.Middle,
    this.Height,
    this.Quantum,
    this.Collar,
    this.MiddleMan,
    this.Loin,
    this.ThighWidth,
    this.FootWidth,
    this.FootLength,
  });

  SizeTableModel copyWith({
    String? Id,
    String? Sid,
    String? Pid,
    String? RecTitle,
    String? UserId,
    String? Xdate,
    String? Xorder,
    String? Size,
    String? Chest,
    String? Shoulder,
    String? Middle,
    String? Height,
    String? Quantum,
    String? Collar,
    String? MiddleMan,
    String? Loin,
    String? ThighWidth,
    String? FootWidth,
    String? FootLength,
  }) {
    return SizeTableModel(
      Id: Id ?? this.Id,
      Sid: Sid ?? this.Sid,
      Pid: Pid ?? this.Pid,
      RecTitle: RecTitle ?? this.RecTitle,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
      Size: Size ?? this.Size,
      Chest: Chest ?? this.Chest,
      Shoulder: Shoulder ?? this.Shoulder,
      Middle: Middle ?? this.Middle,
      Height: Height ?? this.Height,
      Quantum: Quantum ?? this.Quantum,
      Collar: Collar ?? this.Collar,
      MiddleMan: MiddleMan ?? this.MiddleMan,
      Loin: Loin ?? this.Loin,
      ThighWidth: ThighWidth ?? this.ThighWidth,
      FootWidth: FootWidth ?? this.FootWidth,
      FootLength: FootLength ?? this.FootLength,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'Sid': Sid,
      'Pid': Pid,
      'RecTitle': RecTitle,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
      'Size': Size,
      'Chest': Chest,
      'Shoulder': Shoulder,
      'Middle': Middle,
      'Height': Height,
      'Quantum': Quantum,
      'Collar': Collar,
      'MiddleMan': MiddleMan,
      'Loin': Loin,
      'ThighWidth': ThighWidth,
      'FootWidth': FootWidth,
      'FootLength': FootLength,
    };
  }

  factory SizeTableModel.fromMap(Map<String, dynamic> map) {
    return SizeTableModel(
      Id: map['Id'] != null ? map['Id'] : null,
      Sid: map['Sid'] != null ? map['Sid'] : null,
      Pid: map['Pid'] != null ? map['Pid'] : null,
      RecTitle: map['RecTitle'] != null ? map['RecTitle'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
      Size: map['Size'] != null ? map['Size'] : null,
      Chest: map['Chest'] != null ? map['Chest'] : null,
      Shoulder: map['Shoulder'] != null ? map['Shoulder'] : null,
      Middle: map['Middle'] != null ? map['Middle'] : null,
      Height: map['Height'] != null ? map['Height'] : null,
      Quantum: map['Quantum'] != null ? map['Quantum'] : null,
      Collar: map['Collar'] != null ? map['Collar'] : null,
      MiddleMan: map['MiddleMan'] != null ? map['MiddleMan'] : null,
      Loin: map['Loin'] != null ? map['Loin'] : null,
      ThighWidth: map['ThighWidth'] != null ? map['ThighWidth'] : null,
      FootWidth: map['FootWidth'] != null ? map['FootWidth'] : null,
      FootLength: map['FootLength'] != null ? map['FootLength'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SizeTableModel.fromJson(String source) =>
      SizeTableModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SizeTableModel(Id: $Id, Sid: $Sid, Pid: $Pid, RecTitle: $RecTitle, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder, Size: $Size, Chest: $Chest, Shoulder: $Shoulder, Middle: $Middle, Height: $Height, Quantum: $Quantum, Collar: $Collar, MiddleMan: $MiddleMan, Loin: $Loin, ThighWidth: $ThighWidth, FootWidth: $FootWidth, FootLength: $FootLength)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SizeTableModel &&
        other.Id == Id &&
        other.Sid == Sid &&
        other.Pid == Pid &&
        other.RecTitle == RecTitle &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xorder == Xorder &&
        other.Size == Size &&
        other.Chest == Chest &&
        other.Shoulder == Shoulder &&
        other.Middle == Middle &&
        other.Height == Height &&
        other.Quantum == Quantum &&
        other.Collar == Collar &&
        other.MiddleMan == MiddleMan &&
        other.Loin == Loin &&
        other.ThighWidth == ThighWidth &&
        other.FootWidth == FootWidth &&
        other.FootLength == FootLength;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        Sid.hashCode ^
        Pid.hashCode ^
        RecTitle.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xorder.hashCode ^
        Size.hashCode ^
        Chest.hashCode ^
        Shoulder.hashCode ^
        Middle.hashCode ^
        Height.hashCode ^
        Quantum.hashCode ^
        Collar.hashCode ^
        MiddleMan.hashCode ^
        Loin.hashCode ^
        ThighWidth.hashCode ^
        FootWidth.hashCode ^
        FootLength.hashCode;
  }
}
