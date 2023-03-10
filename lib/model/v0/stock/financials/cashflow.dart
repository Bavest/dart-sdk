/// The [CashFlowData] data represent the cash flow data of the company.
class CashFlowData {
  String? date;
  String? symbol;
  String? reportedCurrency;
  String? cik;
  String? fillingDate;
  String? acceptedDate;
  int? year;
  String? period;
  double? stockBasedCompensation;
  double? accountsReceivables;
  double? inventory;
  double? accountsPayables;
  double? otherWorkingCapital;
  double? otherNonCashItems;
  double? netCashProvidedByOperatingActivities;
  double? investmentsInPropertyPlantAndEquipment;
  double? acquisitionsNet;
  double? purchasesOfInvestments;
  double? salesMaturitiesOfInvestments;
  double? otherInvestingActivites;
  double? debtRepayment;
  double? commonStockIssued;
  double? otherFinancingActivites;
  double? effectOfForexChangesOnCash;
  double? cashAtEndOfPeriod;
  double? cashAtBeginningOfPeriod;
  String? link;
  String? finalLink;
  double? capex;
  double? cashDividendsPaid;
  double? changeinCash;
  double? changesinWorkingCapital;
  double? deferredTaxesInvestmentTaxCredit;
  double? depreciationAmortization;
  double? fcf;
  double? issuanceReductionCapitalStock;
  double? netCashFinancingActivities;
  double? netIncomeStartingLine;
  double? netInvestingCashFlow;
  double? netOperatingCashFlow;

  CashFlowData(
      {this.date,
      this.symbol,
      this.reportedCurrency,
      this.cik,
      this.fillingDate,
      this.acceptedDate,
      this.year,
      this.period,
      this.stockBasedCompensation,
      this.accountsReceivables,
      this.inventory,
      this.accountsPayables,
      this.otherWorkingCapital,
      this.otherNonCashItems,
      this.netCashProvidedByOperatingActivities,
      this.investmentsInPropertyPlantAndEquipment,
      this.acquisitionsNet,
      this.purchasesOfInvestments,
      this.salesMaturitiesOfInvestments,
      this.otherInvestingActivites,
      this.debtRepayment,
      this.commonStockIssued,
      this.otherFinancingActivites,
      this.effectOfForexChangesOnCash,
      this.cashAtEndOfPeriod,
      this.cashAtBeginningOfPeriod,
      this.link,
      this.finalLink,
      this.capex,
      this.cashDividendsPaid,
      this.changeinCash,
      this.changesinWorkingCapital,
      this.deferredTaxesInvestmentTaxCredit,
      this.depreciationAmortization,
      this.fcf,
      this.issuanceReductionCapitalStock,
      this.netCashFinancingActivities,
      this.netIncomeStartingLine,
      this.netInvestingCashFlow,
      this.netOperatingCashFlow});

  CashFlowData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    symbol = json['symbol'];
    reportedCurrency = json['reportedCurrency'];
    cik = json['cik'];
    fillingDate = json['fillingDate'];
    acceptedDate = json['acceptedDate'];
    year = int.parse(json['calendarYear']);
    period = json['period'];
    stockBasedCompensation = json['stockBasedCompensation']?.toDouble();
    accountsReceivables = json['accountsReceivables']?.toDouble();
    inventory = json['inventory']?.toDouble();
    accountsPayables = json['accountsPayables']?.toDouble();
    otherWorkingCapital = json['otherWorkingCapital']?.toDouble();
    otherNonCashItems = json['otherNonCashItems']?.toDouble();
    netCashProvidedByOperatingActivities =
        json['netCashProvidedByOperatingActivities']?.toDouble();
    investmentsInPropertyPlantAndEquipment =
        json['investmentsInPropertyPlantAndEquipment']?.toDouble();
    acquisitionsNet = json['acquisitionsNet']?.toDouble();
    purchasesOfInvestments = json['purchasesOfInvestments']?.toDouble();
    salesMaturitiesOfInvestments =
        json['salesMaturitiesOfInvestments']?.toDouble();
    otherInvestingActivites = json['otherInvestingActivites']?.toDouble();
    debtRepayment = json['debtRepayment']?.toDouble();
    commonStockIssued = json['commonStockIssued']?.toDouble();
    otherFinancingActivites = json['otherFinancingActivites']?.toDouble();
    effectOfForexChangesOnCash = json['effectOfForexChangesOnCash']?.toDouble();
    cashAtEndOfPeriod = json['cashAtEndOfPeriod']?.toDouble();
    cashAtBeginningOfPeriod = json['cashAtBeginningOfPeriod']?.toDouble();
    link = json['link'];
    finalLink = json['finalLink'];
    capex = json['capex']?.toDouble();
    cashDividendsPaid = json['cashDividendsPaid']?.toDouble();
    changeinCash = json['changeinCash']?.toDouble();
    changesinWorkingCapital = json['changesinWorkingCapital']?.toDouble();
    deferredTaxesInvestmentTaxCredit =
        json['deferredTaxesInvestmentTaxCredit']?.toDouble();
    depreciationAmortization = json['depreciationAmortization']?.toDouble();
    fcf = json['freeCashFlow']?.toDouble();
    issuanceReductionCapitalStock =
        json['issuanceReductionCapitalStock']?.toDouble();
    netCashFinancingActivities = json['netCashFinancingActivities']?.toDouble();
    netIncomeStartingLine = json['netIncomeStartingLine']?.toDouble();
    netInvestingCashFlow = json['netInvestingCashFlow']?.toDouble();
    netOperatingCashFlow = json['netOperatingCashFlow']?.toDouble();
  }
}

class Cashflow {
  Cashflow({
    required this.cashFlowData,
    required this.symbol,
  });

  List<CashFlowData>? cashFlowData;

  String symbol;

  static Cashflow fromJson(Map<String, dynamic> json) => Cashflow(
        cashFlowData: (json['financials'] as List<dynamic>?)
            ?.map(
              (e) => CashFlowData.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        symbol: (json['symbol'] ?? "") as String,
      );
}
