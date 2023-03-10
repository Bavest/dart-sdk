import 'package:bavest/model/v0/portfolio/trade_direction.dart';

/// Portfolio tracks all transactions of a user.
class Portfolio {
  /// List of transactions
  final List<Transactions> transactions;

  Portfolio({required this.transactions});

  factory Portfolio.fromJson(Map<String, dynamic> json) => Portfolio(
        transactions: List<Transactions>.from(
            json["portfolio_items"].map((x) => Transactions.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "portfolio_items":
            List<dynamic>.from(transactions.map((x) => x.toJson())),
      };
}

/// Transactions represent a single transaction of a user e.g. buy or sell.
///
/// The [symbol] parameter is the security symbol.
/// The [amount] parameter is used to determine the trade direction.
/// The [buyDate] parameter is the buy date Unix timestamp.
/// The [tradeDirection] parameter is the trade direction e.g. buy or sell.
class Transactions {
  /// Security symbol
  final String symbol;

  /// Amount of shares
  final double amount;

  /// Buy date Unix timestamp
  final int? buyDate;

  /// Trade direction
  final TradeDirection tradeDirection;

  /// Constructor to create a new Transactions object.
  Transactions(
      {required this.symbol,
      required this.amount,
      required this.buyDate,
      required this.tradeDirection});

  /// Factory method to create a new Transactions object without
  /// specifying the trade direction.
  ///
  /// The [symbol] parameter is the security symbol.
  /// The [amount] parameter is used to determine the trade direction.
  /// The [buyDate] parameter is the buy date Unix timestamp.
  factory Transactions.create(
          {required String symbol,
          required double amount,
          required int buyDate}) =>
      Transactions(
          symbol: symbol,
          amount: amount,
          buyDate: buyDate,
          tradeDirection:
              amount > 0 ? TradeDirection.buy : TradeDirection.sell);

  factory Transactions.fromJson(Map<String, dynamic> json) => Transactions(
        symbol: json["symbol"],
        amount: json["amount"].toDouble(),
        buyDate: json["buy_date"]?.toInt(),
        tradeDirection: json["amount"].toInt() > 0
            ? TradeDirection.buy
            : TradeDirection.sell,
      );

  Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "amount": amount,
        "buy_date": buyDate,
      };
}
