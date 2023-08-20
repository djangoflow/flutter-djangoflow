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
