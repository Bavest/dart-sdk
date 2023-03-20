import 'package:bavest/bavest.dart';
import 'package:bavest/model/v0/portfolio/metric/portfolio_metric.dart';
import 'package:bavest/model/v0/portfolio/sector/portfolio_sector.dart';
import 'package:bavest/model/v0/search/search.dart';
import 'package:bavest/model/v0/security/security_identifier.dart';
import 'package:bavest/model/v0/stock/candle/candle_type.dart';
import 'package:bavest/model/v0/stock/esg/esg.dart';

abstract class BavestAbstractRestClient {
  /// The [quote] method is used to get the quote for a given stock symbol.
  /// By default, the quote is returned in EUR. You can specify a different currency
  /// by passing the [currency] argument.
  ///
  /// It returns a [Quote] object.
  ///
  /// ```dart
  /// // Get quote for Apple in EUR
  /// final client = BavestRestClient(api_key);
  /// client.quote(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<Quote> quote(SecurityIdentifier id, {String? currency});

  /// The [candle] method is used to get the candle data for a given stock symbol.
  /// By default, the candle data is returned in EUR. You can specify a different currency
  /// by passing the [currency] argument.
  ///
  /// The [from] and [to] arguments are used to specify the time range for the candle data in unix timestamp.
  /// The [resolution] argument is used to specify the resolution of the candle data.
  ///
  /// Valid resolutions are 1, 5, 60, D, W, M.
  ///
  /// ```dart
  /// // Get candle data for Apple in EUR
  /// final client = BavestRestClient(api_key);
  /// final candle = client.candle(SecurityIdentifier(symbol: "AAPL"), '1630352898', '1655848800',  CandleType.day, currency: 'EUR);
  /// ```
  Future<Candles> candle(SecurityIdentifier id, String from, String to,
      CandleResolution resolution,
      {String? currency});

  /// The [metric] method is used to get the metric for a given stock symbol.
  ///
  /// The [id] argument is used to specify the stock id.
  /// ```dart
  /// // Get metric for Apple
  /// final client = BavestRestClient(api_key);
  /// final metric = client.metric(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<Metric> metric(SecurityIdentifier id);

  /// The [profile] method is used to get the profile for a given stock symbol.
  /// Market capitalisation is adjusted by the specified currency and is NOT in million.
  /// The zip code, isin and city can be empty.
  ///
  /// The [id] argument is used to specify the stock id.
  /// ```dart
  /// // Get profile for Apple
  /// final client = BavestRestClient(api_key);
  /// final profile = client.profile(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<CompanyProfile> profile(SecurityIdentifier id);

  /// The [dividends] method is used to get the dividends for a given stock symbol.
  /// By default, the dividends are returned in EUR. You can specify a different currency
  /// by passing the [currency] argument.
  ///
  /// The [id] argument is used to specify the stock id.
  /// The [currency] argument is used to specify the currency.
  /// ```dart
  /// // Get dividends for Apple in EUR
  /// final client = BavestRestClient(api_key);
  /// final dividends = client.dividends(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<Dividends> dividends(SecurityIdentifier id, {String? currency});

  /// The [news] method is used to get the news for a given stock symbol.
  ///
  /// The [id] argument is used to specify the stock id.
  /// ```dart
  /// // Get news for Apple
  /// final client = BavestRestClient(api_key);
  /// final news = client.news(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<List<News>> companyNews(SecurityIdentifier id);

  /// The [ipos] endpoint returns upcoming initial public offerings (IPOs) and
  /// their expected release dates.
  ///
  /// ```dart
  /// // Get ipos
  /// final client = BavestRestClient(api_key);
  /// final ipos = client.ipos();
  /// ```
  Future<Ipo> ipos();

  /// The [peersWidget] endpoint returns a list of peers for a given stock symbol.
  /// The list contains the symbol, name and logo of the peers.
  ///
  /// The [id] argument is used to specify the stock id.
  ///
  /// ```dart
  /// // Get peers for Apple
  /// final client = BavestRestClient(api_key);
  /// final peers = client.peersWidget(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<List<PeersWidget>> peersWidget(SecurityIdentifier id);

