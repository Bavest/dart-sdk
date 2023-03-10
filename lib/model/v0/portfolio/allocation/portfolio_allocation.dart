/// The [PortfolioAllocation] data represent the allocation of a portfolio.
class PortfolioAllocation {
  PortfolioAllocation({
    required this.symbol,
    required this.percentage,
  });

  /// The symbol of the security.
  String symbol;

  /// The percentage of the security in the portfolio.
  double percentage;

  factory PortfolioAllocation.fromJson(Map<String, dynamic> json) =>
      PortfolioAllocation(
        symbol: json["symbol"],
        percentage: json["percentage"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "percentage": percentage,
      };
}
