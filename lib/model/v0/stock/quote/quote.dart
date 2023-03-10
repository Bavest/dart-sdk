/// The [Quote] class is used to represent the quote for a given stock symbol.
/// It contains the current price, the daily change, the daily change percentage,
/// the high price, the low price, the open price, the previous close price,
/// the timestamp, the volume, the historical price, the metrics, the exchange
/// and the earnings announcement.
class Quote {
  Quote({
    required this.c,
    required this.d,
    required this.dp,
    required this.h,
    required this.l,
    required this.o,
    required this.pc,
    required this.t,
    this.v,
    this.historicalPrice,
    this.metrics,
    this.exchange,
    this.earningsAnnouncement,
  });

  /// The [c] property is used to get the current close price.
  double c;

  /// The [d] property is used to get the daily change.
  double d;

  /// The [dp] property is used to get the daily change percentage.
  double? dp;

  /// The [h] property is used to get the high price.
  double h;

  /// The [l] property is used to get the low price.
  double l;

  /// The [o] property is used to get the open price.
  double o;

  /// The [pc] property is used to get the previous close price.
  double pc;

  /// The [t] property is used to get the timestamp.
  int t;

  /// The [v] property is used to get the volume.
  double? v;

  /// The [historicalPrice] property is used to get the historical price.
  HistoricalPrice? historicalPrice;

  /// The [metrics] property is used to get the metrics.
  Metrics? metrics;

  /// The [exchange] property is used to get the exchange.
  String? exchange;

  /// The [earningsAnnouncement] property is used to get the earnings announcement.
  String? earningsAnnouncement;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        c: (json["c"] ?? 0).toDouble(),
        d: (json["d"] ?? 0).toDouble(),
        dp: (json["dp"] ?? 0).toDouble(),
        h: (json["h"] ?? 0).toDouble(),
        l: (json["l"] ?? 0).toDouble(),
        o: (json["o"] ?? 0).toDouble(),
        pc: (json["pc"] ?? 0).toDouble(),
        t: json["t"] ?? 0,
        v: (json["v"] ?? 0).toDouble(),
        //historicalPrice: HistoricalPrice.fromJson(json["historical_price"]),
        metrics:
            json["metrics"] == null ? null : Metrics.fromJson(json["metrics"]),
        // exchange: json["exchange"],
        // earningsAnnouncement: json["earningsAnnouncement"],
      );

  Map<String, dynamic> toJson() => {
        "c": c,
        "d": d,
        "dp": dp,
        "h": h,
        "l": l,
        "o": o,
        "pc": pc,
        "t": t,
        "v": v,
      };
}

class HistoricalPrice {
  HistoricalPrice({
    required this.day,
    required this.the50Days,
    required this.the200Days,
  });

  double? day;
  double? the50Days;
  double? the200Days;

  factory HistoricalPrice.fromJson(Map<String, dynamic> json) =>
      HistoricalPrice(
        day: json["day"]?.toDouble(),
        the50Days: json["50days"]?.toDouble(),
        the200Days: json["200days"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "50days": the50Days,
        "200days": the200Days,
      };
}

class Metrics {
  Metrics({
    required this.marketCapitalization,
    required this.avgVolume,
    required this.eps,
    required this.peRatio,
    required this.sharesOutstanding,
  });

  double? marketCapitalization;
  double? avgVolume;
  double? eps;
  double? peRatio;
  double? sharesOutstanding;

  factory Metrics.fromJson(Map<String, dynamic> json) => Metrics(
        marketCapitalization: json["marketCapitalization"]?.toDouble(),
        avgVolume: json["avgVolume"]?.toDouble(),
        eps: json["eps"]?.toDouble(),
        peRatio: json["pe/ratio"]?.toDouble(),
        sharesOutstanding: json["sharesOutstanding"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "marketCapitalization": marketCapitalization,
        "avgVolume": avgVolume,
        "eps": eps,
        "pe/ratio": peRatio,
      };
}
