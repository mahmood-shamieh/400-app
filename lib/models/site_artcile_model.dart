import 'dart:convert';

class SiteArticelModel {
  String? Id;
  String? Country;
  String? CatId;
  String? ProId;
  String? RecThumb;
  String? DateTitle;
  String? RecTitleAr;
  String? RecTitleEn;
  String? JobLocationAr;
  String? JobLocationEn;
  String? JobSalary;
  String? RecDescAr;
  String? RecDescEn;
  String? Xphone1;
  String? Xphone2;
  String? Xmobile;
  String? Xfax;
  String? Xlink;
  String? onPlayStore;
  String? onAppStore;
  String? onDirect;
  String? Xemail;
  String? Xmap1;
  String? Xmap2;
  String? Xfile;
  String? Xtube;
  String? Xtype;
  String? UserId;
  String? Xdate;
  String? Xorder;
  SiteArticelModel({
    this.Id,
    this.Country,
    this.CatId,
    this.ProId,
    this.RecThumb,
    this.DateTitle,
    this.RecTitleAr,
    this.RecTitleEn,
    this.JobLocationAr,
    this.JobLocationEn,
    this.JobSalary,
    this.RecDescAr,
    this.RecDescEn,
    this.Xphone1,
    this.Xphone2,
    this.Xmobile,
    this.Xfax,
    this.Xlink,
    this.onPlayStore,
    this.onAppStore,
    this.onDirect,
    this.Xemail,
    this.Xmap1,
    this.Xmap2,
    this.Xfile,
    this.Xtube,
    this.Xtype,
    this.UserId,
    this.Xdate,
    this.Xorder,
  });

  SiteArticelModel copyWith({
    String? Id,
    String? Country,
    String? CatId,
    String? ProId,
    String? RecThumb,
    String? DateTitle,
    String? RecTitleAr,
    String? RecTitleEn,
    String? JobLocationAr,
    String? JobLocationEn,
    String? JobSalary,
    String? RecDescAr,
    String? RecDescEn,
    String? Xphone1,
    String? Xphone2,
    String? Xmobile,
    String? Xfax,
    String? Xlink,
    String? onPlayStore,
    String? onAppStore,
    String? onDirect,
    String? Xemail,
    String? Xmap1,
    String? Xmap2,
    String? Xfile,
    String? Xtube,
    String? Xtype,
    String? UserId,
    String? Xdate,
    String? Xorder,
  }) {
    return SiteArticelModel(
      Id: Id ?? this.Id,
      Country: Country ?? this.Country,
      CatId: CatId ?? this.CatId,
      ProId: ProId ?? this.ProId,
      RecThumb: RecThumb ?? this.RecThumb,
      DateTitle: DateTitle ?? this.DateTitle,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      JobLocationAr: JobLocationAr ?? this.JobLocationAr,
      JobLocationEn: JobLocationEn ?? this.JobLocationEn,
      JobSalary: JobSalary ?? this.JobSalary,
      RecDescAr: RecDescAr ?? this.RecDescAr,
      RecDescEn: RecDescEn ?? this.RecDescEn,
      Xphone1: Xphone1 ?? this.Xphone1,
      Xphone2: Xphone2 ?? this.Xphone2,
      Xmobile: Xmobile ?? this.Xmobile,
      Xfax: Xfax ?? this.Xfax,
      Xlink: Xlink ?? this.Xlink,
      onPlayStore: onPlayStore ?? this.onPlayStore,
      onAppStore: onAppStore ?? this.onAppStore,
      onDirect: onDirect ?? this.onDirect,
      Xemail: Xemail ?? this.Xemail,
      Xmap1: Xmap1 ?? this.Xmap1,
      Xmap2: Xmap2 ?? this.Xmap2,
      Xfile: Xfile ?? this.Xfile,
      Xtube: Xtube ?? this.Xtube,
      Xtype: Xtype ?? this.Xtype,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xorder: Xorder ?? this.Xorder,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'Country': Country,
      'CatId': CatId,
      'ProId': ProId,
      'RecThumb': RecThumb,
      'DateTitle': DateTitle,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'JobLocationAr': JobLocationAr,
      'JobLocationEn': JobLocationEn,
      'JobSalary': JobSalary,
      'RecDescAr': RecDescAr,
      'RecDescEn': RecDescEn,
      'Xphone1': Xphone1,
      'Xphone2': Xphone2,
      'Xmobile': Xmobile,
      'Xfax': Xfax,
      'Xlink': Xlink,
      'onPlayStore': onPlayStore,
      'onAppStore': onAppStore,
      'onDirect': onDirect,
      'Xemail': Xemail,
      'Xmap1': Xmap1,
      'Xmap2': Xmap2,
      'Xfile': Xfile,
      'Xtube': Xtube,
      'Xtype': Xtype,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xorder': Xorder,
    };
  }

