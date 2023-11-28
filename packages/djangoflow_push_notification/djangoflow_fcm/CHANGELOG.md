## 0.1.0+2

 - **FIX**(fcm): AbortError, no active Service Worker for web. ([aabeb45d](https://github.com/djangoflow/flutter-djangoflow/commit/aabeb45d13b20d04ffea5321fdcd7f6c03176821))

## 0.1.0+1

 - **REFACTOR**: use latest dependency. ([7ffec4dc](https://github.com/djangoflow/flutter-djangoflow/commit/7ffec4dcd4b52bebde4fa37706649556ae7d6394))
 - **REFACTOR**: upgrade to flutter_lint 3.0.1. ([ebfc2663](https://github.com/djangoflow/flutter-djangoflow/commit/ebfc266338959dece73dd2b2198277ef0d225bb2))

## [0.1.0] - 15 June 2023

- Updated dependencies and tests

## [0.0.5] - 9 Feb 2023

- Add `DjangoflowFCMDeletePushToken` event in order delete push token from device.

## [0.0.4] - 23 Jan 2023

- Support if notification tap opened app from terminated/background state via `remoteMessageOpenedApp` field.

## [0.0.3] - 23 Jan 2023

- Fixed returning `authorizationStatus` with token

## [0.0.2] - 23 Jan 2023

- Added unit tests
- Fixed typo `Intial` to `Initial` in places
- Updated dependencies

## [0.0.1] - 15 Jan

- Implemented DjangoflowFCMBloc, Repository and BlocListeners(for Token and RemoteMessage updates)
