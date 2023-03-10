enum WebsocketEvent {
  /// The websocket is connected.
  connected,

  /// The websocket is disconnected.
  disconnected,

  /// The websocket is reconnecting.
  reconnecting,

  /// The websocket is reconnecting.
  reconnected,

  ///  The websocket indicate
  error,

  // The websocket is connecting
  connecting,
}

enum WebsocketEventAction {
  quote("quote"),
  candle("realtime/candle"),
  profile("stock/profile"),
  metric("stock/metric"),
  dividend("stock/dividend"),
  ipo("calender/ipo"),
  esg("stock/esg"),
  news("stock/news"),
  finance("stock/financials"),
  fundamentals("stock/fundamentals"),
  sentiment("sentiment"),
  split("split"),
  search("search"),
  forex("forex"),
  etfProfile("etf/profile"),
  etfSector("etf/sector"),
  etfCountry("etf/country"),
  etfHoldings("etf/holdings"),
  peers("stock/peers"),
  peersWidget("stock/peers/widget"),
  portfolioAllocation("portfolio/allocation"),
  portfolioRegion("portfolio/region"),
  portfolioStats("portfolio/stats"),
  portfolioPrice("portfolio/price"),
  portfolioBenchmark("portfolio/benchmark"),
  portfolioChart("portfolio/chart"),
  keepAlive("ping");

  const WebsocketEventAction(this.action);

  final String action;
}