  factory SiteArticelModel.fromMap(Map<String, dynamic> map) {
    return SiteArticelModel(
      Id: map['Id'] != null ? map['Id'] : null,
      Country: map['Country'] != null ? map['Country'] : null,
      CatId: map['CatId'] != null ? map['CatId'] : null,
      ProId: map['ProId'] != null ? map['ProId'] : null,
      RecThumb: map['RecThumb'] != null ? map['RecThumb'] : null,
      DateTitle: map['DateTitle'] != null ? map['DateTitle'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      JobLocationAr: map['JobLocationAr'] != null ? map['JobLocationAr'] : null,
      JobLocationEn: map['JobLocationEn'] != null ? map['JobLocationEn'] : null,
      JobSalary: map['JobSalary'] != null ? map['JobSalary'] : null,
      RecDescAr: map['RecDescAr'] != null ? map['RecDescAr'] : null,
      RecDescEn: map['RecDescEn'] != null ? map['RecDescEn'] : null,
      Xphone1: map['Xphone1'] != null ? map['Xphone1'] : null,
      Xphone2: map['Xphone2'] != null ? map['Xphone2'] : null,
      Xmobile: map['Xmobile'] != null ? map['Xmobile'] : null,
      Xfax: map['Xfax'] != null ? map['Xfax'] : null,
      Xlink: map['Xlink'] != null ? map['Xlink'] : null,
      onPlayStore: map['onPlayStore'] != null ? map['onPlayStore'] : null,
      onAppStore: map['onAppStore'] != null ? map['onAppStore'] : null,
      onDirect: map['onDirect'] != null ? map['onDirect'] : null,
      Xemail: map['Xemail'] != null ? map['Xemail'] : null,
      Xmap1: map['Xmap1'] != null ? map['Xmap1'] : null,
      Xmap2: map['Xmap2'] != null ? map['Xmap2'] : null,
      Xfile: map['Xfile'] != null ? map['Xfile'] : null,
      Xtube: map['Xtube'] != null ? map['Xtube'] : null,
      Xtype: map['Xtype'] != null ? map['Xtype'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xorder: map['Xorder'] != null ? map['Xorder'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SiteArticelModel.fromJson(String source) =>
      SiteArticelModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SiteArticelModel(Id: $Id, Country: $Country, CatId: $CatId, ProId: $ProId, RecThumb: $RecThumb, DateTitle: $DateTitle, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, JobLocationAr: $JobLocationAr, JobLocationEn: $JobLocationEn, JobSalary: $JobSalary, RecDescAr: $RecDescAr, RecDescEn: $RecDescEn, Xphone1: $Xphone1, Xphone2: $Xphone2, Xmobile: $Xmobile, Xfax: $Xfax, Xlink: $Xlink, onPlayStore: $onPlayStore, onAppStore: $onAppStore, onDirect: $onDirect, Xemail: $Xemail, Xmap1: $Xmap1, Xmap2: $Xmap2, Xfile: $Xfile, Xtube: $Xtube, Xtype: $Xtype, UserId: $UserId, Xdate: $Xdate, Xorder: $Xorder)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SiteArticelModel &&
        other.Id == Id &&
        other.Country == Country &&
        other.CatId == CatId &&
        other.ProId == ProId &&
        other.RecThumb == RecThumb &&
        other.DateTitle == DateTitle &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.JobLocationAr == JobLocationAr &&
        other.JobLocationEn == JobLocationEn &&
        other.JobSalary == JobSalary &&
        other.RecDescAr == RecDescAr &&
        other.RecDescEn == RecDescEn &&
        other.Xphone1 == Xphone1 &&
        other.Xphone2 == Xphone2 &&
        other.Xmobile == Xmobile &&
        other.Xfax == Xfax &&
        other.Xlink == Xlink &&
        other.onPlayStore == onPlayStore &&
        other.onAppStore == onAppStore &&
        other.onDirect == onDirect &&
        other.Xemail == Xemail &&
        other.Xmap1 == Xmap1 &&
        other.Xmap2 == Xmap2 &&
        other.Xfile == Xfile &&
        other.Xtube == Xtube &&
        other.Xtype == Xtype &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xorder == Xorder;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        Country.hashCode ^
        CatId.hashCode ^
        ProId.hashCode ^
        RecThumb.hashCode ^
        DateTitle.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        JobLocationAr.hashCode ^
        JobLocationEn.hashCode ^
        JobSalary.hashCode ^
        RecDescAr.hashCode ^
        RecDescEn.hashCode ^
        Xphone1.hashCode ^
        Xphone2.hashCode ^
        Xmobile.hashCode ^
        Xfax.hashCode ^
        Xlink.hashCode ^
        onPlayStore.hashCode ^
        onAppStore.hashCode ^
        onDirect.hashCode ^
        Xemail.hashCode ^
        Xmap1.hashCode ^
        Xmap2.hashCode ^
        Xfile.hashCode ^
        Xtube.hashCode ^
        Xtype.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xorder.hashCode;
  }
}
