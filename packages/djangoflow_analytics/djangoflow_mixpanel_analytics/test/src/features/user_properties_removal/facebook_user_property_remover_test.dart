import 'package:djangoflow_mixpanel_analytics/djangoflow_mixpanel_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/helpers.dart';

void main() {
  late MockMixpanel mockMixpanelAnalytics;
  late MixpanelUserPropertyRemover userPropertyRemover;
  const kEmailKey = 'email';

  setUp(() {
    mockMixpanelAnalytics = MockMixpanel();
    userPropertyRemover = MixpanelUserPropertyRemover(mockMixpanelAnalytics);
  });

  test('canHandle() should return true for MixpanelRemovableUserProperty', () {
    final event = MixpanelRemovableUserProperty(kEmailKey);
    expect(userPropertyRemover.canHandle(event), true);
  });

  test('performAction() should call setUserId with null value', () {
    final event = MixpanelRemovableUserProperty(kEmailKey);
    when(
      mockMixpanelAnalytics.unregisterSuperProperty(any),
    ).thenAnswer((_) => Future.value());

    userPropertyRemover.performAction(event);
    verify(
      mockMixpanelAnalytics.unregisterSuperProperty(event.key),
    ).called(1);
  });
}
