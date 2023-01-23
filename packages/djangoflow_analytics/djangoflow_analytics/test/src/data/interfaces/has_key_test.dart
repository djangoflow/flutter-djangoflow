import 'package:flutter_test/flutter_test.dart';

abstract class HasKey {
  String get key;
}

class TestKey implements HasKey {
  @override
  String get key => 'test_key';
}

void main() {
  group('HasKey', () {
    test('should have a key', () {
      final testKey = TestKey();
      expect(testKey.key, equals('test_key'));
    });
  });
}
