import 'dart:convert';

class ProductModel {
  String? Id;
  String? CodeId;
  String? Country;
  String? MainSec;
  String? MainCat;
  String? FabricType;
  String? Collection;
  String? ImageFront;
  String? ImageBack;
  String? RecTitleAr;
  String? RecTitleEn;
  String? RecDesc1Ar;
  String? RecDesc1En;
  String? RecDesc2Ar;
  String? RecDesc2En;
  String? Price1;
  String? Price2;
  String? CurrencyAr;
  String? CurrencyEn;
  String? RecColorAr;
  String? RecColorEn;
  String? RecSize;
  String? NewOffer;
  String? RecTop;
  String? UserId;
  String? Xdate;
  String? Xlike;
  String? Xunlike;
  String? Xview;
  String? user;
  String? app;
  String? site;
  String? vendor;
  String? Active;
  String? Size;
  String? ColorCode;
  ProductModel({
    this.Id,
    this.CodeId,
    this.Country,
    this.MainSec,
    this.MainCat,
    this.FabricType,
    this.Collection,
    this.ImageFront,
    this.ImageBack,
    this.RecTitleAr,
    this.RecTitleEn,
    this.RecDesc1Ar,
    this.RecDesc1En,
    this.RecDesc2Ar,
    this.RecDesc2En,
    this.Price1,
    this.Price2,
    this.CurrencyAr,
    this.CurrencyEn,
    this.RecColorAr,
    this.RecColorEn,
    this.RecSize,
    this.NewOffer,
    this.RecTop,
    this.UserId,
    this.Xdate,
    this.Xlike,
    this.Xunlike,
    this.Xview,
    this.user,
    this.app,
    this.site,
    this.vendor,
    this.Active,
    this.Size,
    this.ColorCode,
  });

