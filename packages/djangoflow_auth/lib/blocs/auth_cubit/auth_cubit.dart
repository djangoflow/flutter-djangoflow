import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:djangoflow_auth/interfaces/social_login.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'auth_state.dart';

export 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  final List<SocialLogin> socialLoginProviders;
  AuthApi authApi;

  AuthCubit({
    required this.authApi,
    this.socialLoginProviders = const <SocialLogin>[],
    required AuthState initialState,
  }) : super(initialState);

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  Future<R?> loginWithSocial<R>(ProviderEnum providerEnum) async {
    final provider = socialLoginProviders.firstWhereOrNull(
      (element) => element.provider == providerEnum,
    );
    if (provider == null) {
      throw Exception('SocialLoginProvider not found ${providerEnum.name}');
    }

    final response = (await provider.login()) as R?;
    return response;
  }

  Future<void> logoutWithSocial(ProviderEnum providerEnum) async {
    final provider = socialLoginProviders.firstWhereOrNull(
      (element) => element.provider == providerEnum,
    );
    if (provider == null) {
      throw Exception('Provider not found ${providerEnum.name}');
    }

    await provider.logout();
  }

  Future<void> logout() async {
    for (final provider in socialLoginProviders) {
      await provider.logout();
    }
    emit(
      const AuthState.unauthenticated(),
    );
  }

  Future<void> registrationWithEmail({
    required String email,
    required String firstName,
    required String lastName,
  }) async {
    await authApi.authSignupCreate(
      signupRequest: SignupRequest(
        email: email,
        firstName: firstName,
        lastName: lastName,
      ),
    );

    await requestOTP(email: email);
  }

  Future<void> requestOTP({required String email}) async =>
      (await authApi.authOtpCreate(
        oTPObtainRequest: OTPObtainRequest(email: email),
      ))
          .data;

  Future<void> loginWithEmailOTP({
    required String email,
    required String otp,
  }) async {
    final tokenResult = (await authApi.authTokenCreate(
      tokenObtainRequest: TokenObtainRequest(
        email: email,
        otp: otp,
      ),
    ))
        .data;
    final token = tokenResult?.token;

    await _loginUsingToken(token);
  }

  Future<void> _loginUsingToken(String? token) async {
    if (token != null) {
      emit(AuthState.authenticated(token: token));
    } else {
      throw Exception('Could not retrieve token');
    }
  }

  Future<void> loginWithMagicLink({required String magiclink}) async {
    try {
      final credentials = utf8
          .decode(base64.decode(const Base64Codec().normalize(magiclink)))
          .split('/');
      await loginWithEmailOTP(email: credentials[0], otp: credentials[1]);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> loginWithSocialProvider(
      {required SocialTokenObtainRequest socialTokenObtainRequest}) async {
    final result = (await authApi.authSocialCreate(
            socialTokenObtainRequest: socialTokenObtainRequest))
        .data;
    if (result!.token != null) {
      _loginUsingToken(result.token!);
    } else {
      throw Exception('Could not retrieve token for social login');
    }
  }
}
