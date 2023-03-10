/// The [IpoCalendar] data represent the IPO calendar of the company.
class IpoCalendar {
  IpoCalendar(
      {required this.symbol,
      required this.price,
      required this.numberOfShares,
      required this.totalSharesValue,
      required this.name,
      required this.exchange,
      required this.actions,
      required this.date});

  /// The symbol of the company.
  String? symbol;

  /// The price of the company.
  String? price;

  /// The number of shares of the company.
  int? numberOfShares;

  /// The total shares value of the company.
  double? totalSharesValue;

  /// The name of the company.
  String? name;

  /// The exchange of the company.
  String? exchange;

  /// The actions of the company.
  String? actions;

  /// The date of the company.
  DateTime? date;

  factory IpoCalendar.fromJson(Map<String, dynamic> json) => IpoCalendar(
        symbol: json["symbol"],
        price: json["price"],
        numberOfShares: json["numberOfShares"],
        totalSharesValue: json["totalSharesValue"]?.toDouble(),
        name: json["name"],
        exchange: json["exchange"],
        actions: json["actions"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );
}

class Ipo {
  final List<IpoCalendar>? ipoCalendar;

  Ipo({this.ipoCalendar});

  static Ipo fromJson(Map<String, dynamic> json) => Ipo(
        ipoCalendar: (json['ipoCalendar'] as List<dynamic>?)
            ?.map(
              (e) => IpoCalendar.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );
}
