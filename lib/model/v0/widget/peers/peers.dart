/// The [PeersWidget] data represent the peers of a company.
class PeersWidget {
  PeersWidget({
    required this.symbol,
    required this.name,
    required this.category,
    required this.close,
    required this.priceChange,
  });

  /// The symbol of the company.
  String symbol;

  /// The name of the company.
  String name;

  /// The category of the company.
  String category;

  /// The close of the company.
  double close;

  /// The price change of the company.
  double priceChange;

  factory PeersWidget.fromJson(Map<String, dynamic> json) => PeersWidget(
        symbol: json["symbol"],
        name: json["name"],
        category: json["category"],
        close: json["close"].toDouble(),
        priceChange: json["priceChange"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "name": name,
        "category": category,
        "close": close,
        "priceChange": priceChange,
      };
}
