import 'package:bavest/model/v0/stock/financials/balance.dart';
import 'package:bavest/model/v0/stock/financials/cashflow.dart';
import 'package:bavest/model/v0/stock/financials/income.dart';

/// The [Financials] class is used to store all financials of a stock
/// e.g. [Balance], [Cashflow], [Income].
class Financials {
  /// The [Balance] class is used to store all balance data of a stock.
  Balance? balance;

  /// The [Cashflow] class is used to store all cashflow data of a stock.
  Cashflow? cashflow;

  /// The [Income] class is used to store all income data of a stock.
  Income? income;

  /// The [Financials] constructor.
  ///
  /// The parameter [balance] is the [Balance] class.
  /// The parameter [cashflow] is the [Cashflow] class.
  /// The parameter [income] is the [Income] class.
  Financials({this.balance, this.cashflow, this.income});
}
