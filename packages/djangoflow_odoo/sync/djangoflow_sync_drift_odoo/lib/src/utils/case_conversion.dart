import 'package:recase/recase.dart';

class CaseConversionUtils {
  static Map<String, dynamic> convertKeysToSnakeCase(Map<String, dynamic> map) {
    return map.map((key, value) {
      final newKey = ReCase(key).snakeCase;
      return MapEntry(newKey, value);
    });
  }
}

extension CaseConversionX on Map<String, dynamic> {
  Map<String, dynamic> get convertedKeysToSnakeCase {
    return CaseConversionUtils.convertKeysToSnakeCase(this);
  }
}
