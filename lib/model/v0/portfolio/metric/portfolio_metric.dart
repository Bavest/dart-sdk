/// The [PortfolioMetric] data represent the metrics of a portfolio.
class PortfolioMetric {
  PortfolioMetric({
    required this.beta,
    required this.the26WeekPriceReturnDaily,
    required this.the5DayPriceReturnDaily,
    required this.the52WeekPriceReturnDaily,
    required this.dividendPerShareAnnual,
    required this.treynorQuotient,
    required this.sharpeRatio,
    required this.alpha,
  });

  double beta;
  double the26WeekPriceReturnDaily;
  double the5DayPriceReturnDaily;
  double? the52WeekPriceReturnDaily;
  double? dividendPerShareAnnual;
  double? treynorQuotient;
  double? sharpeRatio;
  double? alpha;

  factory PortfolioMetric.fromJson(Map<String, dynamic> json) =>
      PortfolioMetric(
        beta: json["beta"].toDouble(),
        the26WeekPriceReturnDaily: json["26WeekPriceReturnDaily"]?.toDouble(),
        the5DayPriceReturnDaily: json["5DayPriceReturnDaily"]?.toDouble(),
        the52WeekPriceReturnDaily: json["52WeekPriceReturnDaily"]?.toDouble(),
        dividendPerShareAnnual: json["dividendPerShareAnnual"]?.toDouble(),
        treynorQuotient: json["treynorQuotient"]?.toDouble(),
        sharpeRatio: json["sharpeRatio"]?.toDouble(),
        alpha: json["alpha"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
    "beta": beta,
    "26WeekPriceReturnDaily": the26WeekPriceReturnDaily,
    "5DayPriceReturnDaily": the5DayPriceReturnDaily,
    "52WeekPriceReturnDaily": the52WeekPriceReturnDaily,
    "dividendPerShareAnnual": dividendPerShareAnnual,
    "treynorQuotient": treynorQuotient,
    "sharpeRatio": sharpeRatio,
    "alpha": alpha,
  };
}
