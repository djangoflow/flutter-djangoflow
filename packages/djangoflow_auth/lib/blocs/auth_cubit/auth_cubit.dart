import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:djangoflow_auth/exceptions/login_provider_not_found_exception.dart';
import 'package:djangoflow_auth/interfaces/social_login.dart';
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

  Future<R?> authenticateWithSocialProvider<R>(
      ProviderEnum providerEnum) async {
    final provider = socialLogins.firstWhereOrNull(
      (element) => element.provider == providerEnum,
    );
    if (provider == null) {
      throw LoginProviderNotFoundException(
          'Social Provider ${providerEnum.name} was not found');
    }

    final response = (await provider.login()) as R?;
    return response;
  }

  Future<void> logoutWithSocialProvider(ProviderEnum providerEnum) async {
    final provider = socialLogins.firstWhereOrNull(
      (element) => element.provider == providerEnum,
    );
    if (provider == null) {
      throw LoginProviderNotFoundException(
          'Social Provider ${providerEnum.name} was not found');
    }

    await provider.logout();
  }

  Future<void> logout() async {
    for (final provider in socialLogins) {
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
  }) async =>
      _authApiChecker(() async {
        await authApi?.authSignupCreate(
          signupRequest: SignupRequest(
            email: email,
            firstName: firstName,
            lastName: lastName,
          ),
        );

        await requestOTP(email: email);
      });

  Future<void> requestOTP({required String email}) async => _authApiChecker(
        () async => (
          await authApi?.authOtpCreate(
            oTPObtainRequest: OTPObtainRequest(email: email),
          ),
        ),
      );

  Future<void> loginWithEmailOTP({
    required String email,
    required String otp,
  }) async =>
      _authApiChecker(() async {
        final tokenResult = (await authApi?.authTokenCreate(
          tokenObtainRequest: TokenObtainRequest(
            email: email,
            otp: otp,
          ),
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

  Future<void> _authApiChecker(Function function) async {
    if (authApi == null) {
      throw Exception('AuthApi is not initialized');
    }
    await function();
  }
}
