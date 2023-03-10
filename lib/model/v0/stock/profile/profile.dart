/// The [CompanyProfile] class is used to get the company profile.
/// It contains the currency, the zip code, the IPO date, the sector, the industry,
/// the total number of employees, the market capitalization, the country, the beta,
/// the changes, the state, the city, the average volume, the exchange short name,
/// the cusip, the is fund, the default image, the is ETF, the phone, the website,
/// the is actively trading, the symbol, the company name, the dcf, the last div,
/// the isin, the range, the is ADR, the dcf diff, the exchange and the description.
class CompanyProfile {
  CompanyProfile({
    required this.currency,
    required this.zip,
    required this.ipo,
    required this.sector,
    required this.industry,
    required this.employeeTotal,
    required this.marketCapitalization,
    required this.country,
    required this.beta,
    required this.changes,
    required this.state,
    required this.city,
    required this.volAvg,
    required this.exchangeShortName,
    required this.cusip,
    required this.isFund,
    required this.defaultImage,
    required this.isEtf,
    required this.phone,
    required this.website,
    required this.isActivelyTrading,
    required this.symbol,
    required this.companyName,
    required this.dcf,
    required this.lastDiv,
    required this.isin,
    required this.range,
    required this.isAdr,
    required this.dcfDiff,
    required this.exchange,
    required this.description,
    required this.price,
  });

  String? currency;
  String? zip;
  DateTime ipo;
  String sector;
  String industry;
  int? employeeTotal;
  double marketCapitalization;
  String? country;
  double beta;
  double changes;
  String? state;
  String? city;
  double? volAvg;
  String? exchangeShortName;
  String? cusip;
  bool? isFund;
  bool? defaultImage;
  bool? isEtf;
  String? phone;
  String? website;
  bool? isActivelyTrading;
  String? symbol;
  String? companyName;
  double? dcf;
  double? lastDiv;
  String? isin;
  String? range;
  bool? isAdr;
  double? dcfDiff;
  String? exchange;
  String? description;
  double? price;

  factory CompanyProfile.fromJson(Map<String, dynamic> json) => CompanyProfile(
        currency: json["currency"],
        zip: json["zip"],
        ipo: json["ipo"] == null
            ? DateTime.parse("1970-01-01")
            : DateTime.parse(json["ipo"]),
        sector: json["sector"] ?? "N/A",
        industry: json["industry"] ?? "N/A",
        employeeTotal: json["employeeTotal"]?.toInt() ?? 0,
        marketCapitalization:
            (json["marketCapitalization"]?.toDouble() ?? 0) / (1000 * 1000),
        country: json["country"],
        beta: json["beta"].toDouble(),
        changes: json["changes"].toDouble(),
        state: json["state"],
        city: json["city"],
        volAvg: json["volAvg"].toDouble(),
        exchangeShortName: json["exchangeShortName"],
        cusip: json["cusip"],
        isFund: json["isFund"],
        defaultImage: json["defaultImage"],
        isEtf: json["isEtf"],
        phone: json["phone"],
        website: json["website"],
        isActivelyTrading: json["isActivelyTrading"],
        symbol: json["symbol"],
        companyName: json["companyName"],
        dcf: json["dcf"]?.toDouble(),
        lastDiv: json["lastDiv"]?.toDouble(),
        isin: json["isin"],
        range: json["range"],
        isAdr: json["isAdr"],
        dcfDiff: json["dcfDiff"]?.toDouble(),
        exchange: json["exchange"],
        description: json["description"],
        price: json["price"]?.toDouble(),
      );
}
