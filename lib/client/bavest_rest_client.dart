import 'dart:async';
import 'dart:convert';

import 'package:bavest/client/abstract/bavest_rest_abstract_client.dart';
import 'package:bavest/model/v0/etf/country/etf_country.dart';
import 'package:bavest/model/v0/etf/holdings/etf_holdings.dart';
import 'package:bavest/model/v0/etf/profile/etf_profile.dart';
import 'package:bavest/model/v0/etf/sector/etf_sector.dart';
import 'package:bavest/model/v0/forex/forex.dart';
import 'package:bavest/model/v0/portfolio/allocation/portfolio_allocation.dart';
import 'package:bavest/model/v0/portfolio/metric/portfolio_metric.dart';
import 'package:bavest/model/v0/portfolio/portfolio.dart';
import 'package:bavest/model/v0/portfolio/region/portfolio_region.dart';
import 'package:bavest/model/v0/portfolio/sector/portfolio_sector.dart';
import 'package:bavest/model/v0/portfolio/stats/portfolio_stats.dart';
import 'package:bavest/model/v0/portfolio/stats/risk_model.dart';
import 'package:bavest/model/v0/search/search.dart';
import 'package:bavest/model/v0/security/security_identifier.dart';
import 'package:bavest/model/v0/sentiment/sentiment.dart';
import 'package:bavest/model/v0/stock/candle/candle.dart';
import 'package:bavest/model/v0/stock/candle/candle_type.dart';
import 'package:bavest/model/v0/stock/dividend/dividend.dart';
import 'package:bavest/model/v0/stock/esg/esg.dart';
import 'package:bavest/model/v0/stock/financials/balance.dart';
import 'package:bavest/model/v0/stock/financials/cashflow.dart';
import 'package:bavest/model/v0/stock/financials/financials_mode.dart';
import 'package:bavest/model/v0/stock/financials/income.dart';
import 'package:bavest/model/v0/stock/fundamentals/fundamentals.dart';
import 'package:bavest/model/v0/stock/ipo/ipo.dart';
import 'package:bavest/model/v0/stock/metric/metric.dart';
import 'package:bavest/model/v0/stock/news/news.dart';
import 'package:bavest/model/v0/stock/profile/profile.dart';
import 'package:bavest/model/v0/stock/quote/quote.dart';
import 'package:bavest/model/v0/stock/split/split.dart';
import 'package:bavest/model/v0/widget/peers/peers.dart';
import 'package:dio/dio.dart';

/// The [BavestRestClient] class is the http rest client for the bavest finance api.
/// To use it, you will need to provide an api key. To get an api key, please visit
/// https://dashboard.bavest.co and create an account.
///
/// Bavest provide a free tier for developers and open-source projects.
/// Please contact us at sales@bavest.co if you are interested.
///
/// ```dart
/// import 'package:bavest/bavest.dart';
///
/// // Usage:
/// final client = BavestRestClient(api_key);
///
/// // Get quote for Apple
/// client.quote(SecurityIdentifier(symbol: "AAPL"));
/// ```
///
/// Please checkout https://docs.bavest.co/ for more information.
class BavestRestClient extends BavestAbstractRestClient {
  /// The [apiKey] is the api key you get from https://dashboard.bavest.co
  /// It is required to make requests to the bavest finance api.
  final String apiKey;

  /// The Bavest API [_stage].
  static const String _stage = 'v0';

  /// The [baseUrl] is the base url of the bavest finance api.
  static const String _baseUrl = 'https://api.bavest.co/$_stage';

  /// create singleton constructor
  BavestRestClient._internal(this.apiKey);

  static BavestRestClient? _instance;

  /// The [BavestRestClient] factory constructor is used to create a singleton instance
  /// of the [BavestRestClient] class.
  factory BavestRestClient(String apiKey) {
    _instance ??= BavestRestClient._internal(apiKey);
    return _instance!;
  }

  /// The [response] method is used to make a post request to the bavest finance api.
  /// It takes a [url] and a [params] map as arguments.
  ///
  /// The [url] is the endpoint of the api you want to call.
  /// The [params] is a map of the parameters you want to pass to the api.
  ///
  /// It returns a [Response] object.
  Future<Response?> _post(final String url,
      final Map<String, dynamic> params) async {
    final dio = Dio(BaseOptions(contentType: Headers.jsonContentType, headers: {
      "x-api-key": apiKey,
    }));

    return await dio
        .post<String>(url, data: jsonEncode(params))
        .timeout(const Duration(seconds: 30));
  }

