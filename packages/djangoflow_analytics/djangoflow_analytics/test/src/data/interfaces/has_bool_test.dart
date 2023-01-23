import 'package:flutter_test/flutter_test.dart';

abstract class HasBool {
  bool get enabled;
}

class TestBool implements HasBool {
  @override
  bool get enabled => true;
}

void main() {
  group('HasBool', () {
    test('should have a boolean value', () {
      final testBool = TestBool();
      expect(testBool.enabled, isTrue);
    });
  });
}
