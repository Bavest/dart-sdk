/// The [PortfolioSector] data represent the sector of a portfolio.
class PortfolioSector {
  PortfolioSector({
    required this.sector,
    required this.percentage,
  });

  String sector;
  double percentage;

  factory PortfolioSector.fromJson(Map<String, dynamic> json) =>
      PortfolioSector(
        sector: json["sector"],
        percentage: json["percentage"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "sector": sector,
        "percentage": percentage,
      };
}
