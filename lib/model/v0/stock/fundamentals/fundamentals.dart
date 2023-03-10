/// The [Fundamentals] data represent the fundamentals of the company.
class Fundamentals {
  /// The [metrics] data represent the metrics of the company.
  List<FundamentalMetrics>? metrics;

  Fundamentals({this.metrics});

  Fundamentals.fromJson(Map<String, dynamic> json) {
    if (json['metrics'] != null) {
      metrics = <FundamentalMetrics>[];
      json['metrics'].forEach((v) {
        metrics!.add(FundamentalMetrics.fromJson(v));
      });
    }
  }
}

class FundamentalMetrics {
  /// The [Multiples] data represent the multiples of the company.
  Multiples? multiples;

  /// The [Stability] data represent the stability of the company.
  Stability? stability;

  /// The [Revenue] data represent the revenue of the company.
  Revenue? revenue;

  /// The [period] data represent the period of the company.
  DateTime? period;

  FundamentalMetrics(
      {this.multiples, this.stability, this.revenue, this.period});

  FundamentalMetrics.fromJson(Map<String, dynamic> json) {
    multiples = json['multiples'] != null
        ? Multiples.fromJson(json['multiples'])
        : null;
    stability = json['stability'] != null
        ? Stability.fromJson(json['stability'])
        : null;
    revenue =
        json['revenue'] != null ? Revenue.fromJson(json['revenue']) : null;
    period = json['period'] != null ? DateTime.parse(json['period']) : null;
  }
}

class Multiples {
  double? ev;
  double? evRevenue;
  double? evEbit;
  double? evFcf;
  double? evEbitda;
  double? priceEarningsRatio;
  double? priceBookRatio;
  double? priceCashflowRatio;
  double? priceSalesRatio;

  Multiples(
      {this.ev,
      this.evRevenue,
      this.evEbit,
      this.evFcf,
      this.evEbitda,
      this.priceEarningsRatio,
      this.priceBookRatio,
      this.priceCashflowRatio,
      this.priceSalesRatio});

  Multiples.fromJson(Map<String, dynamic> json) {
    ev = json['ev']?.toDouble();
    evRevenue = json['ev/revenue']?.toDouble();
    evEbit = json['ev/ebit']?.toDouble();
    evFcf = json['ev/fcf']?.toDouble();
    evEbitda = json['ev/ebitda']?.toDouble();
    priceEarningsRatio = json['priceEarningsRatio']?.toDouble();
    priceBookRatio = json['priceBookRatio']?.toDouble();
    priceCashflowRatio = json['priceCashflowRatio']?.toDouble();
    priceSalesRatio = json['priceSalesRatio']?.toDouble();
  }
}

class Stability {
  double? equityRatio;
  double? debtRatio;
  double? debtToEquityRatio;
  double? dynamicLeverage;
  double? cataRatio;
  double? currentRatio;
  double? fixedAssetIntensity;
  double? ppeRatio;
  double? assetCoverage1;
  double? assetCoverage2;
  double? cashRatio;
  double? quickRatio;

  Stability(
      {this.equityRatio,
      this.debtRatio,
      this.debtToEquityRatio,
      this.dynamicLeverage,
      this.cataRatio,
      this.currentRatio,
      this.fixedAssetIntensity,
      this.ppeRatio,
      this.assetCoverage1,
      this.assetCoverage2,
      this.cashRatio,
      this.quickRatio});

  Stability.fromJson(Map<String, dynamic> json) {
    equityRatio = json['equityRatio']?.toDouble();
    debtRatio = json['debtRatio']?.toDouble();
    debtToEquityRatio = json['debtToEquityRatio']?.toDouble();
    dynamicLeverage = json['dynamicLeverage']?.toDouble();
    cataRatio = json['cataRatio']?.toDouble();
    currentRatio = json['currentRatio']?.toDouble();
    fixedAssetIntensity = json['fixedAssetIntensity']?.toDouble();
    ppeRatio = json['ppeRatio']?.toDouble();
    assetCoverage1 = json['assetCoverage1']?.toDouble();
    assetCoverage2 = json['assetCoverage2']?.toDouble();
    cashRatio = json['cashRatio']?.toDouble();
    quickRatio = json['quickRatio']?.toDouble();
  }
}

class Revenue {
  double? equityReturn;
  double? salesReturn;
  double? ebitMargin;
  double? ebitdaMargin;
  double? capitalTurnover;
  double? assetsReturn;

  Revenue(
      {this.equityReturn,
      this.salesReturn,
      this.ebitMargin,
      this.ebitdaMargin,
      this.capitalTurnover,
      this.assetsReturn});

  Revenue.fromJson(Map<String, dynamic> json) {
    equityReturn = json['equityReturn']?.toDouble();
    salesReturn = json['salesReturn']?.toDouble();
    ebitMargin = json['ebitMargin']?.toDouble();
    ebitdaMargin = json['ebitdaMargin']?.toDouble();
    capitalTurnover = json['capitalTurnover']?.toDouble();
    assetsReturn = json['assetsReturn']?.toDouble();
  }
}
