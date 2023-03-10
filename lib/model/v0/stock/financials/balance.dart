/// The [BalanceData] data represent the balance sheet of the company.
/// The balance sheet is a financial statement that reports a company's assets,
/// liabilities, and shareholders' equity at a specific point in time.
class BalanceData {
  String? date;
  String? symbol;
  String? reportedCurrency;
  String? cik;
  String? fillingDate;
  String? acceptedDate;
  int? year;
  String? period;
  double? cashAndCashEquivalents;
  double? shortTermInvestments;
  double? inventory;
  double? otherCurrentAssets;
  double? goodwill;
  double? intangibleAssets;
  double? goodwillAndIntangibleAssets;
  double? longTermInvestments;
  double? taxAssets;
  double? otherNonCurrentAssets;
  double? totalNonCurrentAssets;
  double? otherAssets;
  double? totalAssets;
  double? shortTermDebt;
  double? taxPayables;
  double? deferredRevenue;
  double? otherCurrentLiabilities;
  double? longTermDebt;
  double? deferredRevenueNonCurrent;
  double? deferredTaxLiabilitiesNonCurrent;
  double? otherNonCurrentLiabilities;
  double? totalNonCurrentLiabilities;
  double? otherLiabilities;
  double? capitalLeaseObligations;
  double? totalLiabilities;
  double? preferredStock;
  double? commonStock;
  double? retainedEarnings;
  double? othertotalStockholdersEquity;
  double? totalStockholdersEquity;
  double? minorityInterest;
  double? totalEquity;
  double? totalLiabilitiesAndTotalEquity;
  double? totalInvestments;
  double? totalDebt;
  double? netDebt;
  String? link;
  String? finalLink;
  double? accountsPayable;
  double? cashShortTermInvestments;
  double? currentAssets;
  double? currentLiabilities;
  double? liabilitiesShareholdersEquity;
  double? otherEquity;
  double? propertyPlantEquipment;
  double? totalReceivables;

  bool isQuarterly() {
    return period!.contains('Q');
  }

  BalanceData(
      {this.date,
      this.symbol,
      this.reportedCurrency,
      this.cik,
      this.fillingDate,
      this.acceptedDate,
      this.year,
      this.period,
      this.cashAndCashEquivalents,
      this.shortTermInvestments,
      this.inventory,
      this.otherCurrentAssets,
      this.goodwill,
      this.intangibleAssets,
      this.goodwillAndIntangibleAssets,
      this.longTermInvestments,
      this.taxAssets,
      this.otherNonCurrentAssets,
      this.totalNonCurrentAssets,
      this.otherAssets,
      this.totalAssets,
      this.shortTermDebt,
      this.taxPayables,
      this.deferredRevenue,
      this.otherCurrentLiabilities,
      this.longTermDebt,
      this.deferredRevenueNonCurrent,
      this.deferredTaxLiabilitiesNonCurrent,
      this.otherNonCurrentLiabilities,
      this.totalNonCurrentLiabilities,
      this.otherLiabilities,
      this.capitalLeaseObligations,
      this.totalLiabilities,
      this.preferredStock,
      this.commonStock,
      this.retainedEarnings,
      this.othertotalStockholdersEquity,
      this.totalStockholdersEquity,
      this.minorityInterest,
      this.totalEquity,
      this.totalLiabilitiesAndTotalEquity,
      this.totalInvestments,
      this.totalDebt,
      this.netDebt,
      this.link,
      this.finalLink,
      this.accountsPayable,
      this.cashShortTermInvestments,
      this.currentAssets,
      this.currentLiabilities,
      this.liabilitiesShareholdersEquity,
      this.otherEquity,
      this.propertyPlantEquipment,
      this.totalReceivables});

