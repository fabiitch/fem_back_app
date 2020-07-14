class TextValidator {

  /// validator de not empty
  static Function(String) notEmpty() {
    return (String input) {
      if (input.isEmpty) {
        return 'Valeur requise';
      }
      return null;
    };
  }
  static Function(String) min(int minLenght) {
    return (String input) {
      if (input.length < minLenght) {
        return 'Valeur trop courte (min: $minLenght)';
      }
      return null;
    };
  }

  static Function(String) max(int maxLenght) {
    return (String input) {
      if (input.length > maxLenght)
        return 'Valeur trop longue (max: $maxLenght)';
      return null;
    };
  }
}
