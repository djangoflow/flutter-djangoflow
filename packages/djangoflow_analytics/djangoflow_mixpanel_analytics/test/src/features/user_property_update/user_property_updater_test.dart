import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockMixpanel mockMixpanelAnalytics;
  late MixpanelUserPropertyUpdater userPropertyUpdater;

  setUp(() {
    mockMixpanelAnalytics = MockMixpanel();
    userPropertyUpdater = MixpanelUserPropertyUpdater(mockMixpanelAnalytics);
  });

  test('canHandle() should return true for MixpanelRemovableUserProperty', () {
    final event = MixpanelUpdatableUserProperty('key', 'value');
    expect(userPropertyUpdater.canHandle(event), true);
  });

  test('perform() should call setUserId with correct value', () {
    final event = MixpanelUpdatableUserProperty('key', 'value');
    when(
      mockMixpanelAnalytics.registerSuperProperties(any),
    ).thenAnswer((_) => Future.value());

    userPropertyUpdater.perform(event);
    verify(
      mockMixpanelAnalytics.registerSuperProperties({event.key: event.value}),
    ).called(1);
  });
}
