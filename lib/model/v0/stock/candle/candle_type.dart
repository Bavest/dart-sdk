/// The [CandleResolution] data represent the candle resolution e.g.
/// 1 second, 5 seconds, 60 seconds, 1 minute, 1 day, 1 week, 1 month.
///
/// Adjust the candle resolution according to the date range.
enum CandleResolution {
  oneSecond,
  fiveSeconds,
  sixtySeconds,
  minute,
  day,
  week,
  month,
}

/// The [CandleTypeExtension] extend the [CandleResolution] to get the string value and use it for
/// the JSON conversion.
extension CandleTypeExtension on CandleResolution {
  String get str {
    switch (this) {
      case CandleResolution.oneSecond:
        return '1';
      case CandleResolution.fiveSeconds:
        return '5';
      case CandleResolution.sixtySeconds:
        return '60';
      case CandleResolution.minute:
        return 'M';
      case CandleResolution.day:
        return 'D';
      case CandleResolution.week:
        return 'W';
      case CandleResolution.month:
        return 'M';
    }
  }
}
