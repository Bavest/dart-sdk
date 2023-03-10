extension BavestFunctionExtension on Function {

  /// Execute the function if the debug condition is true
  ///
  void onDebug(bool debug, {required String args}) {
    if (debug) {
      this(args);
    }
  }
}