class NumberValidator {
  static Function(String) isPrice() {
    return (String input) {
      final priceRegex = RegExp(r'^[1-9]\d{0,6}\.\d{2}$');
      if (!priceRegex.hasMatch(input)) {
        return 'La valeur saisi doit être un prix';
      }
      return null;
    };
  }

  static Function(String) min(int min, [bool strict]) {
    return (String input) {
      double parsed = double.tryParse(input);
      if (strict) {
        if (parsed < min) return 'La valeur doit être supérieure ou égale à $min';
      } else {
        if (parsed <= min) return 'La valeur doit être supérieure à $min';
      }
      return null;
    };
  }

  static Function(String) max(int max, [bool strict]) {
    return (String input) {
      double parsed = double.tryParse(input);
      if (strict) {
        if (parsed < max)
          return 'La valeur doit être inférieure ou égale à $max';
      } else {
        if (parsed >= max) return 'La valeur doit être inférieure à $max';
      }
      return null;
    };
  }

  static Function(String) minMax(int min, int max, [bool strict]) {
    return (String input) {
      double parsed = double.tryParse(input);
      if (strict) {
        if (parsed < min)
          return 'La valeur doit être supérieure ou égale à $min';
        if (parsed < max)
          return 'La valeur doit être inférieure ou égale à $max';
      } else {
        if (parsed >= max) return 'La valeur doit être inférieure à $max';
        if (parsed <= min) return 'La valeur doit être supérieure à $min';
      }
      return null;
    };
  }
}
