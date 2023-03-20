import 'package:bavest/bavest.dart';
import 'package:bavest/model/v0/security/security_identifier.dart';
import 'package:bavest/model/v0/stock/candle/candle_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var apiKey = const String.fromEnvironment('API_KEY');
  var client = BavestRestClient(apiKey);
  final id = SecurityIdentifier(symbol: "AAPL");

  test("Search test", () async {
    var search = await client.search("App");
    expect(search.results!.isNotEmpty, true);
  });

  test("Stock test", () async {
    await client.quote(id);
    await client.profile(id);
    await client.metric(id);

    var dividends = await client.dividends(id);
    expect(dividends.data?.isNotEmpty ?? false, true);

    await client.companyNews(id);
    await client.fundamentals(id);
    await client.peersWidget(id);

    final Forex forex = await client.forex("EUR", "USD");
    expect(forex.result != null && forex.result! > 0, true);

    final sentiment = await client.sentiment(id);
    expect(sentiment.score != null && sentiment.score! > 0, true);

    final splits = await client.splits(id, years: 5);
    expect(splits.split?.isNotEmpty ?? false, true);
  });

  test("Etf test", () async {
    final id = SecurityIdentifier(symbol: "ARKK");
    final sectors = await client.etfSector(id);
    expect(sectors.sectorExposure?.isNotEmpty ?? false, true);

    final countries = await client.etfCountry(id);
    expect(countries.countryExposure?.isNotEmpty ?? false, true);

    final holdings = await client.etfHoldings(id);
    expect(holdings.holdings?.isNotEmpty ?? false, true);

    final etfProfile = await client.etfProfile(id);
    expect(etfProfile.profile?.name != null, true);
  });

  test("Portfolio test", () async {
    var portfolio = Portfolio.fromJson({
      "portfolio_items": [
        {"symbol": "ABEA.DE", "amount": 5, "buy_date": 1649887200000},
        {"symbol": "DEQ.DE", "amount": 41, "buy_date": 1619647200000},
        {"symbol": "AAPL", "amount": 100, "buy_date": 1556661600000},
        {"symbol": "ADS.DE", "amount": 10, "buy_date": 1491343200000}
      ]
    });

    var from = 1630352898;
    var to = 1655848800;
    var resolution = CandleResolution.day;

    await client.portfolioStats(portfolio,
        from: from, to: to, resolution: resolution);

    var allocation = Portfolio.fromJson({
      "portfolio_items": [
        {"symbol": "BNTX", "amount": 10},
        {"symbol": "AAPL", "amount": 4},
        {"symbol": "SAP.DE", "amount": 4}
      ]
    });

    await client.portfolioPrice(portfolio);
    await client.portfolioAllocation(allocation);
    await client.portfolioRegion(allocation);
    await client.portfolioSector(allocation);
    await client.portfolioPrice(portfolio);
    await client.portfolioChart(portfolio,
        from: from, to: to, resolution: resolution);
  });
}
