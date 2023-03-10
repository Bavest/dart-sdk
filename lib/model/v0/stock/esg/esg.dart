/// The [Esg] data represent the ESG data of the company e.g.
/// the environment score, the governance score, the social score, the total ESG score.
class Esg {
  /// The [EsgData] data represent the ESG data of the company.
  List<EsgData>? data;

  /// The [Series] data represent the series of the ESG data.
  Series? series;

  /// The [Sector] data represent the sector of the ESG data.
  Sector? sector;

  /// The [IndustrieRating] data represent the industry rating of the ESG data.
  IndustrieRating? industryRating;

  /// The environment score of the ESG data.
  double? environmentScore;

  /// The governance score of the ESG data.
  double? governanceScore;

  /// The social score of the ESG data.
  double? socialScore;

  /// The symbol of the ESG data.
  String? symbol;

  /// The total ESG score of the ESG data.
  double? totalEsg;

  Esg(
      {this.data,
      this.series,
      this.sector,
      this.industryRating,
      this.environmentScore,
      this.governanceScore,
      this.socialScore,
      this.symbol,
      this.totalEsg});

  Esg.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <EsgData>[];
      json['data'].forEach((v) {
        data!.add(EsgData.fromJson(v));
      });
    }
    series = json['series'] != null ? Series.fromJson(json['series']) : null;
    sector = json['sector'] != null ? Sector.fromJson(json['sector']) : null;
    industryRating = json['industrie-rating'] != null
        ? IndustrieRating.fromJson(json['industrie-rating'])
        : null;

    environmentScore = json['environmentScore']?.toDouble();
    governanceScore = json['governanceScore']?.toDouble();
    socialScore = json['socialScore']?.toDouble();
    symbol = json['symbol'];
    totalEsg = json['totalEsg']?.toDouble();
  }
}

/// The [EsgData] data represent the ESG data of the company.
class EsgData {
  String? formType;
  String? acceptedDate;
  String? date;

  EsgData({this.formType, this.acceptedDate, this.date});

  EsgData.fromJson(Map<String, dynamic> json) {
    formType = json['formType'];
    acceptedDate = json['acceptedDate'];
    date = json['date'];
  }
}

class Series {
  List<EsgSeries>? totalEsg;
  List<EsgSeries>? socialScore;
  List<EsgSeries>? governanceScore;
  List<EsgSeries>? environmentScore;

  Series(
      {this.totalEsg,
      this.socialScore,
      this.governanceScore,
      this.environmentScore});

  Series.fromJson(Map<String, dynamic> json) {
    if (json['totalEsg'] != null) {
      totalEsg = <EsgSeries>[];
      json['totalEsg'].forEach((v) {
        totalEsg!.add(EsgSeries.fromJson(v));
      });
    }
    if (json['socialScore'] != null) {
      socialScore = <EsgSeries>[];
      json['socialScore'].forEach((v) {
        socialScore!.add(EsgSeries.fromJson(v));
      });
    }
    if (json['governanceScore'] != null) {
      governanceScore = <EsgSeries>[];
      json['governanceScore'].forEach((v) {
        governanceScore!.add(EsgSeries.fromJson(v));
      });
    }
    if (json['environmentScore'] != null) {
      environmentScore = <EsgSeries>[];
      json['environmentScore'].forEach((v) {
        environmentScore!.add(EsgSeries.fromJson(v));
      });
    }
  }
}

class EsgSeries {
  double? score;
  String? date;

  EsgSeries({this.score, this.date});

  EsgSeries.fromJson(Map<String, dynamic> json) {
    score = json['score']?.toDouble();
    date = json['date'];
  }
}

class Sector {
  int? year;
  String? sector;
  EnvironmentalScore? environmentalScore;
  EnvironmentalScore? socialScore;
  EnvironmentalScore? governanceScore;
  EnvironmentalScore? totalEsg;

  Sector(
      {this.year,
      this.sector,
      this.environmentalScore,
      this.socialScore,
      this.governanceScore,
      this.totalEsg});

  Sector.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    sector = json['sector'];
    environmentalScore = json['environmentalScore'] != null
        ? EnvironmentalScore.fromJson(json['environmentalScore'])
        : null;
    socialScore = json['socialScore'] != null
        ? EnvironmentalScore.fromJson(json['socialScore'])
        : null;
    governanceScore = json['governanceScore'] != null
        ? EnvironmentalScore.fromJson(json['governanceScore'])
        : null;
    totalEsg = json['totalEsg'] != null
        ? EnvironmentalScore.fromJson(json['totalEsg'])
        : null;
  }
}

class EnvironmentalScore {
  double? score;
  double? d;

  EnvironmentalScore({this.score, this.d});

  EnvironmentalScore.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    d = json['d'];
  }
}

class IndustrieRating {
  String? symbol;
  String? cik;
  String? companyName;
  String? industry;
  int? year;
  String? eSGRiskRating;
  IndustryRank? industryRank;

  IndustrieRating(
      {this.symbol,
      this.cik,
      this.companyName,
      this.industry,
      this.year,
      this.eSGRiskRating,
      this.industryRank});

  IndustrieRating.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    cik = json['cik'];
    companyName = json['companyName'];
    industry = json['industry'];
    year = json['year'];
    eSGRiskRating = json['ESGRiskRating'];
    industryRank = json['industryRank'] != null
        ? IndustryRank.fromJson(json['industryRank'])
        : null;
  }
}

class IndustryRank {
  int? pos;
  int? total;

  IndustryRank({this.pos, this.total});

  IndustryRank.fromJson(Map<String, dynamic> json) {
    pos = json['pos']?.toInt();
    total = json['total']?.toInt();
  }

  @override
  String toString() {
    return '$pos / $total';
  }
}
