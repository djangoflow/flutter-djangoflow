import 'package:analytics/analytics.dart';
import 'package:djangoflow_facebook_analytics/src/configurations/constants.dart';
import 'package:djangoflow_facebook_analytics/src/utils/utils.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/test_string_generator.dart';

class TestFacebookUserProperty implements AnalyticAction {

  TestFacebookUserProperty(this.key, this.value);
  final String key;
  final String value;
}

void main() {
  final testStringGen = TestStringGenerator();
  group('FacebookEventTrimmer', () {
    test(
        'should not trim the key and value if they follow correct configuration',
        () {
      final testEventTrimmer = FacebookUserPropertyTrimmer();
      final testUserProperty = TestFacebookUserProperty('key1', 'value1');
      final trimmedKey = testEventTrimmer.trimName(testUserProperty.key);
      final trimmedValue = testEventTrimmer.trimValue(testUserProperty.value);
      expect(trimmedKey, testUserProperty.key);
      expect(trimmedValue, testUserProperty.value);
    });

    test('should trim the key if it is more than kMaxSetUserPropertyKeyLength',
        () {
      final testEventTrimmer = FacebookUserPropertyTrimmer();
      final testUserProperty = TestFacebookUserProperty(
          testStringGen.generateRandomString(kMaxSetUserPropertyKeyLength + 10),
          'value1',);
      final trimmedKey = testEventTrimmer.trimName(testUserProperty.key);

      expect(trimmedKey, hasLength(kMaxSetUserPropertyKeyLength));
    });

    test(
        'should trim the value if it is more than kMaxSetUserPropertyValueLength',
        () {
      final testEventTrimmer = FacebookUserPropertyTrimmer();
      final testUserProperty = TestFacebookUserProperty(
          'key1',
          testStringGen
              .generateRandomString(kMaxSetUserPropertyValueLength + 10),);
      final trimmedValue = testEventTrimmer.trimValue(testUserProperty.value);

      expect(trimmedValue, hasLength(kMaxSetUserPropertyValueLength));
    });
  });
}
