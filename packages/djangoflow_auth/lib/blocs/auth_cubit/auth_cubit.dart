import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:djangoflow_auth/interfaces/social_login_provider.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final List<SocialLoginProvider> socialLoginProviders;
  final AuthApi authApi;

  AuthCubit({
    required this.authApi,
    this.socialLoginProviders = const <SocialLoginProvider<dynamic>>[],
    required AuthState initialState,
  }) : super(initialState);

  Future<dynamic> loginWithSocial(String providerName) async {
    final provider = socialLoginProviders.firstWhereOrNull(
      (element) => element.providerName == providerName,
    );
    if (provider == null) {
      throw Exception('SocialLoginProvider not found $providerName');
    }

    final response = await provider.login();
    return response;
  }

  Future<void> logoutWithSocial(String providerName) async {
    final provider = socialLoginProviders.firstWhereOrNull(
      (element) => element.providerName == providerName,
    );
    if (provider == null) throw Exception('Provider not found $providerName');

    await provider.logout();
  }

  void login(String token) => emit(AuthState.authenticated(token: token));

  Future<void> logout() async {
    emit(
      const AuthState.unauthenticated(),
    );
  }
  // TODO Need to discuss with BE
  // Future<void> registrationWithEmail({
  //   required String email,
  //   required String firstName,
  //   required String lastName,
  // }) async {
  //   await authApi.authSignupCreate(
  //     signupRequest: SignupRequest(
  //       firstName: firstName,
  //       lastName: lastName,
  //     ),
  //   );

  //   await requestOTP(email: email);
  // }

  Future<void> requestOTP({required String username}) async =>
      (await authApi.authOtpCreate(
        oTPObtainRequest: OTPObtainRequest(username: username),
      ))
          .data;

  Future<Token?> loginWithOTP({
    required TokenObtainRequest tokenObtainRequest,
  }) async {
    final tokenResult = (await authApi.authTokenCreate(
      tokenObtainRequest: tokenObtainRequest,
    ))
        .data;
    final token = tokenResult?.token;

    await _loginUsingToken(token);

    return tokenResult;
  }

  Future<void> _loginUsingToken(String? token) async {
    if (token != null) {
      login(token);
    } else {
      throw Exception('Could not retrieve token');
    }
  }

  Future<void> loginWithMagicLink({required String magiclink}) async {
    try {
      final credentials = utf8
          .decode(base64.decode(const Base64Codec().normalize(magiclink)))
          .split('/');

      await loginWithOTP(
        tokenObtainRequest: TokenObtainRequest(
          username: credentials[0],
          otp: credentials[1],
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> loginWithSocialAccessToken({
    required String provider,
    required String accessToken,
    String? firstName,
    String? lastName,
  }) async {
    final token = (await authApi.authSocialCreate(
      socialTokenObtainRequest: SocialTokenObtainRequest(
        accessToken: accessToken,
        provider: provider,
        firstName: firstName,
        lastName: lastName,
      ),
    ))
        .data
        ?.token;

    await _loginUsingToken(token);
  }

  Future<void> loginWithEmailPassword({
    required String username,
    required String password,
  }) async {
    final tokenResult = (await authApi.authTokenCreate(
      tokenObtainRequest: TokenObtainRequest(
        username: username,
        password: password,
      ),
    ))
        .data;

    await _loginUsingToken(tokenResult?.token);
  }
}
