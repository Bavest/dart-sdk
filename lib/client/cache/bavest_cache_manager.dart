import 'dart:async';

class CacheManager {
  /// The [failedKeys] is a list of failed keys.
  List<CacheEntry> failedKeys = [];

  /// The [requestedKeys] is a list of requested keys.
  List<CacheEntry> requestedKeys = [];

  /// The [init] method is called to initialize the cache manager.
  /// It will reset the failed keys and requested keys.
  void init() {
    failedKeys = [];
    requestedKeys = [];
  }

  /// The [listen] method is called to listen to the websocket channel.
  /// It will send a request to the websocket channel every 30 seconds for the failed keys.
  ///
  /// The [channel] is the websocket channel.
  /// The [cache] is the memory cache.
  /// The [disconnected] is a boolean to check if the websocket is disconnected.
  void listen(var channel, var cache, bool disconnected) {
    if (disconnected) return;
    if (channel == null) return;

    Timer.periodic(const Duration(seconds: 30), (timer) {
      if (failedKeys.isEmpty) return;
      for (var entry in failedKeys) {
        channel!.sink._addToSink(entry.websocketData);
      }
      failedKeys = [];
    });
  }

  /// The [addFailed] method is called to add a failed key to the requested keys list.
  ///
  /// The [cacheEntry] is the cache entry.
  void addFailed(CacheEntry cacheEntry) {
    if (failedKeys.indexWhere((e) => e.cacheKey == cacheEntry.cacheKey) == -1) {
      failedKeys.add(cacheEntry);
    }
  }
}

//// The [CacheEntry] class is used to store the cache key and websocket data.
class CacheEntry {
  /// The [cacheKey] is the cache key.
  String cacheKey;

  /// The [websocketData] is the websocket data.
  String websocketData;

  /// The [CacheEntry] constructor is used to initialize the cache entry.
  ///
  /// The [cacheKey] is the cache key.
  /// The [websocketData] is the websocket data.
  CacheEntry(this.cacheKey, this.websocketData);
}