  /// The [income] method is used to get the income statement for a given stock symbol.
  /// By default, the income statement is returned in EUR. You can specify a different currency
  /// by passing the [currency] argument.
  ///
  /// The [mode] argument is used to specify the mode of the income statement.
  /// The [id] argument is used to specify the stock id.
  /// The [currency] argument is used to specify the currency.
  ///
  /// ```dart
  /// // Get income statement for Apple in EUR
  /// final client = BavestRestClient(api_key);
  /// final income = client.income(SecurityIdentifier(symbol: "AAPL"), currency: 'EUR', mode: FinancialsMode.annual);
  /// ```
  Future<Income> income(SecurityIdentifier id,
      {String? currency, Freq mode = Freq.annual});

  /// The [cashflow] method is used to get the cashflow statement for a given stock symbol.
  /// By default, the cashflow statement is returned in EUR. You can specify a different currency
  /// by passing the [currency] argument.
  ///
  /// The [mode] argument is used to specify the mode of the cashflow statement.
  /// The [id] argument is used to specify the stock id.
  /// The [currency] argument is used to specify the currency.
  ///
  /// ```dart
  /// // Get cashflow statement for Apple in EUR
  /// final client = BavestRestClient(api_key);
  /// final cashflow = client.cashflow(SecurityIdentifier(symbol: "AAPL"), currency: 'EUR', mode: FinancialsMode.annual);
  /// ```
  Future<Cashflow> cashflow(SecurityIdentifier id,
      {String? currency, Freq mode = Freq.annual});

  /// The [balance] method is used to get the balance sheet for a given stock symbol.
  /// By default, the balance sheet is returned in EUR. You can specify a different currency
  /// by passing the [currency] argument.
  ///
  /// The [mode] argument is used to specify the mode of the balance sheet.
  /// The [id] argument is used to specify the stock id.
  /// The [currency] argument is used to specify the currency.
  ///
  /// ```dart
  /// // Get balance sheet for Apple in EUR
  /// final client = BavestRestClient(api_key);
  /// final balance = client.balance(SecurityIdentifier(symbol: "AAPL"), currency: 'EUR', mode: FinancialsMode.annual);
  /// ```
  Future<Balance> balance(SecurityIdentifier id,
      {String? currency, Freq mode = Freq.annual});

  /// The [fundamentals] method is used to get the fundamentals for a given stock symbol.
  ///
  /// The [id] argument is used to specify the stock id.
  ///
  /// ```dart
  /// // Get fundamentals for Apple
  /// final client = BavestRestClient(api_key);
  /// final fundamentals = client.fundamentals(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<Fundamentals> fundamentals(SecurityIdentifier id);

  /// The [esg] method is used to get the ESG scores for a given stock symbol.
  ///
  /// The [id] argument is used to specify the stock id.
  ///
  /// ```dart
  /// // Get ESG scores for Apple
  /// final client = BavestRestClient(api_key);
  /// final esg = client.esg(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<Esg> esg(SecurityIdentifier id);

  /// The [splits] method is used to get the splits for a given stock symbol.
  /// The [id] argument is used to specify the stock id.
  /// The [years] argument is used to specify the number of years to get the splits for.
  ///
  /// ```dart
  /// // Get splits for Apple in the last 5 years
  /// final client = BavestRestClient(api_key);
  /// final splits = client.splits(SecurityIdentifier(symbol: "AAPL"), years: 5);
  /// ```
  Future<Splits> splits(SecurityIdentifier id, {final int years = 1});

  /// The [sentiment] method is used to get the sentiment for a given stock symbol.
  ///
  /// The [id] argument is used to specify the stock id.
  ///
  /// ```dart
  /// // Get sentiment for Apple
  /// final client = BavestRestClient(api_key);
  /// final sentiment = client.sentiment(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<Sentiment> sentiment(SecurityIdentifier id);

  /// The [forex] method is used to get the forex rates for a given stock symbol.
  ///
  /// The [fromCurrency] argument is used to specify the from currency to convert.
  /// The [toCurrency] argument is used to specify the to currency to convert.
  ///
  /// ```dart
  /// // Get forex rates for EUR to USD
  /// final client = BavestRestClient(api_key);
  /// final forex = client.forex('EUR', 'USD');
  /// ```
  Future<Forex> forex(String fromCurrency, String toCurrency);

  /// The [search] method is used to get the search for given symbols.
  /// The [query] argument is used to specify the query to search for.
  ///
  /// ```dart
  /// // Search for Apple
  /// final client = BavestRestClient(api_key);
  /// final search = client.search(SecurityIdentifier(symbol: "AAPL"));
  /// ```
  Future<SearchResult> search(String query);

