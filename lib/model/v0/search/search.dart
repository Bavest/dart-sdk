/// The [SearchResult] data represent the search results. The [SearchResult] contain
/// a list of [Results]. The [Results] contain the symbol, company name,
/// isin, is etf, is actively trading, is adr, is fund, currency and market
/// capitalization.
class SearchResult {
  /// Search request status code.
  int? statusCode;

  /// Search request results.
  List<Results>? results;

  SearchResult({statusCode, results});

  SearchResult.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// The [Results] data represent the search results.
/// The [Results] contain the symbol, company name,
/// isin, is etf, is actively trading, is adr, is fund, currency and market
/// capitalization. By default the results are sorted by market capitalization
/// and country codes.
class Results {
  /// The symbol of the company.
  String? symbol;

  /// The company name.
  String? companyName;

  /// The isin of the company.
  String? isin;

  /// The etf of the company.
  bool? isEtf;

  /// The actively trading of the company.
  bool? isActivelyTrading;

  /// The adr of the company.
  bool? isAdr;

  /// The fund of the company.
  bool? isFund;

  /// The currency of the company.
  String? currency;

  /// The market capitalization of the company.
  double? marketCapitalization;

  Results(
      {symbol,
      companyName,
      isin,
      isEtf,
      isActivelyTrading,
      isAdr,
      isFund,
      currency,
      marketCapitalization});

  Results.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    companyName = json['companyName'];
    isin = json['isin'];
    isEtf = json['isEtf'];
    isActivelyTrading = json['isActivelyTrading'];
    isAdr = json['isAdr'];
    isFund = json['isFund'];
    currency = json['currency'];
    marketCapitalization = json['marketCapitalization']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbol'] = symbol;
    data['companyName'] = companyName;
    data['isin'] = isin;
    data['isEtf'] = isEtf;
    data['isActivelyTrading'] = isActivelyTrading;
    data['isAdr'] = isAdr;
    data['isFund'] = isFund;
    data['currency'] = currency;
    data['marketCapitalization'] = marketCapitalization;
    return data;
  }
}
