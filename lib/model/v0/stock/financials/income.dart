/// The [IncomeData] data represent the income data of the company.
class IncomeData {
  String? date;
  String? symbol;
  String? reportedCurrency;
  String? cik;
  String? fillingDate;
  String? acceptedDate;
  int? year;
  String? period;
  double? revenue;
  double? grossProfitRatio;
  double? generalAndAdministrativeExpenses;
  double? sellingAndMarketingExpenses;
  double? otherExpenses;
  double? costAndExpenses;
  double? interestIncome;
  double? interestExpense;
  double? depreciationAndAmortization;
  double? ebitda;
  double? ebitdaratio;
  double? operatingIncomeRatio;
  double? totalOtherIncomeExpensesNet;
  double? incomeBeforeTaxRatio;
  double? netIncome;
  double? netIncomeRatio;
  double? eps;
  double? weightedAverageShsOut;
  String? link;
  String? finalLink;
  double? costOfGoodsSold;
  double? dilutedAverageSharesOutstanding;
  double? dilutedEPS;
  double? ebit;
  double? grossIncome;
  double? pretaxIncome;
  double? provisionforIncomeTaxes;
  double? researchDevelopment;
  double? sgaExpense;
  double? totalOperatingExpense;

  IncomeData(
      {this.date,
      this.symbol,
      this.reportedCurrency,
      this.cik,
      this.fillingDate,
      this.acceptedDate,
      this.year,
      this.period,
      this.revenue,
      this.grossProfitRatio,
      this.generalAndAdministrativeExpenses,
      this.sellingAndMarketingExpenses,
      this.otherExpenses,
      this.costAndExpenses,
      this.interestIncome,
      this.interestExpense,
      this.depreciationAndAmortization,
      this.ebitda,
      this.ebitdaratio,
      this.operatingIncomeRatio,
      this.totalOtherIncomeExpensesNet,
      this.incomeBeforeTaxRatio,
      this.netIncome,
      this.netIncomeRatio,
      this.eps,
      this.weightedAverageShsOut,
      this.link,
      this.finalLink,
      this.costOfGoodsSold,
      this.dilutedAverageSharesOutstanding,
      this.dilutedEPS,
      this.ebit,
      this.grossIncome,
      this.pretaxIncome,
      this.provisionforIncomeTaxes,
      this.researchDevelopment,
      this.sgaExpense,
      this.totalOperatingExpense});

  IncomeData.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    symbol = json['symbol'];
    reportedCurrency = json['reportedCurrency'];
    cik = json['cik'];
    fillingDate = json['fillingDate'];
    acceptedDate = json['acceptedDate'];
    year = DateTime.parse(json['date']!).year;
    period = json['period'];
    revenue = json['revenue']?.toDouble();
    grossProfitRatio = json['grossProfitRatio']?.toDouble();
    generalAndAdministrativeExpenses =
        json['generalAndAdministrativeExpenses']?.toDouble();
    sellingAndMarketingExpenses =
        json['sellingAndMarketingExpenses']?.toDouble();
    otherExpenses = json['otherExpenses']?.toDouble();
    costAndExpenses = json['costAndExpenses']?.toDouble();
    interestIncome = json['interestIncome']?.toDouble();
    interestExpense = json['interestExpense']?.toDouble();
    depreciationAndAmortization =
        json['depreciationAndAmortization']?.toDouble();
    ebitda = json['ebitda']?.toDouble();
    ebitdaratio = json['ebitdaratio']?.toDouble();
    operatingIncomeRatio = json['operatingIncomeRatio']?.toDouble();
    totalOtherIncomeExpensesNet =
        json['totalOtherIncomeExpensesNet']?.toDouble();
    incomeBeforeTaxRatio = json['incomeBeforeTaxRatio']?.toDouble();
    netIncome = json['netIncome']?.toDouble();
    netIncomeRatio = json['netIncomeRatio']?.toDouble();
    eps = json['eps']?.toDouble();
    weightedAverageShsOut = json['weightedAverageShsOut']?.toDouble();
    link = json['link'];
    finalLink = json['finalLink'];
    costOfGoodsSold = json['costOfGoodsSold']?.toDouble();
    dilutedAverageSharesOutstanding =
        json['dilutedAverageSharesOutstanding']?.toDouble();
    dilutedEPS = json['dilutedEPS']?.toDouble();
    ebit = json['ebit']?.toDouble();
    grossIncome = json['grossIncome']?.toDouble();
    pretaxIncome = json['pretaxIncome']?.toDouble();
    provisionforIncomeTaxes = json['provisionforIncomeTaxes']?.toDouble();
    researchDevelopment = json['researchDevelopment']?.toDouble();
    sgaExpense = json['sgaExpense']?.toDouble();
    totalOperatingExpense = json['totalOperatingExpense']?.toDouble();
  }
}

class Income {
  Income({
    required this.incomeData,
    required this.symbol,
  });

  List<IncomeData>? incomeData;

  String? symbol;

  Income.fromJson(Map<String, dynamic> json) {
    if (json['financials'] != null) {
      incomeData = <IncomeData>[];
      json['financials'].forEach((v) {
        incomeData!.add(IncomeData.fromJson(v));
      });
    }
    symbol = json['symbol'];
  }
}
