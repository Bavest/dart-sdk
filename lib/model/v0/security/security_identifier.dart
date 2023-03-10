/// The [SecurityIdentifier] data represent the identifier of a security.
/// The identifier can be a symbol, ISIN, CUSIP or WKN. At the moment Bavest
/// only supports the symbol.
class SecurityIdentifier {
  /// Identifier by symbol
  final String? symbol;

  /// Identifier by ISIN currently not supported
  final String? isin;

  /// Identifier by CUSIP currently not supported
  final String? cusip;

  /// Identifier by WKN currently not supported
  final String? wkn;

  SecurityIdentifier({this.symbol, this.isin, this.cusip, this.wkn})
      : assert(
            !(symbol == null && isin == null && cusip == null && wkn == null));

  factory SecurityIdentifier.fromJson(Map<String, dynamic> json) =>
      SecurityIdentifier(
        symbol: json['symbol'],
        isin: json['isin'],
        cusip: json['cusip'],
        wkn: json['wkn'],
      );


  @override
  String toString() {
    if (symbol != null) {
      return 'SecurityIdentifier(symbol: $symbol)';
    } else if (isin != null) {
      return 'SecurityIdentifier(isin: $isin)';
    } else if (cusip != null) {
      return 'SecurityIdentifier(cusip: $cusip)';
    } else if (wkn != null) {
      return 'SecurityIdentifier(wkn: $wkn)';
    } else {
      // Never reached because of assert in constructor
      throw Exception('No identifier found');
    }
  }

  /// Returns a map with the identifier as key and the value as value.
  /// This is used to provide extensions in future versions.
  ///
  /// The security identifier can easily by extended by adding a new field
  /// and therefore we don't have to change any method signature.
  Map<String, String> toJson() {
    if (symbol != null) {
      return <String, String>{'symbol': symbol.toString()};
    } else if (isin != null) {
      return <String, String>{'isin': isin.toString()};
    } else if (cusip != null) {
      return <String, String>{'cusip': cusip.toString()};
    } else if (wkn != null) {
      return <String, String>{'wkn': wkn.toString()};
    } else {
      // Never reached because of assert in constructor
      throw Exception('No identifier found');
    }
  }
}
