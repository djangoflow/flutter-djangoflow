// Copyright (c) 2019-present,  SurfStudio LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:analytics/analytics.dart';

import 'package:djangoflow_firebase_analytics/src/feauteres/event_sender/data/firebase_analytics_event.dart';
import 'package:djangoflow_firebase_analytics/src/utils/fireabase_event_cutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class FirebaseAnalyticEventSender
    implements AnalyticActionPerformer<FirebaseAnalyticsEvent> {
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseEventCutter _eventCutter = FirebaseEventCutter();

  FirebaseAnalyticEventSender(this._firebaseAnalytics);

  @override
  bool canHandle(AnalyticAction action) => action is FirebaseAnalyticsEvent;

  @override
  void perform(FirebaseAnalyticsEvent action) {
    final params =
        _eventCutter.cutMapParams(action.params as Map<String, Object>);
    _firebaseAnalytics.logEvent(
      name: _eventCutter.cutName(action.key),
      parameters: params,
    );
  }
}