  BalanceData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    symbol = json['symbol'];
    reportedCurrency = json['reportedCurrency'];
    cik = json['cik'];
    fillingDate = json['fillingDate'];
    acceptedDate = json['acceptedDate'];
    year = DateTime.parse(json['date']!).year;
    period = json['period'];
    cashAndCashEquivalents = json['cashAndCashEquivalents']?.toDouble();
    shortTermInvestments = json['shortTermInvestments']?.toDouble();
    inventory = json['inventory']?.toDouble();
    otherCurrentAssets = json['otherCurrentAssets']?.toDouble();
    goodwill = json['goodwill']?.toDouble();
    intangibleAssets = json['intangibleAssets']?.toDouble();
    goodwillAndIntangibleAssets =
        json['goodwillAndIntangibleAssets']?.toDouble();
    longTermInvestments = json['longTermInvestments']?.toDouble();
    taxAssets = json['taxAssets']?.toDouble();
    otherNonCurrentAssets = json['otherNonCurrentAssets']?.toDouble();
    totalNonCurrentAssets = json['totalNonCurrentAssets']?.toDouble();
    otherAssets = json['otherAssets']?.toDouble();
    totalAssets = json['totalAssets']?.toDouble();
    shortTermDebt = json['shortTermDebt']?.toDouble();
    taxPayables = json['taxPayables']?.toDouble();
    deferredRevenue = json['deferredRevenue']?.toDouble();
    otherCurrentLiabilities = json['otherCurrentLiabilities']?.toDouble();
    longTermDebt = json['longTermDebt']?.toDouble();
    deferredRevenueNonCurrent = json['deferredRevenueNonCurrent']?.toDouble();
    deferredTaxLiabilitiesNonCurrent =
        json['deferredTaxLiabilitiesNonCurrent']?.toDouble();
    otherNonCurrentLiabilities = json['otherNonCurrentLiabilities']?.toDouble();
    totalNonCurrentLiabilities = json['totalNonCurrentLiabilities']?.toDouble();
    otherLiabilities = json['otherLiabilities']?.toDouble();
    capitalLeaseObligations = json['capitalLeaseObligations']?.toDouble();
    totalLiabilities = json['totalLiabilities']?.toDouble();
    preferredStock = json['preferredStock']?.toDouble();
    commonStock = json['commonStock']?.toDouble();
    retainedEarnings = json['retainedEarnings']?.toDouble();
    othertotalStockholdersEquity =
        json['othertotalStockholdersEquity']?.toDouble();
    totalStockholdersEquity = json['totalStockholdersEquity']?.toDouble();
    minorityInterest = json['minorityInterest']?.toDouble();
    totalEquity = json['totalEquity']?.toDouble();
    totalLiabilitiesAndTotalEquity =
        json['totalLiabilitiesAndTotalEquity']?.toDouble();
    totalInvestments = json['totalInvestments']?.toDouble();
    totalDebt = json['totalDebt']?.toDouble();
    netDebt = json['netDebt']?.toDouble();
    link = json['link'];
    finalLink = json['finalLink'];
    accountsPayable = json['accountsPayable']?.toDouble();
    cashShortTermInvestments = json['cashShortTermInvestments']?.toDouble();
    currentAssets = json['currentAssets']?.toDouble();
    currentLiabilities = json['currentLiabilities']?.toDouble();
    liabilitiesShareholdersEquity =
        json['liabilitiesShareholdersEquity']?.toDouble();
    otherEquity = json['otherEquity']?.toDouble();
    propertyPlantEquipment = json['propertyPlantEquipment']?.toDouble();
    totalReceivables = json['totalReceivables']?.toDouble();
  }
}

class Balance {
  List<BalanceData>? balanceData;
  String? symbol;

  Balance({this.balanceData, this.symbol});

  Balance.fromJson(Map<String, dynamic> json) {
    if (json['financials'] != null) {
      balanceData = <BalanceData>[];
      json['financials'].forEach((v) {
        balanceData!.add(BalanceData.fromJson(v));
      });
    }
    symbol = json['symbol'];
  }
}
