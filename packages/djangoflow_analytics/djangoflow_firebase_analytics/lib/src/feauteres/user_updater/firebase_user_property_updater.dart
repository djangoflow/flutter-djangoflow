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

import 'package:analytics/core/analytic_action.dart';
import 'package:analytics/core/analytic_action_performer.dart';
import 'package:djangoflow_firebase_analytics/src/utils/firebase_user_property_cutter.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

import 'firebase_user_property.dart';

class FirebaseUserPropertyUpdater
    implements AnalyticActionPerformer<FirebaseUserProperty> {
  final FirebaseAnalytics _firebaseAnalytics;
  final FirebaseUserPropertyCutter _userPropertyCutter =
      FirebaseUserPropertyCutter();

  FirebaseUserPropertyUpdater(this._firebaseAnalytics);
  @override
  bool canHandle(AnalyticAction action) => action is FirebaseUserProperty;

  @override
  void perform(FirebaseUserProperty action) {
    _firebaseAnalytics.setUserProperty(
      name: _userPropertyCutter.cutName(action.key),
      value: _userPropertyCutter.cutValue(action.value),
    );
  }
}
