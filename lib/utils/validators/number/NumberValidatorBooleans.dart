class NumberValidatorsBoolean {
  static bool min(double input, double min, [bool strict]) {
    return strict ? input < min : input <= min;
  }

  static bool max(double input, double min, [bool strict]) {
    return strict ? input > min : input >= min;
  }

  /// validator de not empty
  static bool isNumber(String input) {
    return input != null && double.tryParse(input) != null;
  }
}