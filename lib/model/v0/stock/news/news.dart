/// The [News] data represent the news of a company.
class News {
  News(
      {required this.image,
      required this.url,
      required this.date,
      required this.headline,
      required this.source,
      required this.summary});

  /// The image of the news.
  String image;

  /// The url of the news.
  String url;

  /// The date of the news.
  DateTime date;

  /// The headline of the news.
  String headline;

  /// The source of the news.
  String source;

  /// The summary of the news.
  String summary;

  factory News.fromJson(Map<String, dynamic> json) => News(
        image: json["image"],
        url: json["url"],
        date: DateTime.parse(json["publishedDate"]),
        headline: json["title"],
        source: json["site"],
        summary: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "url": url,
        "date": date.toIso8601String(),
        "headline": headline,
        "source": source,
        "summary": summary,
      };
}
