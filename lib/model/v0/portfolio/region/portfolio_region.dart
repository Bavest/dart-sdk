/// The [PortfolioRegion] data represent the region of a portfolio.
class PortfolioRegion {
  String? region;
  double? percentage;

  PortfolioRegion({region, percentage});

  PortfolioRegion.fromJson(Map<String, dynamic> json) {
    region = json['region'];
    percentage = json['percentage']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['region'] = region;
    data['percentage'] = percentage;
    return data;
  }
}
