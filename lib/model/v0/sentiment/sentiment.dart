/// The Bavest Finance SDK [Sentiment] data represent the sentiment of the
/// company news.
class Sentiment {
  Sentiment({
    this.score,
    this.len,
    this.negative,
    this.positive,
    this.neutral,
  });

  double? score;
  double? negative;
  double? neutral;
  double? positive;
  int? len;

  factory Sentiment.fromJson(Map<String, dynamic> json) => Sentiment(
      score: json["score"].toDouble(),
      len: json["len"],
      positive: (json["positive"]).toDouble(),
      neutral: (json["neutral"]).toDouble(),
      negative: (json["negative"]).toDouble());

  Map<String, dynamic> toJson() => {
        "score": score,
        "len": len,
      };
}
