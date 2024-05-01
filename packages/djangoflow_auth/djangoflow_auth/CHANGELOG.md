## 0.5.0

> Note: This release has breaking changes.

 - **BREAKING** **REFACTOR**: add authCubit field for JwtAuthInterceptor. ([bc17ac36](https://github.com/djangoflow/flutter-djangoflow/commit/bc17ac364952d147819630c2dd2388295a124820))

## 0.4.0

> Note: This release has breaking changes.

 - **REFACTOR**: update generated files. ([b057a275](https://github.com/djangoflow/flutter-djangoflow/commit/b057a2751bd47d0d2e436a3418232c01218fda59))
 - **BREAKING** **REFACTOR**: bump djangoflow_openapi version. ([26b7bcd1](https://github.com/djangoflow/flutter-djangoflow/commit/26b7bcd14ac2ab19240342acbff70c44a6131773))

## 0.3.0+5

 - **REFACTOR**: format the codebase. ([fc078388](https://github.com/djangoflow/flutter-djangoflow/commit/fc0783887eb7881d079c7381299248cea2fdf63a))
 - **REFACTOR**: resolve linter warnings. ([9ab6b6e5](https://github.com/djangoflow/flutter-djangoflow/commit/9ab6b6e5e700de585393939f3afd1cb2527f9d39))

## 0.3.0+4

 - **FIX**: check if signed in before logging out. ([e830367e](https://github.com/djangoflow/flutter-djangoflow/commit/e830367e66e2bb65bd3950c8a6ccb9c40de7d959))

## 0.3.0+3

 - **REFACTOR**: use latest dependency. ([7ffec4dc](https://github.com/djangoflow/flutter-djangoflow/commit/7ffec4dcd4b52bebde4fa37706649556ae7d6394))
 - **REFACTOR**: upgrade to flutter_lint 3.0.1. ([ebfc2663](https://github.com/djangoflow/flutter-djangoflow/commit/ebfc266338959dece73dd2b2198277ef0d225bb2))

## 0.3.0+2

 - **REFACTOR**: update djangoflow_openapi dependency. ([993a8c5b](https://github.com/djangoflow/flutter-djangoflow/commit/993a8c5bd4017f6e967a24a2106ba1b18f3e604e))

## 0.3.0+1

 - **REFACTOR**: update dependencies. ([ba8d8a77](https://github.com/djangoflow/flutter-djangoflow/commit/ba8d8a7754b8cc924cea8f29f68005f7d4cf218d))

## 0.3.0

> Note: This release has breaking changes.

 - **REFACTOR**: update tests. ([c08d86d6](https://github.com/djangoflow/flutter-djangoflow/commit/c08d86d65e7039f047c93f3d8c8082ea5035549d))
 - **FEAT**: add HydratedAuthCubitBase abstract class. ([356ba929](https://github.com/djangoflow/flutter-djangoflow/commit/356ba929d28fa8742abd06bafd3a5d9f8f03a652))
 - **DOCS**: update README. ([09286317](https://github.com/djangoflow/flutter-djangoflow/commit/092863175b130b8f03a295166ef9c1a3caadcbca))
 - **BREAKING** **REFACTOR**: AuthCubit now extends HydratedAuthCubitBase. ([804a5e08](https://github.com/djangoflow/flutter-djangoflow/commit/804a5e0896712dd381664f8de8ab04b033923714))

## 0.2.2+1

 - **REFACTOR**: update djangoflow_openapi dependency. ([b486077c](https://github.com/djangoflow/flutter-djangoflow/commit/b486077c80b763f3223ee9149872714b36738398))

## 0.2.2

 - **REFACTOR**: rename `authUserCreate` -> `authUsersCreate`. ([30c0e73a](https://github.com/djangoflow/flutter-djangoflow/commit/30c0e73ab80f666967abb1bb6efa234c1fe8a44b))
 - **FEAT**: add `changePassword`. ([c75f2735](https://github.com/djangoflow/flutter-djangoflow/commit/c75f2735e82d64564200c9b8e3a8a03ce34cf803))

## 0.2.1+6

 - **REFACTOR**: update registerOrInviteUser. ([6ef61571](https://github.com/djangoflow/flutter-djangoflow/commit/6ef615713270a224f9ceb778217d3b9114a91dc7))

## 0.2.1+5

 - **REFACTOR**: rename credentailToTokenLogin to obtainTokenAndLogin. ([98911fd1](https://github.com/djangoflow/flutter-djangoflow/commit/98911fd10a9ff0c5244ce08386869f3685f4d531))

## 0.2.1+4

 - **REFACTOR**: rename loginWithOTP to credentialToTokenLogin for clarity. ([5d83770a](https://github.com/djangoflow/flutter-djangoflow/commit/5d83770a27847a5abb77439fac4d210391d23616))

## 0.2.1+3

 - **FIX**: wrong return type for `UserSignup` via generic. ([e5174289](https://github.com/djangoflow/flutter-djangoflow/commit/e5174289317eca61a4541ea0fbf970397af36723))

## 0.2.1+2

 - **FIX**: wrong return type for `UserSignup`. ([4fef0941](https://github.com/djangoflow/flutter-djangoflow/commit/4fef094108fb76d0876208e4222b9cf046266080))

## 0.2.1+1

 - **REFACTOR**: update `SocialTokenObtainProviderEnum provider` to `ProviderEnum`. ([f6685e40](https://github.com/djangoflow/flutter-djangoflow/commit/f6685e4084e49f011c58884dcb5f98a0055ac998))
 - **REFACTOR**: rename `loginWithOTP` to `loginWithOTP`. ([b7aa9dd3](https://github.com/djangoflow/flutter-djangoflow/commit/b7aa9dd30ec26760ba8d0345862cbe43f2cb2a32))
 - **REFACTOR**: requestOtp now takes `OTPObtainRequest` instead of only email. ([bbe91299](https://github.com/djangoflow/flutter-djangoflow/commit/bbe912990654f9368cc7a129aeb27b5016f89e5e))
 - **REFACTOR**: renamed `registrationWithEmail` to `registerOrInviteUser`. ([746a1c3d](https://github.com/djangoflow/flutter-djangoflow/commit/746a1c3dfd81580be3f9e377a3d967b6770b0a48))
 - **DOCS**: update `SocialTokenObtainProviderEnum provider` to `ProviderEnum`. ([0c231686](https://github.com/djangoflow/flutter-djangoflow/commit/0c231686b9fe86d9676f35597c1c467ada575350))
 - **DOCS**: update method documentation. ([0988879c](https://github.com/djangoflow/flutter-djangoflow/commit/0988879c01ca028bb275c891c74639f0aa2401a2))

## 0.2.1

 - **FEAT**(auth): add JwtAuthInterceptor. ([6378e6e5](https://github.com/djangoflow/flutter-djangoflow/commit/6378e6e59f8e8bece327c91b5316d4c9cf0510b0))

## 0.2.0+1

 - **REFACTOR**(auth): re-structure files for better organization. ([62e836aa](https://github.com/djangoflow/flutter-djangoflow/commit/62e836aab7645edd34062646eca9917e4260917b))
 - **DOCS**(auth): update README. ([6a9e75a5](https://github.com/djangoflow/flutter-djangoflow/commit/6a9e75a5c74535f5bf0db22996f2657f73b127a4))

## 0.2.0

- Updated `djangoflow_openapi` depdendency
- **Breaking Changes** Changed `ProviderEnum` to `SocialTokenObtainProviderEnum`

## 0.1.1

- Added example URL

## 0.1.0

- Removed implementations of SocialLogin support from djangoflow_auth, but they are now in djangoflow_auth_google, djangoflow_auth_facebook, djangoflow_auth_apple, djangoflow_auth_discord.
- Added `SocialLoginListExtensions`

**Breaking Changes**

```dart
// Before
abstract class SocialLogin<R> {
  /// The name of the provider
  final ProviderEnum type;
  //...
}
// After
abstract class SocialLogin<R> {
  /// Type of SocialLogin
  final SocialLoginType type;
```

## 0.0.1

We are excited to announce the initial release of djangoflow_auth!

#### Added

- Initial release of the `djangoflow_auth` Flutter package.
- Support for Google, Facebook, Apple, and Discord social logins.
- Integration with `bloc`, `dio`, and `hydrated_bloc` for handling authentication.
- Example code snippets showcasing usage of different social login providers.