  /// The [_isSuccess] method is used to check if the response from the bavest finance api
  /// is successful.
  ///
  /// It takes a [response] object as argument.
  ///
  /// It returns a [bool] value indicating if the response is successful.
  bool _isSuccess(Response? response) {
    return response != null &&
        response.statusCode == 200 &&
        response.data != null;
  }

  @override
  Future<Quote> quote(SecurityIdentifier id, {String? currency}) async {
    const url = '$_baseUrl/quote';
    final params = id.toJson();

    final response = await _post(url, params);
    if (_isSuccess(response)) {
      return Quote.fromJson(jsonDecode(response!.data));
    }

    throw Exception('Failed to get quote for $id');
  }

  @override
  Future<Candles> candle(SecurityIdentifier id, String from, String to,
      CandleResolution resolution,
      {String? currency}) async {
    const url = '$_baseUrl/candle';
    final params = {
      "from": from,
      "to": to,
      "resolution": resolution.str,
      "currency": currency ?? "EUR",
    }
      ..addAll(id.toJson());

    final response = await _post(url, params);
    if (_isSuccess(response)) {
      return Candles.fromJson(jsonDecode(response!.data));
    }

    throw Exception('Failed to get candle for $id');
  }

  @override
  Future<Metric> metric(SecurityIdentifier id) async {
    const url = '$_baseUrl/stock/metric';
    final params = id.toJson();

    var response = await _post(url, params);
    if (response != null && response.statusCode == 200) {
      return Metric.fromJson(jsonDecode(response.data));
    }

    throw Exception("could not fetch API");
  }

  @override
  Future<CompanyProfile> profile(SecurityIdentifier id) async {
    const url = '$_baseUrl/stock/profile';
    final params = id.toJson();
    final response = await _post(url, params);
    if (_isSuccess(response)) {
      return CompanyProfile.fromJson(jsonDecode(response!.data));
    }

    throw Exception('Failed to get profile for $id');
  }

  @override
  Future<Dividends> dividends(SecurityIdentifier id,
      {String? currency}) async {
    const url = '$_baseUrl/stock/dividend';
    final params = {
      'currency': currency ?? 'EUR',
    }
      ..addAll(id.toJson());

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Dividends.fromJson({
        "data":jsonDecode(response!.data)
      });
      }

