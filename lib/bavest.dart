/// The Bavest Finance SDK
/// The SDK is a wrapper around the [Bavest Finance API](https://bavest.finance/api/v0/docs).
library bavest;

/// Client
export 'client/bavest_rest_client.dart';

/// model
export 'model/v0/stock/candle/candle.dart';
export 'model/v0/stock/quote/quote.dart';
export 'model/v0/stock/profile/profile.dart';
export 'model/v0/stock/metric/metric.dart';
export 'model/v0/stock/dividend/dividend.dart';
export 'model/v0/stock/ipo/ipo.dart';
export 'model/v0/stock/news/news.dart';
export 'model/v0/stock/financials/income.dart';
export 'model/v0/stock/financials/cashflow.dart';
export 'model/v0/stock/financials/financials_mode.dart';
export 'model/v0/stock/financials/balance.dart';
export 'model/v0/stock/fundamentals/fundamentals.dart';
export 'model/v0/sentiment/sentiment.dart';
export 'model/v0/stock/split/split.dart';
export 'model/v0/forex/forex.dart';
export 'model/v0/security/security_type.dart';
export 'model/v0/etf/profile/etf_profile.dart';
export 'model/v0/etf/sector/etf_sector.dart';
export 'model/v0/etf/country/etf_country.dart';
export 'model/v0/etf/holdings/etf_holdings.dart';

/// Portfolio
export 'model/v0/portfolio/portfolio.dart';
export 'model/v0/portfolio/allocation/portfolio_allocation.dart';
export 'model/v0/portfolio/region/portfolio_region.dart';
export 'model/v0/portfolio/stats/portfolio_stats.dart';
export 'model/v0/portfolio/stats/risk_model.dart';
export 'model/v0/portfolio/trade_direction.dart';

/// Widgets
export 'model/v0/widget/peers/peers.dart';
