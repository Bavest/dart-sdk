/// The [EtfHoldings] data represent the holdings of an ETF e.g. for the ETF
/// SPY [SecurityIdentifier(symbol: 'SPY)].
class EtfHoldings {
  List<Holdings>? holdings;
  String? atDate;
  String? symbol;

  EtfHoldings({holdings, atDate, symbol});

  EtfHoldings.fromJson(Map<String, dynamic> json) {
    if (json['holdings'] != null) {
      holdings = <Holdings>[];
      json['holdings'].forEach((v) {
        holdings!.add(Holdings.fromJson(v));
      });
    }
    atDate = json['atDate'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (holdings != null) {
      data['holdings'] = holdings!.map((v) => v.toJson()).toList();
    }
    data['atDate'] = atDate;
    data['symbol'] = symbol;
    return data;
  }
}

class Holdings {
  String? symbol;
  String? cusip;
  String? name;
  int? share;
  double? percent;
  double? value;
  String? isin;

  Holdings({symbol, cusip, name, share, percent, value, isin});

  Holdings.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    cusip = json['cusip'];
    name = json['name'];
    share = json['share'];
    percent = json['percent']?.toDouble();
    value = json['value']?.toDouble();
    isin = json['isin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbol'] = symbol;
    data['cusip'] = cusip;
    data['name'] = name;
    data['share'] = share;
    data['percent'] = percent;
    data['value'] = value;
    data['isin'] = isin;
    return data;
  }
}
