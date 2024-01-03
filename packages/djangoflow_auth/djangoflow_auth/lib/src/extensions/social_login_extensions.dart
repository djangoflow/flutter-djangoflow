import 'package:djangoflow_auth/src/exceptions/login_provider_not_found_exception.dart';
import 'package:djangoflow_auth/src/interfaces/social_login.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:collection/collection.dart';

extension SocialLoginListExtensions on List<SocialLogin> {
  SocialLogin getSocialLoginByProvider(ProviderEnum provider) {
    final socialLogin = firstWhereOrNull(
      (element) => element.type.provider == provider,
    );
    if (socialLogin == null) {
      throw LoginProviderNotFoundException(
        'SocialLogin not found for ${provider.name}\nMake sure you have added the SocialLogin to the list of SocialLogins in the AuthCubit',
      );
    }

    return socialLogin;
  }
}
