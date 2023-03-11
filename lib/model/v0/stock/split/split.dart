/// The [Split] data represent the split of a company.
class Splits {
  /// The [Split] data represent the split of a company.
  List<Split>? split;

  /// The [symbol] data represent the symbol of a company.
  String? symbol;

  Splits({this.split, this.symbol});

  Splits.fromJson(Map<String, dynamic> json) {
    if (json['split'] != null) {
      split = <Split>[];
      json['split'].forEach((v) {
        split!.add(Split.fromJson(v));
      });
    }
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (split != null) {
      data['split'] = split!.map((v) => v.toJson()).toList();
    }
    data['symbol'] = symbol;
    return data;
  }
}

class Split {
  /// The [date] data represent the date of a split.
  String? date;

  /// The [symbol] data represent the symbol of a company.
  String? symbol;

  /// The [fromFactor] data represent the from factor of a split.
  int? fromFactor;

  /// The [toFactor] data represent the to factor of a split.
  int? toFactor;

  Split({this.date, this.symbol, this.fromFactor, this.toFactor});

  Split.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    symbol = json['symbol'];
    fromFactor = json['fromFactor'];
    toFactor = json['toFactor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['symbol'] = symbol;
    data['fromFactor'] = fromFactor;
    data['toFactor'] = toFactor;
    return data;
  }
}
