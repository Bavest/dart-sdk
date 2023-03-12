<p align="center">
  <img  src="https://www.bavest.co/images/api-home.png">
</p>

# Bavest Python SDK

 <img src="https://img.shields.io/pub/points/bavest"> <img src="https://img.shields.io/pub/likes/bavest" > <img wsymbolth=300 src="https://img.shields.io/badge/license-MIT-brightgreen" > <img wsymbolth=300 src="https://img.shields.io/badge/tests-passing-brightgreen" > <img src="https://img.shields.io/github/issues/Bavest/dart-sdk">

**The Bavest Finance SDK is an open-source library to create finance products in weeks. Bavest offers:**

* Financial api with 99.95% uptime
* Easy to integrate and use
* Free for open-source projects


## Get API key

First, you need to create a [Bavest](https://www.dashboard.bavest.com) account.
After registration, you will find your api key in the dashboard.

### Free API key for Open-Source projects

First, use the [TypeForm](https://e0nemwrtihz.typeform.com/to/xT8KfS0I) to provide all required information.
After, you will receive an API key via E-Mail.


### Install the package

First install the flutter package, it is available at [pub.dev](https://pub.dev/packages/bavest):

 ```dart 
flutter pub add bavest 
 ```

### Usage

1. Now, use the package in your project:
 ```dart 
import 'package:bavest/bavest.dart'; 
 ```

2. Create a finance `client`:
 ```dart
var client = BavestRestClient(apiKey);
  ```

3. Now you can use it to get data from the api:

```dart
var client = BavestRestClient(apiKey);
final id = SecurityIdentifier(symbol: "AAPL");
var quote = await client.quote(id);
```


### Examples

```dart
var profile = await client.profile(id);
var metric = await client.metric(id);
var dividend = await client.dividends(id);
var companyNews = await client.companyNews(id);
var fundamentals = await client.fundamentals(id);
var peersWidget = await client.peersWidget(id);
var forex = await client.forex("EUR", "USD");
var sentiment = await client.sentiment(id);
var splits = await client.splits(id, years: 5);

// ETF
final id = SecurityIdentifier(symbol: "ARKK");
var etfSector = await client.etfSector(id);
var etfCountry = await client.etfCountry(id);
var etfHoldings = await client.etfHoldings(id);
var etfProfile = await client.etfProfile(id);

// Portfolio methods
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
var resolution = CandleType.day;

await client.portfolioStats(portfolio,
    from: from, to: to, resolution: resolution);

var allocation = Portfolio.fromJson({
  "portfolio_items": [
    {
      "symbol": "BNTX",
      "amount": 10
    },
    {
      "symbol": "AAPL",
      "amount": 4
    },
    {
      "symbol": "SAP.DE",
      "amount": 4
    }
  ]
});


await client.portfolioPrice(portfolio);
await client.portfolioAllocation(allocation);
await client.portfolioRegion(allocation);
await client.portfolioSector(allocation);
await client.portfolioPrice(portfolio);
await client.portfolioChart(portfolio,
    from: from, to: to, resolution: resolution);
 ```
