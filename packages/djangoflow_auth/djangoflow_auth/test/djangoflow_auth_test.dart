import 'package:djangoflow_auth/djangoflow_auth.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {}

void main() {
  group('AuthCubit', () {
    late AuthCubit cubit;
    late Storage storage;
    setUp(() {
      storage = MockStorage();
      when<dynamic>(() => storage.read(any())).thenReturn(<String, dynamic>{});
      when(() => storage.write(any(), any<dynamic>())).thenAnswer((_) async {});
      when(() => storage.delete(any())).thenAnswer((_) async {});
      when(() => storage.clear()).thenAnswer((_) async {});
      HydratedBloc.storage = storage;
      cubit = AuthCubit.instance;
    });

    test('initial state is initial', () {
      expect(cubit.state, const AuthState.initial());
    });

    test(
        'authenticateWithSocialProvider() throws LoginProviderNotFoundException if provider is not found',
        () async {
      await expectLater(
        cubit.authenticateWithSocialProvider<String>(const SocialLoginType(
          id: 'Google',
          provider: SocialTokenObtainProviderEnum.googleOauth2,
        )),
        throwsA(
          isA<LoginProviderNotFoundException>(),
        ),
      );
      // expect(exception.message, 'Social Provider Google was not found');
    });

    test('logout() logs out all social logins', () async {
      cubit.socialLogins = [
        SocialLoginMock(
          type: const SocialLoginType(
            id: 'Google',
            provider: SocialTokenObtainProviderEnum.googleOauth2,
          ),
        ),
      ];

      await cubit.logout();

      expect(cubit.state, const AuthState.unauthenticated());
    });
  });
}

class SocialLoginMock extends SocialLogin {
  SocialLoginMock({required super.type});

  @override
  Future<void> login() async {}

  @override
  Future<void> logout() async {}
}
