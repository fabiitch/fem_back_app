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

  /// validator de min/max
  static Function(String) minMaxLenght(int minLenght, int maxLenght) {
    return (String input) {
      if (minLenght != null && input.length < minLenght) {
        return 'Valeur trop courte (min: $minLenght)';
      } else if (input.length > maxLenght) {
        return 'Valeur trop longue (max: $maxLenght)';
      }
      return null;
    };
  }

  /// validator de empty/min/max (opt)
  static Function(String) emptyMinMaxLenght(int minLenght, int maxLenght) {
    return (String input) {
      if (input.isEmpty) {
        return 'Valeur requise';
      } else if (minLenght != null && input.length < minLenght) {
        return 'Valeur trop courte (min: $minLenght)';
      } else if (input.length > maxLenght) {
        return 'Valeur trop longue (max: $maxLenght)';
      }
      return null;
    };
  }
}
