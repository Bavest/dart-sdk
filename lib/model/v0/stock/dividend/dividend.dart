/// The [DividendData] data represent the dividend data of a company e.g.
/// date, recordDate, amount, declarationDate, adjustedAmount, payDate.
class DividendData {
  /// The date of the dividend.
  DateTime? date;

  /// The record date of the dividend.
  String? recordDate;

  /// The amount of the dividend.
  double? amount;

  /// The declaration date of the dividend.
  String? declarationDate;

  /// The adjusted amount of the dividend.
  double? adjustedAmount;

  /// The pay date of the dividend.
  String? payDate;

  DividendData(
      {required date,
      recordDate,
      amount,
      declarationDate,
      adjustedAmount,
      payDate});

  DividendData.fromJson(Map<String, dynamic> json) {
    date = DateTime.parse(json["date"]);
    recordDate = json['recordDate'];
    amount = json['amount']?.toDouble();
    declarationDate = json['declarationDate'];
    adjustedAmount = json['adjustedAmount']?.toDouble();
    payDate = json['payDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['recordDate'] = recordDate;
    data['amount'] = amount;
    data['declarationDate'] = declarationDate;
    data['adjustedAmount'] = adjustedAmount;
    data['payDate'] = payDate;
    return data;
  }
}

/// The [Dividends] data represent the dividends of a company.
class Dividends {
  Dividends({
    required data,
    required symbol,
  });

  List<DividendData>? data;
  String? symbol;

  Dividends.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DividendData>[];
      json['data'].forEach((v) {
        data!.add(DividendData.fromJson(v));
      });
    }
    symbol = json['symbol'];
  }
}
