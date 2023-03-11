import 'package:bavest/bavest.dart';
import 'package:bavest/model/v0/security/security_identifier.dart';
import 'package:bavest/model/v0/stock/candle/candle_type.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> main() async {
  var apiKey = const String.fromEnvironment('API_KEY');
  var client = BavestRestClient(apiKey);
  var id = SecurityIdentifier(symbol: "AAPL");

  /// Search for a symbol
  await client.search("App");

  /// Get stock data
  await client.quote(id);
  await client.profile(id);
  await client.metric(id);
  await client.dividends(id);
  await client.companyNews(id);
  await client.fundamentals(id);
  await client.peersWidget(id);
  await client.forex("EUR", "USD");
  await client.sentiment(id);
  await client.splits(id, years: 5);

  id = SecurityIdentifier(symbol: "ARKK");
  await client.etfSector(id);
  await client.etfCountry(id);
  await client.etfHoldings(id);
  await client.etfProfile(id);

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
}