  ProductModel copyWith({
    String? Id,
    String? CodeId,
    String? Country,
    String? MainSec,
    String? MainCat,
    String? FabricType,
    String? Collection,
    String? ImageFront,
    String? ImageBack,
    String? RecTitleAr,
    String? RecTitleEn,
    String? RecDesc1Ar,
    String? RecDesc1En,
    String? RecDesc2Ar,
    String? RecDesc2En,
    String? Price1,
    String? Price2,
    String? CurrencyAr,
    String? CurrencyEn,
    String? RecColorAr,
    String? RecColorEn,
    String? RecSize,
    String? NewOffer,
    String? RecTop,
    String? UserId,
    String? Xdate,
    String? Xlike,
    String? Xunlike,
    String? Xview,
    String? user,
    String? app,
    String? site,
    String? vendor,
    String? Active,
    String? Size,
    String? ColorCode,
  }) {
    return ProductModel(
      Id: Id ?? this.Id,
      CodeId: CodeId ?? this.CodeId,
      Country: Country ?? this.Country,
      MainSec: MainSec ?? this.MainSec,
      MainCat: MainCat ?? this.MainCat,
      FabricType: FabricType ?? this.FabricType,
      Collection: Collection ?? this.Collection,
      ImageFront: ImageFront ?? this.ImageFront,
      ImageBack: ImageBack ?? this.ImageBack,
      RecTitleAr: RecTitleAr ?? this.RecTitleAr,
      RecTitleEn: RecTitleEn ?? this.RecTitleEn,
      RecDesc1Ar: RecDesc1Ar ?? this.RecDesc1Ar,
      RecDesc1En: RecDesc1En ?? this.RecDesc1En,
      RecDesc2Ar: RecDesc2Ar ?? this.RecDesc2Ar,
      RecDesc2En: RecDesc2En ?? this.RecDesc2En,
      Price1: Price1 ?? this.Price1,
      Price2: Price2 ?? this.Price2,
      CurrencyAr: CurrencyAr ?? this.CurrencyAr,
      CurrencyEn: CurrencyEn ?? this.CurrencyEn,
      RecColorAr: RecColorAr ?? this.RecColorAr,
      RecColorEn: RecColorEn ?? this.RecColorEn,
      RecSize: RecSize ?? this.RecSize,
      NewOffer: NewOffer ?? this.NewOffer,
      RecTop: RecTop ?? this.RecTop,
      UserId: UserId ?? this.UserId,
      Xdate: Xdate ?? this.Xdate,
      Xlike: Xlike ?? this.Xlike,
      Xunlike: Xunlike ?? this.Xunlike,
      Xview: Xview ?? this.Xview,
      user: user ?? this.user,
      app: app ?? this.app,
      site: site ?? this.site,
      vendor: vendor ?? this.vendor,
      Active: Active ?? this.Active,
      Size: Size ?? this.Size,
      ColorCode: ColorCode ?? this.ColorCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': Id,
      'CodeId': CodeId,
      'Country': Country,
      'MainSec': MainSec,
      'MainCat': MainCat,
      'FabricType': FabricType,
      'Collection': Collection,
      'ImageFront': ImageFront,
      'ImageBack': ImageBack,
      'RecTitleAr': RecTitleAr,
      'RecTitleEn': RecTitleEn,
      'RecDesc1Ar': RecDesc1Ar,
      'RecDesc1En': RecDesc1En,
      'RecDesc2Ar': RecDesc2Ar,
      'RecDesc2En': RecDesc2En,
      'Price1': Price1,
      'Price2': Price2,
      'CurrencyAr': CurrencyAr,
      'CurrencyEn': CurrencyEn,
      'RecColorAr': RecColorAr,
      'RecColorEn': RecColorEn,
      'RecSize': RecSize,
      'NewOffer': NewOffer,
      'RecTop': RecTop,
      'UserId': UserId,
      'Xdate': Xdate,
      'Xlike': Xlike,
      'Xunlike': Xunlike,
      'Xview': Xview,
      'user': user,
      'app': app,
      'site': site,
      'vendor': vendor,
      'Active': Active,
      'Size': Size,
      'ColorCode': ColorCode,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      Id: map['Id'] != null ? map['Id'] : null,
      CodeId: map['CodeId'] != null ? map['CodeId'] : null,
      Country: map['Country'] != null ? map['Country'] : null,
      MainSec: map['MainSec'] != null ? map['MainSec'] : null,
      MainCat: map['MainCat'] != null ? map['MainCat'] : null,
      FabricType: map['FabricType'] != null ? map['FabricType'] : null,
      Collection: map['Collection'] != null ? map['Collection'] : null,
      ImageFront: map['ImageFront'] != null ? map['ImageFront'] : null,
      ImageBack: map['ImageBack'] != null ? map['ImageBack'] : null,
      RecTitleAr: map['RecTitleAr'] != null ? map['RecTitleAr'] : null,
      RecTitleEn: map['RecTitleEn'] != null ? map['RecTitleEn'] : null,
      RecDesc1Ar: map['RecDesc1Ar'] != null ? map['RecDesc1Ar'] : null,
      RecDesc1En: map['RecDesc1En'] != null ? map['RecDesc1En'] : null,
      RecDesc2Ar: map['RecDesc2Ar'] != null ? map['RecDesc2Ar'] : null,
      RecDesc2En: map['RecDesc2En'] != null ? map['RecDesc2En'] : null,
      Price1: map['Price1'] != null ? map['Price1'] : null,
      Price2: map['Price2'] != null ? map['Price2'] : null,
      CurrencyAr: map['CurrencyAr'] != null ? map['CurrencyAr'] : null,
      CurrencyEn: map['CurrencyEn'] != null ? map['CurrencyEn'] : null,
      RecColorAr: map['RecColorAr'] != null ? map['RecColorAr'] : null,
      RecColorEn: map['RecColorEn'] != null ? map['RecColorEn'] : null,
      RecSize: map['RecSize'] != null ? map['RecSize'] : null,
      NewOffer: map['NewOffer'] != null ? map['NewOffer'] : null,
      RecTop: map['RecTop'] != null ? map['RecTop'] : null,
      UserId: map['UserId'] != null ? map['UserId'] : null,
      Xdate: map['Xdate'] != null ? map['Xdate'] : null,
      Xlike: map['Xlike'] != null ? map['Xlike'] : null,
      Xunlike: map['Xunlike'] != null ? map['Xunlike'] : null,
      Xview: map['Xview'] != null ? map['Xview'] : null,
      user: map['user'] != null ? map['user'] : null,
      app: map['app'] != null ? map['app'] : null,
      site: map['site'] != null ? map['site'] : null,
      vendor: map['vendor'] != null ? map['vendor'] : null,
      Active: map['Active'] != null ? map['Active'] : null,
      Size: map['Size'] != null ? map['Size'] : null,
      ColorCode: map['ColorCode'] != null ? map['ColorCode'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(Id: $Id, CodeId: $CodeId, Country: $Country, MainSec: $MainSec, MainCat: $MainCat, FabricType: $FabricType, Collection: $Collection, ImageFront: $ImageFront, ImageBack: $ImageBack, RecTitleAr: $RecTitleAr, RecTitleEn: $RecTitleEn, RecDesc1Ar: $RecDesc1Ar, RecDesc1En: $RecDesc1En, RecDesc2Ar: $RecDesc2Ar, RecDesc2En: $RecDesc2En, Price1: $Price1, Price2: $Price2, CurrencyAr: $CurrencyAr, CurrencyEn: $CurrencyEn, RecColorAr: $RecColorAr, RecColorEn: $RecColorEn, RecSize: $RecSize, NewOffer: $NewOffer, RecTop: $RecTop, UserId: $UserId, Xdate: $Xdate, Xlike: $Xlike, Xunlike: $Xunlike, Xview: $Xview, user: $user, app: $app, site: $site, vendor: $vendor, Active: $Active, Size: $Size, ColorCode: $ColorCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.Id == Id &&
        other.CodeId == CodeId &&
        other.Country == Country &&
        other.MainSec == MainSec &&
        other.MainCat == MainCat &&
        other.FabricType == FabricType &&
        other.Collection == Collection &&
        other.ImageFront == ImageFront &&
        other.ImageBack == ImageBack &&
        other.RecTitleAr == RecTitleAr &&
        other.RecTitleEn == RecTitleEn &&
        other.RecDesc1Ar == RecDesc1Ar &&
        other.RecDesc1En == RecDesc1En &&
        other.RecDesc2Ar == RecDesc2Ar &&
        other.RecDesc2En == RecDesc2En &&
        other.Price1 == Price1 &&
        other.Price2 == Price2 &&
        other.CurrencyAr == CurrencyAr &&
        other.CurrencyEn == CurrencyEn &&
        other.RecColorAr == RecColorAr &&
        other.RecColorEn == RecColorEn &&
        other.RecSize == RecSize &&
        other.NewOffer == NewOffer &&
        other.RecTop == RecTop &&
        other.UserId == UserId &&
        other.Xdate == Xdate &&
        other.Xlike == Xlike &&
        other.Xunlike == Xunlike &&
        other.Xview == Xview &&
        other.user == user &&
        other.app == app &&
        other.site == site &&
        other.vendor == vendor &&
        other.Active == Active &&
        other.Size == Size &&
        other.ColorCode == ColorCode;
  }

  @override
  int get hashCode {
    return Id.hashCode ^
        CodeId.hashCode ^
        Country.hashCode ^
        MainSec.hashCode ^
        MainCat.hashCode ^
        FabricType.hashCode ^
        Collection.hashCode ^
        ImageFront.hashCode ^
        ImageBack.hashCode ^
        RecTitleAr.hashCode ^
        RecTitleEn.hashCode ^
        RecDesc1Ar.hashCode ^
        RecDesc1En.hashCode ^
        RecDesc2Ar.hashCode ^
        RecDesc2En.hashCode ^
        Price1.hashCode ^
        Price2.hashCode ^
        CurrencyAr.hashCode ^
        CurrencyEn.hashCode ^
        RecColorAr.hashCode ^
        RecColorEn.hashCode ^
        RecSize.hashCode ^
        NewOffer.hashCode ^
        RecTop.hashCode ^
        UserId.hashCode ^
        Xdate.hashCode ^
        Xlike.hashCode ^
        Xunlike.hashCode ^
        Xview.hashCode ^
        user.hashCode ^
        app.hashCode ^
        site.hashCode ^
        vendor.hashCode ^
        Active.hashCode ^
        Size.hashCode ^
        ColorCode.hashCode;
  }
}