  /// The [etfProfile] method is used to get the ETF profile for a given ETF symbol.
  ///
  /// The [id] argument is used to specify the ETF id e.g. symbol.
  ///
  /// ```dart
  /// // Get ETF profile for SPY
  /// final client = BavestRestClient(api_key);
  /// final etfProfile = client.etfProfile('SPY');
  /// ```
  Future<EtfProfile> etfProfile(SecurityIdentifier id);

  /// The [etfHoldings] method is used to get the ETF holdings for a given ETF symbol.
  ///
  /// The [id] argument is used to specify the ETF id e.g. symbol
  ///
  /// ```dart
  /// // Get ETF holdings for SPY
  /// final client = BavestRestClient(api_key);
  /// final etfHoldings = client.etfHoldings('SPY');
  /// ```
  Future<EtfHoldings> etfHoldings(SecurityIdentifier id);

  /// The [etfSector] method is used to get the ETF sectors for a given ETF symbol.
  ///
  /// The [id] argument is used to specify the ETF id e.g. symbol
  ///
  /// ```dart
  /// // Get ETF sectors for SPY
  /// final client = BavestRestClient(api_key);
  /// final etfSector = client.etfSector('SPY');
  /// ```
  Future<EtfSector> etfSector(SecurityIdentifier id);

  /// The [etfCountry] method is used to get the ETF country for a given ETF symbol.
  ///
  /// The [id] argument is used to specify the ETF id e.g. symbol
  ///
  /// ```dart
  /// // Get ETF country for SPY
  /// final client = BavestRestClient(api_key);
  /// final etfCountry = client.etfCountry('SPY');
  /// ```
  Future<EtfCountry> etfCountry(SecurityIdentifier id);

  /// The [portfolioRegion] method is used to get the portfolio regions for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio regions for portfolio
  /// final client = BavestRestClient(api_key);
  ///
  /// // Create a portfolio
  /// final portfolioRegion = client.portfolioRegion(portfolio);
  /// ```
  Future<List<PortfolioRegion>> portfolioRegion(Portfolio portfolio);

  /// The [portfolioAllocation] method is used to get the portfolio allocation for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio allocation for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioAllocation = client.portfolioAllocation(portfolio);
  /// ```
  Future<List<PortfolioAllocation>> portfolioAllocation(Portfolio portfolio);

  /// The [portfolioMetrics] method is used to get the portfolio metrics for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  /// ```dart
  /// // Get portfolio metrics for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioMetrics = client.portfolioMetrics(portfolio);
  /// ```
  Future<PortfolioMetric> portfolioMetrics(Portfolio portfolio,
      {String currency = 'EUR'});

  /// The [portfolioSector] method is used to get the portfolio sectors for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio sectors for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioSector = client.portfolioSector(portfolio);
  /// ```
  Future<List<PortfolioSector>> portfolioSector(Portfolio portfolio,
      {String currency = "EUR"});

  /// The [portfolioBenchmark] method is used to get the portfolio benchmark for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio benchmark for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioBenchmark = client.portfolioBenchmark(portfolio);
  /// ```
  Future<void> portfolioBenchmark(Portfolio portfolio);

  /// The [portfolioPrice] method is used to get the portfolio price for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio price for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioPrice = client.portfolioPrice(portfolio);
  /// ```
  Future<Quote> portfolioPrice(Portfolio portfolio, {String currency = "EUR"});

  /// The [portfolioChart] method is used to get the portfolio chart for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio chart for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioChart = client.portfolioChart(portfolio, from: 1630352898, to: 1655848800, resolution:  CandleType.day);
  /// ```
  Future<Candles> portfolioChart(Portfolio portfolio,
      {String currency = "EUR",
      required int from,
      required int to,
      required CandleResolution resolution});

  /// The [portfolioStats] method is used to get the portfolio stats for a given portfolio.
  ///
  /// The [portfolio] argument is used to specify the portfolio.
  ///
  /// ```dart
  /// // Get portfolio stats for portfolio
  /// final client = BavestRestClient(api_key);
  /// final portfolioStats = client.portfolioStats(portfolio, from: 1630352898, to: 1655848800, resolution:  CandleType.day);
  /// ```
  Future<PortfolioStats> portfolioStats(Portfolio portfolio,
      {String currency = "EUR",
      required int from,
      required int to,
      required CandleResolution resolution});
}
