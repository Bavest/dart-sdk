/// The [EtfSector] data represent the sector of an ETF e.g. for the ETF
/// SPY [SecurityIdentifier(symbol: 'SPY)].
class EtfSector {
  String? symbol;
  List<SectorExposure>? sectorExposure;

  EtfSector({symbol, sectorExposure});

  EtfSector.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    if (json['sectorExposure'] != null) {
      sectorExposure = <SectorExposure>[];
      json['sectorExposure'].forEach((v) {
        sectorExposure!.add(SectorExposure.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symbol'] = symbol;
    if (sectorExposure != null) {
      data['sectorExposure'] = sectorExposure!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SectorExposure {
  double? weightPercentage;
  String? sector;

  SectorExposure({weightPercentage, sector});

  SectorExposure.fromJson(Map<String, dynamic> json) {
    weightPercentage = json['weightPercentage']?.toDouble();
    sector = json['sector'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['weightPercentage'] = weightPercentage?.toDouble();
    data['sector'] = sector;
    return data;
  }
}
