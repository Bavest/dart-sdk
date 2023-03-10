/// The [Metric] data represent the metrics of the company.
class Metric {

  /// The [symbol] data represent the symbol of the company.
  String? symbol;

  /// The [date] data represent the date of the metric.
  String? date;

  String? period;
  double? revenueGrowth;
  double? grossProfitGrowth;
  double? ebitgrowth;
  double? operatingIncomeGrowth;
  double? netIncomeGrowth;
  double? epsgrowth;
  double? epsdilutedGrowth;
  double? weightedAverageSharesGrowth;
  double? weightedAverageSharesDilutedGrowth;
  double? dividendsperShareGrowth;
  double? operatingCashFlowGrowth;
  double? freeCashFlowGrowth;
  double? tenYRevenueGrowthPerShare;
  double? fiveYRevenueGrowthPerShare;
  double? threeYRevenueGrowthPerShare;
  double? tenYOperatingCFGrowthPerShare;
  double? fiveYOperatingCFGrowthPerShare;
  double? threeYOperatingCFGrowthPerShare;
  double? tenYNetIncomeGrowthPerShare;
  double? fiveYNetIncomeGrowthPerShare;
  double? threeYNetIncomeGrowthPerShare;
  double? tenYShareholdersEquityGrowthPerShare;
  double? fiveYShareholdersEquityGrowthPerShare;
  double? threeYShareholdersEquityGrowthPerShare;
  double? tenYDividendperShareGrowthPerShare;
  double? fiveYDividendperShareGrowthPerShare;
  double? threeYDividendperShareGrowthPerShare;
  double? receivablesGrowth;
  double? inventoryGrowth;
  double? assetGrowth;
  double? bookValueperShareGrowth;
  double? debtGrowth;
  double? rdexpenseGrowth;
  double? sgaexpensesGrowth;
  double? revenuePerShare;
  double? netIncomePerShare;
  double? operatingCashFlowPerShare;
  double? freeCashFlowPerShare;
  double? cashPerShare;
  double? bookValuePerShare;
  double? tangibleBookValuePerShare;
  double? shareholdersEquityPerShare;
  double? interestDebtPerShare;
  double? marketCap;
  double? enterpriseValue;
  double? peRatio;
  double? priceToSalesRatio;
  double? pocfratio;
  double? pfcfRatio;
  double? pbRatio;
  double? ptbRatio;
  double? evToSales;
  double? enterpriseValueOverEBITDA;
  double? evToOperatingCashFlow;
  double? evToFreeCashFlow;
  double? earningsYield;
  double? freeCashFlowYield;
  double? debtToEquity;
  double? debtToAssets;
  double? netDebtToEBITDA;
  double? currentRatio;
  double? interestCoverage;
  double? incomeQuality;
  double? dividendYield;
  double? dividendYieldPercentage;
  double? payoutRatio;
  double? salesGeneralAndAdministrativeToRevenue;
  double? researchAndDevelopementToRevenue;
  double? intangiblesToTotalAssets;
  double? capexToOperatingCashFlow;
  double? capexToRevenue;
  double? capexToDepreciation;
  double? stockBasedCompensationToRevenue;
  double? grahamNumber;
  double? roic;
  double? returnOnTangibleAssets;
  double? grahamNetNet;
  double? workingCapital;
  double? tangibleAssetValue;
  double? netCurrentAssetValue;
  double? investedCapital;
  double? averageReceivables;
  double? averagePayables;
  double? averageInventory;
  double? daysSalesOutstanding;
  double? daysPayablesOutstanding;
  double? daysOfInventoryOnHand;
  double? receivablesTurnover;
  double? payablesTurnover;
  double? inventoryTurnover;
  double? roe;
  double? capexPerShare;
  double? dividendPerShare;
  double? debtToMarketCap;
  double? d1DayPriceReturnDaily;
  double? d5DayPriceReturnDaily;
  double? d4WeekPriceReturnDaily;
  double? d13WeekPriceReturnDaily;
  double? d26WeekPriceReturnDaily;
  double? yearToDatePriceReturnDaily;
  double? d1yearPriceReturnDaily;
  double? d3yearPriceReturnDaily;
  double? d5yearPriceReturnDaily;
  double? d10yearPriceReturnDaily;
  double? maxPriceReturnDaily;

