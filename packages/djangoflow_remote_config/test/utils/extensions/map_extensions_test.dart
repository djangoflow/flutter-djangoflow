import 'package:djangoflow_remote_config/src/utils/map_extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const Map<String, dynamic> testMap = {
    'key1': 'value1',
    'key2': 2,
    'key3': null,
  };

  test('MapExtension returns null if map is null', () {
    const Map<String, dynamic>? nullMap = null;
    final Map<String, Object>? newMap = nullMap?.removeNullAndCast();

    expect(newMap, null);
  });

  test('MapExtension returns null if map is empty', () {
    const Map<String, dynamic> nullMap = {};
    final Map<String, Object>? newMap = nullMap.removeNullAndCast();

    expect(newMap, null);
  });

  test(
    'MapExtension casts Map<String,dynamic> to Map<String, Object>',
    () {
      final Map<String, Object>? newMap = testMap.removeNullAndCast();
      expect(newMap, isA<Map<String, Object>>());
    },
  );

  test(
    'MapExtension removes null values',
    () {
      final Map<String, Object>? newMap = testMap.removeNullAndCast();
      expect(newMap?.containsValue(null), false);
      expect(newMap, {'key1': 'value1', 'key2': 2});
    },
  );
}
