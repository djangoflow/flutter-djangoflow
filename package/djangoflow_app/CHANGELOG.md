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