  Metric(
      {symbol,
      date,
      period,
      revenueGrowth,
      grossProfitGrowth,
      ebitgrowth,
      operatingIncomeGrowth,
      netIncomeGrowth,
      epsgrowth,
      epsdilutedGrowth,
      weightedAverageSharesGrowth,
      weightedAverageSharesDilutedGrowth,
      dividendsperShareGrowth,
      operatingCashFlowGrowth,
      freeCashFlowGrowth,
      tenYRevenueGrowthPerShare,
      fiveYRevenueGrowthPerShare,
      threeYRevenueGrowthPerShare,
      tenYOperatingCFGrowthPerShare,
      fiveYOperatingCFGrowthPerShare,
      threeYOperatingCFGrowthPerShare,
      tenYNetIncomeGrowthPerShare,
      fiveYNetIncomeGrowthPerShare,
      threeYNetIncomeGrowthPerShare,
      tenYShareholdersEquityGrowthPerShare,
      fiveYShareholdersEquityGrowthPerShare,
      threeYShareholdersEquityGrowthPerShare,
      tenYDividendperShareGrowthPerShare,
      fiveYDividendperShareGrowthPerShare,
      threeYDividendperShareGrowthPerShare,
      receivablesGrowth,
      inventoryGrowth,
      assetGrowth,
      bookValueperShareGrowth,
      debtGrowth,
      rdexpenseGrowth,
      sgaexpensesGrowth,
      revenuePerShare,
      netIncomePerShare,
      operatingCashFlowPerShare,
      freeCashFlowPerShare,
      cashPerShare,
      bookValuePerShare,
      tangibleBookValuePerShare,
      shareholdersEquityPerShare,
      interestDebtPerShare,
      marketCap,
      enterpriseValue,
      peRatio,
      priceToSalesRatio,
      pocfratio,
      pfcfRatio,
      pbRatio,
      ptbRatio,
      evToSales,
      enterpriseValueOverEBITDA,
      evToOperatingCashFlow,
      evToFreeCashFlow,
      earningsYield,
      freeCashFlowYield,
      debtToEquity,
      debtToAssets,
      netDebtToEBITDA,
      currentRatio,
      interestCoverage,
      incomeQuality,
      dividendYield,
      dividendYieldPercentage,
      payoutRatio,
      salesGeneralAndAdministrativeToRevenue,
      researchAndDevelopementToRevenue,
      intangiblesToTotalAssets,
      capexToOperatingCashFlow,
      capexToRevenue,
      capexToDepreciation,
      stockBasedCompensationToRevenue,
      grahamNumber,
      roic,
      returnOnTangibleAssets,
      grahamNetNet,
      workingCapital,
      tangibleAssetValue,
      netCurrentAssetValue,
      investedCapital,
      averageReceivables,
      averagePayables,
      averageInventory,
      daysSalesOutstanding,
      daysPayablesOutstanding,
      daysOfInventoryOnHand,
      receivablesTurnover,
      payablesTurnover,
      inventoryTurnover,
      roe,
      capexPerShare,
      dividendPerShare,
      debtToMarketCap,
      d1DayPriceReturnDaily,
      d5DayPriceReturnDaily,
      d4WeekPriceReturnDaily,
      d13WeekPriceReturnDaily,
      d26WeekPriceReturnDaily,
      yearToDatePriceReturnDaily,
      d1yearPriceReturnDaily,
      d3yearPriceReturnDaily,
      d5yearPriceReturnDaily,
      d10yearPriceReturnDaily,
      maxPriceReturnDaily});

