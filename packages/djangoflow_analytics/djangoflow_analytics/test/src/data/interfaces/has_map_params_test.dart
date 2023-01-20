import 'package:flutter_test/flutter_test.dart';

abstract class HasMapParams {
  Map<String, Object?> get params;
}

class TestMapParams implements HasMapParams {
  @override
  Map<String, Object?> get params => {'param1': 'value1', 'param2': null};
}

void main() {
  group('HasMapParams', () {
    test('should have a map of parameters', () {
      final testMapParams = TestMapParams();
      expect(testMapParams.params, containsPair('param1', 'value1'));
      expect(testMapParams.params, containsPair('param2', null));
    });
  });
}