          throw Exception("Failed to get dividends for $id");
    }

  @override
  Future<List<News>> companyNews(SecurityIdentifier id) async {
    const url = '$_baseUrl/stock/news';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      dynamic data = jsonDecode(response!.data);
      return data.map<News>((e) => News.fromJson(e)).toList();
    }

    throw Exception("Failed to get news for $id");
  }

  @override
  Future<Ipo> ipos() async {
    final DateTime c = DateTime.now();

    var from = c
        .subtract(const Duration(days: 30))
        .millisecondsSinceEpoch;
    var to = c.millisecondsSinceEpoch;

    from = from ~/ 1000;
    to = to ~/ 1000;

    const url = '$_baseUrl/calender/ipo';
    var params = {"from": from, "to": to};

    var response = await _post(url, params);

    if (_isSuccess(response)) {
      return Ipo.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not fetch API");
  }

  @override
  Future<List<PeersWidget>> peersWidget(SecurityIdentifier id) async {
    const url = '$_baseUrl/widgets/stock/peers';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      dynamic peers = jsonDecode(response!.data);
      if (peers is List) {
        return peers.map((e) => PeersWidget.fromJson(e)).toList();
      } else {
        return [PeersWidget.fromJson(peers)];
      }
    }
    throw Exception("could not get data for $id");
  }

  @override
  Future<Income> income(SecurityIdentifier id,
      {String? currency, Freq mode = Freq.annual}) async {
    const url = '$_baseUrl/stock/financials';
    final freq = mode == Freq.annual ? "annual" : "quarterly";
    final params = {
      "statement": "ic",
      "currency": currency ?? "EUR",
      "freq": freq
    }
      ..addAll(id.toJson());

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Income.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not retrieve data for $id");
  }

  @override
  Future<Cashflow> cashflow(SecurityIdentifier id,
      {String? currency, Freq mode = Freq.annual}) async {
    const url = '$_baseUrl/stock/financials';
    final freq = mode == Freq.annual ? "annual" : "quarterly";
    final params = {
      "statement": "cf",
      "currency": currency ?? "EUR",
      "freq": freq
    }
      ..addAll(id.toJson());

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Cashflow.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not retrieve cashflow");
  }

  @override
  Future<Balance> balance(SecurityIdentifier id,
      {String? currency, Freq mode = Freq.annual}) async {
    const url = '$_baseUrl/stock/financials';
    final freq = mode == Freq.annual ? "annual" : "quarterly";
    final params = {
      "statement": "bs",
      "currency": currency ?? "EUR",
      "freq": freq
    }
      ..addAll(id.toJson());

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Balance.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive data for $id");
  }

  @override
  Future<Fundamentals> fundamentals(SecurityIdentifier id) async {
    const url = '$_baseUrl/stock/fundamentals';
    final params = id.toJson();

    var response = await _post(url, params);
    if (response != null && response.statusCode == 200) {
      var fundamentals = Fundamentals.fromJson(jsonDecode(response.data));
      final seen = <String>{};
      if (fundamentals.metrics == null) return fundamentals;

      fundamentals.metrics!.removeWhere((e) {
        var isDuplicate = seen.contains(e.period.toString());
        seen.add(e.period.toString());

        return isDuplicate;
      });

      if (fundamentals.metrics == null) return fundamentals;

      fundamentals.metrics!
          .sort((a, b) => b.period!.year.compareTo(a.period!.year));

      return fundamentals;
    }

    throw Exception("could not fetch fundamentals for $id");
  }

  @override
  Future<Esg> esg(SecurityIdentifier id) async {
    const url = '$_baseUrl/stock/esg';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Esg.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive esg data for $id");
  }

  @override
  Future<Splits> splits(SecurityIdentifier id, {final int years = 1}) async {
    const url = '$_baseUrl/stock/split';
    var from = DateTime
        .now()
        .subtract(Duration(days: 365 * years))
        .millisecondsSinceEpoch;
    var to = DateTime
        .now()
        .millisecondsSinceEpoch;
    final params = {
      'from': from.toString(),
      'to': to.toString(),
    }
      ..addAll(id.toJson());

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Splits.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive esg data for $id");
  }

  @override
  Future<Sentiment> sentiment(SecurityIdentifier id) async {
    const url = '$_baseUrl/sentiment';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Sentiment.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive esg data for $id");
  }

  @override
  Future<Forex> forex(String fromCurrency, String toCurrency) async {
    const url = '$_baseUrl/fx/quote';
    final params = {
      'from': fromCurrency,
      'to': toCurrency,
    };

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return Forex.fromJson(jsonDecode(response!.data));
    }
    throw Exception(
        "could not receive forex data for $fromCurrency to $toCurrency");
  }

  @override
  Future<SearchResult> search(String query) async {
    const url = '$_baseUrl/search';
    final params = {
      'query': query,
    };

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return SearchResult.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive search result for $query");
  }

  @override
  Future<EtfProfile> etfProfile(SecurityIdentifier id) async {
    const url = '$_baseUrl/etf/profile';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return EtfProfile.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive etf profile for $id");
  }

  @override
  Future<EtfHoldings> etfHoldings(SecurityIdentifier id) async {
    const url = '$_baseUrl/etf/holdings';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return EtfHoldings.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive etf profile for $id");
  }

  @override
  Future<EtfSector> etfSector(SecurityIdentifier id) async {
    const url = '$_baseUrl/etf/sector';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return EtfSector.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive etf profile for $id");
  }

  @override
  Future<EtfCountry> etfCountry(SecurityIdentifier id) async {
    const url = '$_baseUrl/etf/country';
    final params = id.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      return EtfCountry.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive etf profile for $id");
  }

  @override
  Future<List<PortfolioRegion>> portfolioRegion(Portfolio portfolio) async {
    const url = '$_baseUrl/portfolio/region';
    final params = portfolio.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      List<dynamic> filteredResults = jsonDecode(response!.data);
      return filteredResults.map((e) => PortfolioRegion.fromJson(e)).toList();
    }

    throw Exception("could not receive portfolio region for $portfolio");
  }

  @override
  Future<List<PortfolioAllocation>> portfolioAllocation(
      Portfolio portfolio) async {
    const url = '$_baseUrl/portfolio/allocation';
    final params = portfolio.toJson();

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      List<dynamic> filteredResults = jsonDecode(response!.data);
      return filteredResults
          .map((e) => PortfolioAllocation.fromJson(e))
          .toList();
    }

    throw Exception("could not receive portfolio allocation for $portfolio");
  }

  @override
  Future<PortfolioMetric> portfolioMetrics(Portfolio portfolio,
      {String currency = 'EUR'}) async {
    const url = '$_baseUrl/portfolio/metrics';
    final params = portfolio.toJson()
      ..addAll({'currency': currency});

    final response = await _post(url, params);
    if (_isSuccess(response)) {
      return PortfolioMetric.fromJson(jsonDecode(response!.data));
    }

    throw Exception("could not receive portfolio metrics for $portfolio");
  }

  @override
  Future<List<PortfolioSector>> portfolioSector(Portfolio portfolio,
      {String currency = "EUR"}) async {
    const url = '$_baseUrl/portfolio/sector';
    final params = portfolio.toJson()
      ..addAll({'currency': currency});

    final response = await _post(url, params);
    if (_isSuccess(response)) {
      List<dynamic> sectors = jsonDecode(response!.data);
      return sectors.map((e) => PortfolioSector.fromJson(e)).toList();
    }

    throw Exception("could not receive portfolio metrics for $portfolio");
  }

  @override
  Future<void> portfolioBenchmark(Portfolio portfolio) {
    throw UnimplementedError();
  }

  @override
  Future<Quote> portfolioPrice(Portfolio portfolio,
      {String currency = "EUR"}) async {
    const url = '$_baseUrl/portfolio/price';
    final params = portfolio.toJson()
      ..addAll({"currency": currency});

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      var parsedJson = json.decode(response!.data);
      return Quote.fromJson(parsedJson);
    }

    throw Exception("could not receive portfolio price for $portfolio");
  }

  @override
  Future<Candles> portfolioChart(Portfolio portfolio,
      {String currency = "EUR",
        required int from,
        required int to,
        required CandleResolution resolution}) async {
    const url = '$_baseUrl/portfolio/chart';
    var params = portfolio.toJson()
      ..addAll({
        "currency": currency,
        "from": from,
        "to": to,
        "resolution": resolution.str,
      });

    var response = await _post(url, params);
    if (_isSuccess(response)) {
      var parsedJson = json.decode(response!.data);
      return Candles.fromJson(parsedJson);
    }

    throw Exception("could not receive portfolio chart for $portfolio");
  }

  @override
  Future<PortfolioStats> portfolioStats(Portfolio portfolio,
      {String currency = "EUR",
        required int from,
        required int to,
        required CandleResolution resolution}) async {
    const url = '$_baseUrl/portfolio/stats';
    var params = portfolio.toJson()
      ..addAll({
        "currency": currency,
        "from": from,
        "to": to,
        "resolution": resolution.str,
      });

    final response = await _post(url, params);
    if (_isSuccess(response)) {
      var parsedJson = json.decode(response!.data);
      Candles candles = Candles.fromJson(parsedJson["series"]);
      List<PortfolioRiskModel> riskModels = [];
      for (var key in parsedJson["riskReturnRatio"].keys) {
        riskModels.add(PortfolioRiskModel.fromValue(
            key, parsedJson["riskReturnRatio"][key]));
      }

      List<List<PortfolioRiskModel>> correlation = [];
      for (var key in parsedJson["correlation"].keys) {
        List<PortfolioRiskModel> correlationModels = [];
        for (var key2 in parsedJson["correlation"][key].keys) {
          correlationModels.add(PortfolioRiskModel.fromValue(
              key2, parsedJson["correlation"][key][key2]));
        }
        correlation.add(correlationModels);
      }
      return PortfolioStats.fromJson(
          parsedJson, candles, riskModels, correlation);
    }

    throw Exception("could not receive portfolio stats for $portfolio");
  }
}
