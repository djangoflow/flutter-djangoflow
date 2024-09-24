## 5.0.1

 - **REFACTOR**: update params and add providers in AppBuilder. ([970e8558](https://github.com/djangoflow/flutter-djangoflow/commit/970e8558f72a631373231f18bb25724b6a7b8473))
 - **REFACTOR**: update params and rename variables in AppBuilder. ([d3c82cee](https://github.com/djangoflow/flutter-djangoflow/commit/d3c82ceed3f06c117c105787c1bc683dcdbdf2bf))

## 5.0.0

> Note: This release has breaking changes.

 - **BREAKING** **REFACTOR**: update dependencies and sdk constraints. ([649ad55c](https://github.com/djangoflow/flutter-djangoflow/commit/649ad55c4fdfe4907bd67ec43dee6cfda55d8b90))

## 4.0.0

> Note: This release has breaking changes.

 - **BREAKING** **REFACTOR**: update dependencies. ([6e7cae19](https://github.com/djangoflow/flutter-djangoflow/commit/6e7cae19a495c0b181fb57af6eb38afb1fc8b810))

## 3.7.6

 - **REFACTOR**: update generated files. ([b057a275](https://github.com/djangoflow/flutter-djangoflow/commit/b057a2751bd47d0d2e436a3418232c01218fda59))

## 3.7.5

 - **REFACTOR**: expose dismissDirection. ([d071f5f3](https://github.com/djangoflow/flutter-djangoflow/commit/d071f5f3446e1ca89e86b6a0f32362bda9d2b0ae))

## 3.7.4

 - **REFACTOR**: expose more fields for DjangoflowAppSnackbar. ([cc7e27f4](https://github.com/djangoflow/flutter-djangoflow/commit/cc7e27f43d3e6fae68ac0dccc2dd53516fff6501))

## 3.7.3

 - **REFACTOR**: format the codebase. ([fc078388](https://github.com/djangoflow/flutter-djangoflow/commit/fc0783887eb7881d079c7381299248cea2fdf63a))
 - **REFACTOR**: resolve linter warnings. ([9ab6b6e5](https://github.com/djangoflow/flutter-djangoflow/commit/9ab6b6e5e700de585393939f3afd1cb2527f9d39))

## 3.7.2

 - **FIX**: showing snackbar results in to empty scaffold error. ([f1ab4a96](https://github.com/djangoflow/flutter-djangoflow/commit/f1ab4a96cac91d860eb5ba38860fc32ebf83bcfa))

## 3.7.1

 - **REFACTOR**: use latest dependency. ([7ffec4dc](https://github.com/djangoflow/flutter-djangoflow/commit/7ffec4dcd4b52bebde4fa37706649556ae7d6394))
 - **REFACTOR**: upgrade to flutter_lint 3.0.1. ([ebfc2663](https://github.com/djangoflow/flutter-djangoflow/commit/ebfc266338959dece73dd2b2198277ef0d225bb2))

## 3.7.0

 - **FEAT**: add appVersionWithPackageName. ([3b900fa6](https://github.com/djangoflow/flutter-djangoflow/commit/3b900fa6fbc47e09e437d475b770cd1633aa2f04))

## 3.6.2

 - **REFACTOR**(djangoflow_app): Expose AppCubit.internal. ([2c1996ae](https://github.com/djangoflow/flutter-djangoflow/commit/2c1996aea69f87493246bcf86e452d005cf476a0))

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
