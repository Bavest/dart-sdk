/// Get [EtfCountry] data for a given [SecurityIdentifier] e.g.
/// [SecurityIdentifier(symbol: 'SPY)].
class EtfCountry {
  List<CountryExposure>? countryExposure;
  String? symbol;

  EtfCountry({countryExposure, symbol});

  EtfCountry.fromJson(Map<String, dynamic> json) {
    if (json['countryExposure'] != null) {
      countryExposure = <CountryExposure>[];
      json['countryExposure'].forEach((v) {
        countryExposure!.add(CountryExposure.fromJson(v));
      });
    }
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (countryExposure != null) {
      data['countryExposure'] =
          countryExposure!.map((v) => v.toJson()).toList();
    }
    data['symbol'] = symbol;
    return data;
  }
}

class CountryExposure {
  double? exposure;
  String? country;

  CountryExposure({exposure, country});

  CountryExposure.fromJson(Map<String, dynamic> json) {
    exposure = json['exposure'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['exposure'] = exposure;
    data['country'] = country;
    return data;
  }
}