  Metric.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    date = json['date'];
    period = json['period'];
    revenueGrowth = json['revenueGrowth']?.toDouble();
    grossProfitGrowth = json['grossProfitGrowth']?.toDouble();
    ebitgrowth = json['ebitgrowth']?.toDouble();
    operatingIncomeGrowth = json['operatingIncomeGrowth']?.toDouble();
    netIncomeGrowth = json['netIncomeGrowth']?.toDouble();
    epsgrowth = json['epsgrowth']?.toDouble();
    epsdilutedGrowth = json['epsdilutedGrowth']?.toDouble();
    weightedAverageSharesGrowth = json['weightedAverageSharesGrowth']?.toDouble();
    weightedAverageSharesDilutedGrowth =
        json['weightedAverageSharesDilutedGrowth']?.toDouble();
    dividendsperShareGrowth = json['dividendsperShareGrowth']?.toDouble();
    operatingCashFlowGrowth = json['operatingCashFlowGrowth']?.toDouble();
    freeCashFlowGrowth = json['freeCashFlowGrowth']?.toDouble();
    tenYRevenueGrowthPerShare = json['tenYRevenueGrowthPerShare']?.toDouble();
    fiveYRevenueGrowthPerShare = json['fiveYRevenueGrowthPerShare']?.toDouble();
    threeYRevenueGrowthPerShare = json['threeYRevenueGrowthPerShare']?.toDouble();
    tenYOperatingCFGrowthPerShare = json['tenYOperatingCFGrowthPerShare']?.toDouble();
    fiveYOperatingCFGrowthPerShare = json['fiveYOperatingCFGrowthPerShare']?.toDouble();
    threeYOperatingCFGrowthPerShare = json['threeYOperatingCFGrowthPerShare']?.toDouble();
    tenYNetIncomeGrowthPerShare = json['tenYNetIncomeGrowthPerShare']?.toDouble();
    fiveYNetIncomeGrowthPerShare = json['fiveYNetIncomeGrowthPerShare']?.toDouble();
    threeYNetIncomeGrowthPerShare = json['threeYNetIncomeGrowthPerShare']?.toDouble();
    tenYShareholdersEquityGrowthPerShare =
        json['tenYShareholdersEquityGrowthPerShare']?.toDouble();
    fiveYShareholdersEquityGrowthPerShare =
        json['fiveYShareholdersEquityGrowthPerShare']?.toDouble();
    threeYShareholdersEquityGrowthPerShare =
        json['threeYShareholdersEquityGrowthPerShare']?.toDouble();
    tenYDividendperShareGrowthPerShare =
        json['tenYDividendperShareGrowthPerShare']?.toDouble();
    fiveYDividendperShareGrowthPerShare =
        json['fiveYDividendperShareGrowthPerShare']?.toDouble();
    threeYDividendperShareGrowthPerShare =
        json['threeYDividendperShareGrowthPerShare']?.toDouble();
    receivablesGrowth = json['receivablesGrowth']?.toDouble();
    inventoryGrowth = json['inventoryGrowth']?.toDouble();
    assetGrowth = json['assetGrowth']?.toDouble();
    bookValueperShareGrowth = json['bookValueperShareGrowth']?.toDouble();
    debtGrowth = json['debtGrowth']?.toDouble();
    rdexpenseGrowth = json['rdexpenseGrowth']?.toDouble();
    sgaexpensesGrowth = json['sgaexpensesGrowth']?.toDouble();
    revenuePerShare = json['revenuePerShare']?.toDouble();
    netIncomePerShare = json['netIncomePerShare']?.toDouble();
    operatingCashFlowPerShare = json['operatingCashFlowPerShare']?.toDouble();
    freeCashFlowPerShare = json['freeCashFlowPerShare']?.toDouble();
    cashPerShare = json['cashPerShare']?.toDouble();
    bookValuePerShare = json['bookValuePerShare']?.toDouble();
    tangibleBookValuePerShare = json['tangibleBookValuePerShare']?.toDouble();
    shareholdersEquityPerShare = json['shareholdersEquityPerShare']?.toDouble();
    interestDebtPerShare = json['interestDebtPerShare']?.toDouble();
    marketCap = json['marketCap']?.toDouble();
    enterpriseValue = json['enterpriseValue']?.toDouble();
    peRatio = json['peRatio']?.toDouble();
    priceToSalesRatio = json['priceToSalesRatio']?.toDouble();
    pocfratio = json['pocfratio']?.toDouble();
    pfcfRatio = json['pfcfRatio']?.toDouble();
    pbRatio = json['pbRatio']?.toDouble();
    ptbRatio = json['ptbRatio']?.toDouble();
    evToSales = json['evToSales']?.toDouble();
    enterpriseValueOverEBITDA = json['enterpriseValueOverEBITDA']?.toDouble();
    evToOperatingCashFlow = json['evToOperatingCashFlow']?.toDouble();
    evToFreeCashFlow = json['evToFreeCashFlow']?.toDouble();
    earningsYield = json['earningsYield']?.toDouble();
    freeCashFlowYield = json['freeCashFlowYield']?.toDouble();
    debtToEquity = json['debtToEquity']?.toDouble();
    debtToAssets = json['debtToAssets']?.toDouble();
    netDebtToEBITDA = json['netDebtToEBITDA']?.toDouble();
    currentRatio = json['currentRatio']?.toDouble();
    interestCoverage = json['interestCoverage']?.toDouble();
    incomeQuality = json['incomeQuality']?.toDouble();
    dividendYield = json['dividendYield']?.toDouble();
    dividendYieldPercentage = json['dividendYieldPercentage']?.toDouble();
    payoutRatio = json['payoutRatio']?.toDouble();
    salesGeneralAndAdministrativeToRevenue =
        json['salesGeneralAndAdministrativeToRevenue']?.toDouble();
    researchAndDevelopementToRevenue = json['researchAndDevelopementToRevenue']?.toDouble();
    intangiblesToTotalAssets = json['intangiblesToTotalAssets']?.toDouble();
    capexToOperatingCashFlow = json['capexToOperatingCashFlow']?.toDouble();
    capexToRevenue = json['capexToRevenue']?.toDouble();
    capexToDepreciation = json['capexToDepreciation']?.toDouble();
    stockBasedCompensationToRevenue = json['stockBasedCompensationToRevenue']?.toDouble();
    grahamNumber = json['grahamNumber']?.toDouble();
    roic = json['roic']?.toDouble();
    returnOnTangibleAssets = json['returnOnTangibleAssets']?.toDouble();
    grahamNetNet = json['grahamNetNet']?.toDouble();
    workingCapital = json['workingCapital']?.toDouble();
    tangibleAssetValue = json['tangibleAssetValue']?.toDouble();
    netCurrentAssetValue = json['netCurrentAssetValue']?.toDouble();
    investedCapital = json['investedCapital']?.toDouble();
    averageReceivables = json['averageReceivables']?.toDouble();
    averagePayables = json['averagePayables']?.toDouble();
    averageInventory = json['averageInventory']?.toDouble();
    daysSalesOutstanding = json['daysSalesOutstanding']?.toDouble();
    daysPayablesOutstanding = json['daysPayablesOutstanding']?.toDouble();
    daysOfInventoryOnHand = json['daysOfInventoryOnHand']?.toDouble();
    receivablesTurnover = json['receivablesTurnover']?.toDouble();
    payablesTurnover = json['payablesTurnover']?.toDouble();
    inventoryTurnover = json['inventoryTurnover']?.toDouble();
    roe = json['roe']?.toDouble();
    capexPerShare = json['capexPerShare']?.toDouble();
    dividendPerShare = json['dividendPerShare']?.toDouble();
    debtToMarketCap = json['debtToMarketCap']?.toDouble();
    d1DayPriceReturnDaily = json['1DayPriceReturnDaily']?.toDouble();
    d5DayPriceReturnDaily = json['5DayPriceReturnDaily']?.toDouble();
    d4WeekPriceReturnDaily = json['4WeekPriceReturnDaily']?.toDouble();
    d13WeekPriceReturnDaily = json['13WeekPriceReturnDaily']?.toDouble();
    d26WeekPriceReturnDaily = json['26WeekPriceReturnDaily']?.toDouble();
    yearToDatePriceReturnDaily = json['yearToDatePriceReturnDaily']?.toDouble();
    d1yearPriceReturnDaily = json['1yearPriceReturnDaily']?.toDouble();
    d3yearPriceReturnDaily = json['3yearPriceReturnDaily']?.toDouble();
    d5yearPriceReturnDaily = json['5yearPriceReturnDaily']?.toDouble();
    d10yearPriceReturnDaily = json['10yearPriceReturnDaily']?.toDouble();
    maxPriceReturnDaily = json['maxPriceReturnDaily']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbol'] = symbol;
    data['date'] = date;
    data['period'] = period;
    data['revenueGrowth'] = revenueGrowth;
    data['grossProfitGrowth'] = grossProfitGrowth;
    data['ebitgrowth'] = ebitgrowth;
    data['operatingIncomeGrowth'] = operatingIncomeGrowth;
    data['netIncomeGrowth'] = netIncomeGrowth;
    data['epsgrowth'] = epsgrowth;
    data['epsdilutedGrowth'] = epsdilutedGrowth;
    data['weightedAverageSharesGrowth'] = weightedAverageSharesGrowth;
    data['weightedAverageSharesDilutedGrowth'] =
        weightedAverageSharesDilutedGrowth;
    data['dividendsperShareGrowth'] = dividendsperShareGrowth;
    data['operatingCashFlowGrowth'] = operatingCashFlowGrowth;
    data['freeCashFlowGrowth'] = freeCashFlowGrowth;
    data['tenYRevenueGrowthPerShare'] = tenYRevenueGrowthPerShare;
    data['fiveYRevenueGrowthPerShare'] = fiveYRevenueGrowthPerShare;
    data['threeYRevenueGrowthPerShare'] = threeYRevenueGrowthPerShare;
    data['tenYOperatingCFGrowthPerShare'] = tenYOperatingCFGrowthPerShare;
    data['fiveYOperatingCFGrowthPerShare'] =
        fiveYOperatingCFGrowthPerShare;
    data['threeYOperatingCFGrowthPerShare'] =
        threeYOperatingCFGrowthPerShare;
    data['tenYNetIncomeGrowthPerShare'] = tenYNetIncomeGrowthPerShare;
    data['fiveYNetIncomeGrowthPerShare'] = fiveYNetIncomeGrowthPerShare;
    data['threeYNetIncomeGrowthPerShare'] = threeYNetIncomeGrowthPerShare;
    data['tenYShareholdersEquityGrowthPerShare'] =
        tenYShareholdersEquityGrowthPerShare;
    data['fiveYShareholdersEquityGrowthPerShare'] =
        fiveYShareholdersEquityGrowthPerShare;
    data['threeYShareholdersEquityGrowthPerShare'] =
        threeYShareholdersEquityGrowthPerShare;
    data['tenYDividendperShareGrowthPerShare'] =
        tenYDividendperShareGrowthPerShare;
    data['fiveYDividendperShareGrowthPerShare'] =
        fiveYDividendperShareGrowthPerShare;
    data['threeYDividendperShareGrowthPerShare'] =
        threeYDividendperShareGrowthPerShare;
    data['receivablesGrowth'] = receivablesGrowth;
    data['inventoryGrowth'] = inventoryGrowth;
    data['assetGrowth'] = assetGrowth;
    data['bookValueperShareGrowth'] = bookValueperShareGrowth;
    data['debtGrowth'] = debtGrowth;
    data['rdexpenseGrowth'] = rdexpenseGrowth;
    data['sgaexpensesGrowth'] = sgaexpensesGrowth;
    data['revenuePerShare'] = revenuePerShare;
    data['netIncomePerShare'] = netIncomePerShare;
    data['operatingCashFlowPerShare'] = operatingCashFlowPerShare;
    data['freeCashFlowPerShare'] = freeCashFlowPerShare;
    data['cashPerShare'] = cashPerShare;
    data['bookValuePerShare'] = bookValuePerShare;
    data['tangibleBookValuePerShare'] = tangibleBookValuePerShare;
    data['shareholdersEquityPerShare'] = shareholdersEquityPerShare;
    data['interestDebtPerShare'] = interestDebtPerShare;
    data['marketCap'] = marketCap;
    data['enterpriseValue'] = enterpriseValue;
    data['peRatio'] = peRatio;
    data['priceToSalesRatio'] = priceToSalesRatio;
    data['pocfratio'] = pocfratio;
    data['pfcfRatio'] = pfcfRatio;
    data['pbRatio'] = pbRatio;
    data['ptbRatio'] = ptbRatio;
    data['evToSales'] = evToSales;
    data['enterpriseValueOverEBITDA'] = enterpriseValueOverEBITDA;
    data['evToOperatingCashFlow'] = evToOperatingCashFlow;
    data['evToFreeCashFlow'] = evToFreeCashFlow;
    data['earningsYield'] = earningsYield;
    data['freeCashFlowYield'] = freeCashFlowYield;
    data['debtToEquity'] = debtToEquity;
    data['debtToAssets'] = debtToAssets;
    data['netDebtToEBITDA'] = netDebtToEBITDA;
    data['currentRatio'] = currentRatio;
    data['interestCoverage'] = interestCoverage;
    data['incomeQuality'] = incomeQuality;
    data['dividendYield'] = dividendYield;
    data['dividendYieldPercentage'] = dividendYieldPercentage;
    data['payoutRatio'] = payoutRatio;
    data['salesGeneralAndAdministrativeToRevenue'] =
        salesGeneralAndAdministrativeToRevenue;
    data['researchAndDevelopementToRevenue'] =
        researchAndDevelopementToRevenue;
    data['intangiblesToTotalAssets'] = intangiblesToTotalAssets;
    data['capexToOperatingCashFlow'] = capexToOperatingCashFlow;
    data['capexToRevenue'] = capexToRevenue;
    data['capexToDepreciation'] = capexToDepreciation;
    data['stockBasedCompensationToRevenue'] =
        stockBasedCompensationToRevenue;
    data['grahamNumber'] = grahamNumber;
    data['roic'] = roic;
    data['returnOnTangibleAssets'] = returnOnTangibleAssets;
    data['grahamNetNet'] = grahamNetNet;
    data['workingCapital'] = workingCapital;
    data['tangibleAssetValue'] = tangibleAssetValue;
    data['netCurrentAssetValue'] = netCurrentAssetValue;
    data['investedCapital'] = investedCapital;
    data['averageReceivables'] = averageReceivables;
    data['averagePayables'] = averagePayables;
    data['averageInventory'] = averageInventory;
    data['daysSalesOutstanding'] = daysSalesOutstanding;
    data['daysPayablesOutstanding'] = daysPayablesOutstanding;
    data['daysOfInventoryOnHand'] = daysOfInventoryOnHand;
    data['receivablesTurnover'] = receivablesTurnover;
    data['payablesTurnover'] = payablesTurnover;
    data['inventoryTurnover'] = inventoryTurnover;
    data['roe'] = roe;
    data['capexPerShare'] = capexPerShare;
    data['dividendPerShare'] = dividendPerShare;
    data['debtToMarketCap'] = debtToMarketCap;
    data['1DayPriceReturnDaily'] = d1DayPriceReturnDaily;
    data['5DayPriceReturnDaily'] = d5DayPriceReturnDaily;
    data['4WeekPriceReturnDaily'] = d4WeekPriceReturnDaily;
    data['13WeekPriceReturnDaily'] = d13WeekPriceReturnDaily;
    data['26WeekPriceReturnDaily'] = d26WeekPriceReturnDaily;
    data['yearToDatePriceReturnDaily'] = yearToDatePriceReturnDaily;
    data['1yearPriceReturnDaily'] = d1yearPriceReturnDaily;
    data['3yearPriceReturnDaily'] = d3yearPriceReturnDaily;
    data['5yearPriceReturnDaily'] = d5yearPriceReturnDaily;
    data['10yearPriceReturnDaily'] = d10yearPriceReturnDaily;
    data['maxPriceReturnDaily'] = maxPriceReturnDaily;
    return data;
  }
}
