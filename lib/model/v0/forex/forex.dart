/// The [Forex] data represent the exchange rate of two currencies
/// e.g. for the exchange rate of EUR to USD.
class Forex {
  /// The success of the request.
  bool? success;

  /// The query of the request.
  Query? query;

  /// Additional information about the request.
  Info? info;

  /// The date of the request.
  String? date;

  /// The result of the request e.g. the exchange rate.
  double? result;

  Forex({this.success, this.query, this.info, this.date, this.result});

  Forex.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    query = json['query'] != null ? Query.fromJson(json['query']) : null;
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    date = json['date'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (query != null) {
      data['query'] = query!.toJson();
    }
    if (info != null) {
      data['info'] = info!.toJson();
    }
    data['date'] = date;
    data['result'] = result;
    return data;
  }
}

class Query {
  String? from;
  String? to;

  Query({this.from, this.to});

  Query.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['from'] = from;
    data['to'] = to;
    return data;
  }
}

class Info {
  String? timestamp;
  double? rate;

  Info({this.timestamp, this.rate});

  Info.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['timestamp'] = timestamp;
    data['rate'] = rate;
    return data;
  }
}
