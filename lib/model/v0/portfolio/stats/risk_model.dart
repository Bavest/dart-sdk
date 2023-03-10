/// The [PortfolioRiskModel] data represent the risk metrics of a portfolio.
class PortfolioRiskModel {
  String symbol;
  double value;

  PortfolioRiskModel(
    this.symbol,
    this.value,
  );

  factory PortfolioRiskModel.fromValue(String symbol, double value) {
    return PortfolioRiskModel(
      symbol,
      value,
    );
  }
}
