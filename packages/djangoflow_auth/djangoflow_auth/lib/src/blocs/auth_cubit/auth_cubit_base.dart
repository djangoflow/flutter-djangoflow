import 'package:djangoflow_auth/src/interfaces/social_login.dart';
import 'package:djangoflow_auth/src/models/social_login_type/social_login_type.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'auth_state.dart';

export 'auth_state.dart';

/// This is the base class for AuthCubit.
/// It allows to create AuthCubit based on any kind of backends.
abstract class HydratedAuthCubitBase extends HydratedCubit<AuthState> {
  HydratedAuthCubitBase(AuthState initialState) : super(initialState);

  List<SocialLogin> socialLogins = [];

  /// Authenticate and request token for user from the Social Auth Provider
  /// eg, facebook, google etc.
  Future<R?> requestTokenFromSocialProvider<R>(SocialLoginType type);

  Future<void> logoutFromSocialProvider(SocialLoginType type);

  Future<void> logout();

  Future<UserIdentity?> registerOrInviteUser({
    required UserIdentityRequest userIdentityRequest,
  });

  Future<void> requestOTP({required OTPObtainRequest otpObtainRequest});

  /// Authenticates the user based on provided credentials (e.g., username+password or email+OTP etc)
  /// and logs them in by obtaining and processing a JWT token.
  Future<void> obtainTokenAndLogin({
    required TokenObtainRequest tokenObtainRequest,
  });

  /// Login user with magic link. magiclink should not be empty
  /// It supports only email at the moment.
  Future<void> loginWithMagicLink({required String magiclink});

  /// Login user with social provider token data that was retrieved via [requestTokenFromSocialProvider]
  /// This will retrieve token from backend and login user
  Future<void> loginWithSocialProviderToken(
      {required SocialTokenObtainRequest socialTokenObtainRequest});

  Future<void> changePassword({
    required String id,
    required ChangePasswordRequest changePasswordRequest,
  });
}
