/// The candle data returns a list of candles. Close price, high price, low price, open price, status, timestamps, from, to and resolution are required. The from, to and resolution are optional.
class Candles {
  List<double> close;

  List<double> high;

  List<double> low;

  List<double> open;

  String status;

  List<int> timestamps;

  int? from;

  int? to;

  String? resolution;

  Candles(
      this.close, this.high, this.low, this.open, this.status, this.timestamps,
      {this.from, this.to, this.resolution});

  static Candles fromJson(Map<String, dynamic> json) => Candles(
        (json['c'] as List<dynamic>)
            .map(
              (e) => (e as num).toDouble(),
            )
            .toList(),
        (json['h'] as List<dynamic>)
            .map(
              (e) => (e as num).toDouble(),
            )
            .toList(),
        (json['l'] as List<dynamic>)
            .map(
              (e) => (e as num).toDouble(),
            )
            .toList(),
        (json['o'] as List<dynamic>)
            .map(
              (e) => (e as num).toDouble(),
            )
            .toList(),
        json['s'] as String,
        (json['t'] as List<dynamic>).map((e) => e.toInt() as int).toList(),
      );
}
