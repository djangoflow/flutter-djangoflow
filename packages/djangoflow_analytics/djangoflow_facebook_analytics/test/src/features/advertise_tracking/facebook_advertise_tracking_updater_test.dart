import 'package:djangoflow_facebook_analytics/djangoflow_facebook_analytics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'facebook_advertise_tracking_updater_test.mocks.dart';

class TestFacebookAdvertiserTrackingEvent
    implements FacebookAdvertiseTrackingEvent {
  TestFacebookAdvertiserTrackingEvent(this.isEnabled);
  final bool isEnabled;

  @override
  bool get enabled => isEnabled;
}

@GenerateNiceMocks([MockSpec<FacebookAppEvents>()])
void main() {
  late MockFacebookAppEvents mockFacebookAppEvents;
  late FacebookAdvertiseTrackingUpdater updater;
  late TestFacebookAdvertiserTrackingEvent event;

  setUp(() {
    mockFacebookAppEvents = MockFacebookAppEvents();
    updater = FacebookAdvertiseTrackingUpdater(mockFacebookAppEvents);
    event = TestFacebookAdvertiserTrackingEvent(true);
  });

  test('canHandle() should return true for FacebookAdvertiseTrackingEvent', () {
    expect(updater.canHandle(event), true);
  });

  test('perform() should call setAdvertiserTracking with correct value', () {
    when(mockFacebookAppEvents.setAdvertiserTracking(enabled: event.enabled))
        .thenAnswer((_) => Future.value());
    updater.perform(event);
    verify(mockFacebookAppEvents.setAdvertiserTracking(enabled: event.enabled))
        .called(1);
  });
}
