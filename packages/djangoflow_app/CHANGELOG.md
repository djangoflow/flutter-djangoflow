## 3.6.1

 - **REFACTOR**: update build_runner generated files. ([2981f62a](https://github.com/djangoflow/flutter-djangoflow/commit/2981f62a0817228bdab5fc0c1dad74ac1566087e))

## 3.6.0

 - **FEAT**(djangoflow_app): Add package_info_extensions. ([b99d82cf](https://github.com/djangoflow/flutter-djangoflow/commit/b99d82cf82d0aa615b3e2c811d371770f3ac1ecd))
 - **FEAT**(djangoflow_app): Add EnvSwitcher. ([46d8b3f4](https://github.com/djangoflow/flutter-djangoflow/commit/46d8b3f46836163c8b954de85c80b9e147d7fdda))

## 3.5.0

 - chore: update djangoflow_app to 3.5.0

 - **REFACTOR**: update sdk contraints for djangoflow_app. ([12df5e6e](https://github.com/djangoflow/flutter-djangoflow/commit/12df5e6e3decdc2e6099d79495b527311d0f2c0c))
 - **REFACTOR**: add djangoflow_app example. ([5798e331](https://github.com/djangoflow/flutter-djangoflow/commit/5798e331e660ea94ef0087f9e5f0159540e1e06d))

## 3.4.0

 - **FEAT**: add dismissAll method. ([baaeb826](https://github.com/djangoflow/flutter-djangoflow/commit/baaeb826abd2f1dd685e083a4a4570808d5b4b40))

## 3.3.0

 - **FEAT**(app): add AppHeaderInterceptor. ([0351c250](https://github.com/djangoflow/flutter-djangoflow/commit/0351c250c1d532beeed3986745d326e5222c07cf))

## 3.2.0 - 14 June 2023

- Updated dependencies

## 3.1.0 - 20 March 2023

- Update dependencies
- Make `repositoryProviders` nullable

## 3.0.1 - 10 Feb 2023

- Add setting intial state for AppCubit via `AppCubit.intialState = AppState()`

## 3.0.0 - 25 Jan 2023

_BREAKING CHANGES_

- Removed `AppAnalytics`, `App` widgets
- Removed `auto_route`, `sentry_flutter`, `app_tracking_transparency`, `facebook_app_events`, `firebase_analytics`, `mixpanel_flutter` dependencies and decoupled their features.
- Introduced `AppBuilder`, `AppCubitBuilder`, `DjangoflowAppRunner`, `DjangoflowAppSnackbar`, widgets.
- Optional listeners

## 3.0.0-dev - 15 Jan 2023

_BREAKING CHANGES_

- Removed `AppAnalytics`, `App` widgets
- Removed `auto_route`, `sentry_flutter`, `app_tracking_transparency`, `facebook_app_events`, `firebase_analytics`, `mixpanel_flutter` dependencies and decoupled their features.
- Introduced `AppBuilder`, `AppCubitBuilder`, `DjangoflowAppRunner`, `DjangoflowAppSnackbar`, widgets.

## 2.1.2 - 22 Dec 2022

- Implemented `updateDefaultParams` method for `Analytics`

## 2.1.1 - 15 Nov 2022

- Updated flutter_sentry to latest

## 2.1.0 - 26 Oct 2022

- Updated depdencies to latest

## 2.0.8 - 15 Sep 2022

- added routeLocationRewriter argument to app to allow override default

## 2.0.6 - 14 Sep 2022

- Added `AutoRouteObserver()` by default in the router `navigatorObservers` list as needed for listening to route changes from specific screens.

## 2.0.5 - 14 Sep 2022

- Fixed `navigatorObservers` not working when provided with `App` widget

## 2.0.4 - 5 Sep 2022

- replaced `disable` with `disableFacebook`, `disableFirebase` and `disableMixpanel`

## 2.0.3 - 2 Sep 2022

- added router to the builder

## 2.0.2 - 2 Sep 2022

- replace router with routerBuilder

## 2.0.0 - 2 Sep 2022

- dependencies upgrade

## 1.0.5 - Sep 2022

- sentry release to include the build number

## 1.0.4 - Sep 2022

- added onStart callback

## 1.0.2 - 31 Aug 2022

- `PackageInfo` is static now within AppCubit. Instead of `AppCubit.instance.packageInfo` it is now `AppCubit.packageInfo`

## 1.0.1 - 17 Aug 2022

- Updated Firebase dependencies.

## 1.0.0 - 17 Aug 2022

- Initial release
