/// The [EtfProfile] data represent the profile of an ETF e.g. for the ETF
/// SPY [SecurityIdentifier(symbol: 'SPY)].
class EtfProfile {
  Profile? profile;
  String? symbol;

  EtfProfile({profile, symbol});

  EtfProfile.fromJson(Map<String, dynamic> json) {
    profile =
        json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (profile != null) {
      data['profile'] = profile!.toJson();
    }
    data['symbol'] = symbol;
    return data;
  }
}

class Profile {
  String? assetClass;
  int? aum;
  int? avgVolume;
  String? cusip;
  String? description;
  String? domicile;
  String? etfCompany;
  double? expenseRatio;
  String? inceptionDate;
  String? isin;
  String? name;
  double? nav;
  String? navCurrency;
  String? website;
  int? holdingsCount;

  Profile(
      {assetClass,
      aum,
      avgVolume,
      cusip,
      description,
      domicile,
      etfCompany,
      expenseRatio,
      inceptionDate,
      isin,
      name,
      nav,
      navCurrency,
      website,
      holdingsCount});

  Profile.fromJson(Map<String, dynamic> json) {
    assetClass = json['assetClass'];
    aum = json['aum'];
    avgVolume = json['avgVolume'];
    cusip = json['cusip'];
    description = json['description'];
    domicile = json['domicile'];
    etfCompany = json['etfCompany'];
    expenseRatio = json['expenseRatio'];
    inceptionDate = json['inceptionDate'];
    isin = json['isin'];
    name = json['name'];
    nav = json['nav'];
    navCurrency = json['navCurrency'];
    website = json['website'];
    holdingsCount = json['holdingsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['assetClass'] = assetClass;
    data['aum'] = aum;
    data['avgVolume'] = avgVolume;
    data['cusip'] = cusip;
    data['description'] = description;
    data['domicile'] = domicile;
    data['etfCompany'] = etfCompany;
    data['expenseRatio'] = expenseRatio;
    data['inceptionDate'] = inceptionDate;
    data['isin'] = isin;
    data['name'] = name;
    data['nav'] = nav;
    data['navCurrency'] = navCurrency;
    data['website'] = website;
    data['holdingsCount'] = holdingsCount;
    return data;
  }
}
