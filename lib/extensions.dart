import 'utilities.dart';

extension StringUtils on String {
   String capitalizeFirst() {
    if (length <= 2) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  static bool isNull(dynamic value) => value == null;

  static bool? isNullOrBlank(dynamic value) {
    if (isNull(value)) {
      return true;
    }
    return Utils.isEmpty(value);
  }

  /// Checks if data is null or blank (empty or only contains whitespace).
  static bool? isBlank(dynamic value) {
    return Utils.isEmpty(value);
  }

  /// Checks if string is int or double.
  static bool isNum(String value) {
    if (isNull(value)) {
      return false;
    }

    return num.tryParse(value) is num;
  }
}
