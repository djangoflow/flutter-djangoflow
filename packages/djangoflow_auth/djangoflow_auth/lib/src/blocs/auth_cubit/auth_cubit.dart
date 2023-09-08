import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:djangoflow_auth/src/exceptions/login_provider_not_found_exception.dart';
import 'package:djangoflow_auth/src/interfaces/social_login.dart';
import 'package:djangoflow_auth/src/models/social_login_type/social_login_type.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'auth_state.dart';

export 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthApi? authApi;

  static AuthCubit get instance => _instance;
  static final AuthCubit _instance = AuthCubit._internal();
  AuthCubit._internal() : super(const AuthState.initial());
  List<SocialLogin> socialLogins = [];

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  /// Authenticate user with social provider
  Future<R?> authenticateWithSocialProvider<R>(SocialLoginType type) async {
    final provider = _firstWhereSocialLogin(type);
    if (provider == null) {
      throw _loginProviderNotFoundException(type);
    }

    final response = (await provider.login()) as R?;
    return response;
  }

  Future<void> logoutWithSocialProvider(SocialLoginType type) async {
    final socialLogin = _firstWhereSocialLogin(type);
    if (socialLogin == null) {
      throw _loginProviderNotFoundException(type);
    }

    await socialLogin.logout();
  }

  SocialLogin<dynamic>? _firstWhereSocialLogin(SocialLoginType type) =>
      socialLogins.firstWhereOrNull(
        (element) => element.type == type,
      );

  LoginProviderNotFoundException _loginProviderNotFoundException(
          SocialLoginType type,
          {String? message}) =>
      LoginProviderNotFoundException(
        message ?? 'Social Provider ${type.provider.name} was not found',
      );

  /// Logout user, also removes token from storage and logs out user from social logins
  Future<void> logout() async {
    for (final provider in socialLogins) {
      await provider.logout();
    }
    emit(
      const AuthState.unauthenticated(),
    );
  }

  /// Register or invite user to the system
  Future<UserSignup?> registerOrInviteUser({
    required UserSignupRequest userSignupRequest,
  }) async =>
      _authApiChecker(() async {
        final result = (await authApi?.authUserCreate(
          userSignupRequest: userSignupRequest,
        ))
            ?.data;

        return result;
      }) as Future<UserSignup?>;

  /// Request OTP for verification.
  Future<void> requestOTP({required OTPObtainRequest otpObtainRequest}) async =>
      _authApiChecker(
        () async => (
          await authApi?.authOtpCreate(
            oTPObtainRequest: otpObtainRequest,
          ),
        ),
      );

  /// Login user with OTP. otp should not be empty
  Future<void> loginWithOTP({
    required TokenObtainRequest tokenObtainRequest,
  }) async =>
      _authApiChecker(() async {
        final tokenResult = (await authApi?.authTokenCreate(
          tokenObtainRequest: tokenObtainRequest,
        ))
            ?.data;
        final token = tokenResult?.token;

        await _loginUsingToken(token);
      });

  Future<void> _loginUsingToken(String? token) async {
    if (token != null) {
      emit(AuthState.authenticated(token: token));
    } else {
      throw Exception('Could not retrieve token');
    }
  }

  /// Login user with magic link. magiclink should not be empty
  /// It supports only email at the moment.
  Future<void> loginWithMagicLink({required String magiclink}) async {
    try {
      final credentials = utf8
          .decode(base64.decode(const Base64Codec().normalize(magiclink)))
          .split('/');

      await loginWithOTP(
        tokenObtainRequest: TokenObtainRequest(
          email: credentials[0],
          otp: credentials[1],
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> loginWithSocialProvider(
          {required SocialTokenObtainRequest socialTokenObtainRequest}) async =>
      _authApiChecker(() async {
        final result = (await authApi?.authSocialCreate(
                socialTokenObtainRequest: socialTokenObtainRequest))
            ?.data;
        if (result?.token != null) {
          _loginUsingToken(result!.token!);
        } else {
          throw Exception('Could not retrieve token for social login');
        }
      });

  Future<dynamic> _authApiChecker(Function function) async {
    if (authApi == null) {
      throw Exception('AuthApi is not initialized');
    }
    return await function();
  }
}
