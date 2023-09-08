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
