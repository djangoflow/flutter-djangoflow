import 'package:djangoflow_mixpanel_analytics/src/configurations/constants.dart';
import 'package:djangoflow_mixpanel_analytics/src/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/test_string_generator.dart';

void main() {
  final testStringGen = TestStringGenerator();
  group('MixpanelEventTrimmer', () {
    test(
        'should not trim the keys and values of the map parameters if they follow correct configuration',
        () {
      final testEventTrimmer = MixpanelEventTrimmer();
      final params = {'key1': 'value1', 'key2': 'value2'};
      final trimmedParams = testEventTrimmer.trimMapParams(params);
      expect(trimmedParams, containsPair('key1', 'value1'));
      expect(trimmedParams, containsPair('key2', 'value2'));
    });

    test(
        'should remove the keys and values of the map parameters if they are null',
        () {
      final testEventTrimmer = MixpanelEventTrimmer();
      final params = {'key1': null, 'key2': 'value2'};
      final trimmedParams = testEventTrimmer.trimNullValueMapParams(params);
      expect(trimmedParams, isNot(containsPair('key1', null)));
      expect(trimmedParams, containsPair('key2', 'value2'));
    });

    test(
        'should trim the keys of the map parameters if it is more than kMaxEventKeyLength',
        () {
      final testEventTrimmer = MixpanelEventTrimmer();
      final params = {
        testStringGen.generateRandomString(kMaxEventKeyLength + 10): 'value2',
      };
      final trimmedParams = testEventTrimmer.trimMapParams(params);
      expect(trimmedParams.keys, everyElement(hasLength(kMaxEventKeyLength)));
    });

    test(
        'should trim the values of the map parameters if it is more than kMaxEventValueLength',
        () {
      final testEventTrimmer = MixpanelEventTrimmer();
      final params = {
        'key1': testStringGen.generateRandomString(kMaxEventValueLength + 10),
      };
      final trimmedParams = testEventTrimmer.trimMapParams(params);
      expect(
        trimmedParams.values,
        everyElement(allOf(hasLength(kMaxEventValueLength))),
      );
    });
  });
}
