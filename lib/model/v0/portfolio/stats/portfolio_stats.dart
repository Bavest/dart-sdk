import 'package:bavest/model/v0/portfolio/stats/risk_model.dart';
import 'package:bavest/model/v0/stock/candle/candle.dart';

/// The PortfolioStats class is a model that contains all the statistics of a portfolio.
class PortfolioStats {
  PortfolioStats(
      {required this.candles,
      required this.riskFree,
      required this.totalReturn,
      required this.cagr,
      required this.correlation,
      required this.riskModels,
      required this.maxDrawdown,
      required this.calmar,
      required this.mtd,
      required this.threeMonth,
      required this.sixMonth,
      required this.ytd,
      required this.oneYear,
      required this.threeYear,
      required this.fiveYear,
      required this.tenYear,
      required this.inception,
      required this.dailySharpe,
      required this.dailySortino,
      required this.dailyMean,
      required this.dailyVolume,
      required this.dailySkew,
      required this.dailyKurt,
      required this.bestDay,
      required this.worstDay,
      required this.monthlySharpe,
      required this.monthlySortino,
      required this.monthlyMean,
      required this.monthlyVol,
      required this.monthlySkew,
      required this.monthlyKurt,
      required this.bestMonth,
      required this.worstMonth,
      required this.yearlySharpe,
      required this.yearlySortino,
      required this.yearlyMean,
      required this.yearlyVol,
      required this.yearlySkew,
      required this.yearlyKurt,
      required this.bestYear,
      required this.worstYear,
      required this.avgDrawdown,
      required this.avgDrawdownDays,
      required this.avgUpMonth,
      required this.avgDownMonth,
      required this.winYearPerc,
      required this.twelveMonthWinPerc});

  double? riskFree;
  double? totalReturn;
  double? cagr;
  double? maxDrawdown;

  double? calmar;
  double? mtd;
  double? threeMonth;
  double? sixMonth;

  double? ytd;
  double? oneYear;
  double? threeYear;
  double? fiveYear;

  double? tenYear;
  double? inception;
  double? dailySharpe;
  double? dailySortino;

  double? dailyMean;
  double? dailyVolume;
  double? dailySkew;
  double? dailyKurt;

  double? bestDay;
  double? worstDay;
  double? monthlySharpe;
  double? monthlySortino;

  double? monthlyMean;
  double? monthlyVol;
  double? monthlySkew;
  double? monthlyKurt;

  double? bestMonth;
  double? worstMonth;
  double? yearlySharpe;
  double? yearlySortino;

  double? yearlyMean;
  double? yearlyVol;
  double? yearlySkew;
  double? yearlyKurt;

  double? bestYear;
  double? worstYear;
  double? avgDrawdown;
  double? avgDrawdownDays;

  double? avgUpMonth;
  double? avgDownMonth;
  double? winYearPerc;
  double? twelveMonthWinPerc;

  Candles? candles;
  List<PortfolioRiskModel> riskModels = [];
  List<List<PortfolioRiskModel>> correlation = [];

  factory PortfolioStats.fromJson(
      Map<String, dynamic> json,
      Candles candles,
      List<PortfolioRiskModel> riskModels,
      List<List<PortfolioRiskModel>> correlation) {
    final response = json["stats"];
    return PortfolioStats(
      candles: candles,
      riskModels: riskModels,
      correlation: correlation,
      riskFree: response["riskFree"],
      totalReturn: response["totalReturn"],
      cagr: response["cagr"],
      maxDrawdown: response["maxDrawdown"],
      calmar: response["calmar"],
      mtd: response["mtd"],
      threeMonth: response["threeMonth"],
      sixMonth: response["sixMonth"],
      ytd: response["ytd"],
      oneYear: response["oneYear"],
      threeYear: response["threeYear"],
      fiveYear: response["fiveYear"],
      tenYear: response["tenYear"],
      inception: response["inception"],
      dailySharpe: response["dailySharpe"],
      dailySortino: response["dailySortino"],
      dailyMean: response["dailyMean"],
      dailyVolume: response["dailyVolume"],
      dailySkew: response["dailySkew"],
      dailyKurt: response["dailyKurt"],
      bestDay: response["bestDay"],
      worstDay: response["worstDay"],
      monthlySharpe: response["monthlySharpe"],
      monthlySortino: response["monthlySortino"],
      monthlyMean: response["monthlyMean"],
      monthlyVol: response["monthlyVol"],
      monthlySkew: response["monthlySkew"],
      monthlyKurt: response["monthlyKurt"],
      bestMonth: response["bestMonth"],
      worstMonth: response["worstMonth"],
      yearlySharpe: response["yearlySharpe"],
      yearlySortino: response["yearlySortino"],
      yearlyMean: response["yearlyMean"],
      yearlyVol: response["yearlyVol"],
      yearlySkew: response["yearlySkew"],
      yearlyKurt: response["yearlyKurt"],
      bestYear: response["bestYear"],
      worstYear: response["worstYear"],
      avgDrawdown: response["avgDrawdown"],
      avgDrawdownDays: response["avgDrawdownDays"],
      avgUpMonth: response["avgUpMonth"],
      avgDownMonth: response["avgDownMonth"],
      winYearPerc: response["winYearPerc"],
      twelveMonthWinPerc: response["twelveMonthWinPerc"],
    );
  }

  Map<String, dynamic> toJson() => {
        "riskFree": riskFree,
        "totalReturn": totalReturn,
        "cagr": cagr,
        "maxDrawdown": maxDrawdown,
        "calmar": calmar,
        "mtd": mtd,
        "threeMonth": threeMonth,
        "sixMonth": sixMonth,
        "ytd": ytd,
        "oneYear": oneYear,
        "threeYear": threeYear,
        "fiveYear": fiveYear,
        "tenYear": tenYear,
        "inception": inception,
        "dailySharpe": dailySharpe,
        "dailySortino": dailySortino,
        "dailyMean": dailyMean,
        "dailyVolume": dailyVolume,
        "dailySkew": dailySkew,
        "dailyKurt": dailyKurt,
        "bestDay": bestDay,
        "worstDay": worstDay,
        "monthlySharpe": monthlySharpe,
        "monthlySortino": monthlySortino,
        "monthlyMean": monthlyMean,
        "monthlyVol": monthlyVol,
        "monthlySkew": monthlySkew,
        "monthlyKurt": monthlyKurt,
        "bestMonth": bestMonth,
        "worstMonth": worstMonth,
        "yearlySharpe": yearlySharpe,
        "yearlySortino": yearlySortino,
        "yearlyMean": yearlyMean,
        "yearlyVol": yearlyVol,
        "yearlySkew": yearlySkew,
        "yearlyKurt": yearlyKurt,
        "bestYear": bestYear,
        "worstYear": worstYear,
        "avgDrawdown": avgDrawdown,
        "avgDrawdownDays": avgDrawdownDays,
        "avgUpMonth": avgUpMonth,
        "avgDownMonth": avgDownMonth,
        "winYearPerc": winYearPerc,
        "twelveMonthWinPerc": twelveMonthWinPerc,
      };
}
