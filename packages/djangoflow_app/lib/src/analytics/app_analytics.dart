import 'dart:async';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class AnalyticsEvents {
  const AnalyticsEvents();

  static String get login => 'login';

  static String get signUp => 'sign_up';

  static String get screenView => 'screen_view';
}

class AppAnalytics {
  static AppAnalytics get instance => _instance;
  static final AppAnalytics _instance = AppAnalytics._internal();

  AppAnalytics._internal();

  late Map<String, Object?> _defaultParams = {};
  late AnalyticsEvents _events;
  // TODO need to refactor this, and put it outside of AppAnalytics
  late bool _disableFirebase;
  late bool _disableMixepanel;
  late bool _disableFacebook;

  // TODO(saiful): all functions have to check we are intialized

  Future<AppAnalytics> init({
    String? mixPanelToken,
    bool disableFirebase = kDebugMode,
    bool disableMixpanel = kDebugMode,
    bool disableFacebook = kDebugMode,
    Map<String, Object?> defaultParams = const {},
    AnalyticsEvents events = const AnalyticsEvents(),
  }) async {
    _events = events;
    _defaultParams = defaultParams;
    _disableFirebase = disableFirebase;
    _disableFacebook = disableFacebook;
    _disableMixepanel = disableMixpanel;

    if (!_disableMixepanel) {
      mixpanel = mixPanelToken != null
          ? await Mixpanel.init(
              mixPanelToken,
              optOutTrackingDefault: false,
              trackAutomaticEvents: true,
            )
          : null;
    }
    if (!_disableFacebook && !kIsWeb) {
      facebookAppEvent = FacebookAppEvents();
    }
    toggleFireBaseAnalyticsCollection(!_disableFirebase);
    showMixPanelDevLogs(kDebugMode && !_disableMixepanel);

    return _instance;
  }

  Mixpanel? mixpanel;

  final FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;

  FacebookAppEvents? facebookAppEvent;

  Future<void> toggleFireBaseAnalyticsCollection(bool isCollecting) async {
    await firebaseAnalytics.setAnalyticsCollectionEnabled(isCollecting);
  }

  Future<void> initATT() async {
    if (!kIsWeb) {
      final isEnabled = await _checkTrackingPermission();
      await facebookAppEvent?.setAdvertiserTracking(
        enabled: isEnabled,
      );
    }
  }

  Future<bool> _checkTrackingPermission() async {
    final trackingStatus =
        await AppTrackingTransparency.trackingAuthorizationStatus;
    if (trackingStatus == TrackingStatus.notSupported) {
      return true;
    } else if (trackingStatus == TrackingStatus.notDetermined) {
      final result =
          await AppTrackingTransparency.requestTrackingAuthorization();

      return result == TrackingStatus.authorized ? true : false;
    } else {
      return false;
    }
  }

  void showMixPanelDevLogs(bool loggingEnabled) {
    if (!kIsWeb) {
      mixpanel?.setLoggingEnabled(loggingEnabled);
    }
  }

  final Map<String, String> _userPropertiesCache = {};

  Future<void> setUserProperties({
    String? id,
    Map<String, String> properties = const {},
  }) async {
    _userPropertiesCache.clear();
    _userPropertiesCache.addAll(properties);

    await firebaseAnalytics.setUserId(id: id);
    for (final entry in properties.entries) {
      await firebaseAnalytics.setUserProperty(
        name: entry.key,
        value: entry.value,
      );
    }

    mixpanel?.registerSuperProperties(
      {'id': id, ...properties},
    );

    if (id != null) {
      await facebookAppEvent?.setUserID(id);
    }
    await facebookAppEvent?.setUserData(
        email: properties['email'], gender: properties['gender']);
  }

  Future<void> removeUserProperties() async {
    await firebaseAnalytics.setUserId(id: null);
    for (final key in [..._userPropertiesCache.keys, 'id']) {
      mixpanel?.unregisterSuperProperty(key);
    }
    await facebookAppEvent?.clearUserID();
    await facebookAppEvent?.clearUserData();
  }

  static const _kScreenName = 'screen_name';
  static const _kScreenClass = 'screen_class';

  Future<void> logScreenView({
    required String? screenName,
    String screenClassOverride = 'Flutter',
  }) async {
    final extraParams = {
      _kScreenName: screenName,
      _kScreenClass: screenClassOverride,
    };
    await logAnalyticsEvent(
      AnalyticsEvents.screenView,
      extraParams: extraParams,
    );
  }

  Future<void> logAnalyticsEvent(
    String name, {
    Map<String, Object?>? extraParams,
  }) async {
    var params = <String, Object?>{};
    params.addAll(_defaultParams);
    if (extraParams != null) {
      params.addAll(extraParams);
    }

    await _logFirebaseAnalyticsEvent(
      name,
      extraParams: params,
    );
    _logMixpanelEvent(name, extraParams: params);
    await _logFacebookEvents(name, extraParams: params);
  }

  Future<void> _logFirebaseAnalyticsEvent(
    String name, {
    Map<String, Object?>? extraParams,
  }) async {
    // FirebaseAnalytics events does not trigger in development mode
    // Done through setAnalyticsCollectionEnabled method in app_cubit.dart
    await firebaseAnalytics.logEvent(
      name: name,
      parameters: extraParams,
    );
  }

  void _logMixpanelEvent(
    String name, {
    required Map<String, Object?> extraParams,
  }) {
    if (!_disableMixepanel) {
      // mixPanel has no method to enable/disable collection
      mixpanel?.track(
        name,
        // TODO(saiful): why was this needed?
        properties: Map.fromEntries(
          extraParams.entries.where((element) => element.value != null),
        ),
      );
    }
  }

  Future<void> _logFacebookEvents(
    String name, {
    required Map<String, Object?> extraParams,
  }) async {
    // TODO(saiful): consider special facebook events (for now removed)
    await facebookAppEvent?.logEvent(
      name: name,
      parameters: extraParams,
    );
  }
}
