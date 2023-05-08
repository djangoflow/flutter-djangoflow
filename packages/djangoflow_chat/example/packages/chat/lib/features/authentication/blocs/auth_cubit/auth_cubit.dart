import 'package:chat/features/app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:openapi/openapi.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    String? token,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

class AuthCubit extends HydratedCubit<AuthState> with AccountsUsersRepository {
  AuthApi get _authApi => ApiRepository.instance.auth;

  static AuthCubit get instance => _instance;
  static final AuthCubit _instance = AuthCubit._internal();

  AuthCubit._internal() : super(const AuthState());

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  void login(User user, String token) =>
      emit(state.copyWith(user: user, token: token));

  Future<void> logout() async {
    emit(
      state.copyWith(
        user: null,
        token: null,
      ),
    );
  }

  Future<void> loginWithEmailPassword({
    required String email,
    required String password,
  }) async {
    final tokenResult = (await _authApi.authTokenCreate(
      tokenObtainRequest: TokenObtainRequest(
        email: email,
        password: password,
      ),
    ))
        .data;

    await _loginUsingToken(tokenResult?.token);
  }

  Future<User> _fetchCurrentUser() async =>
      (await AccountsUsersRepository.retrieve(
        const AccountsUsersRetrieveFilter(
          id: '0', // 0 indicates the current user from token
        ),
      ));

  Future<void> _loginUsingToken(String? token) async {
    if (token != null) {
      emit(state.copyWith(
        token: token,
      ));
      final user = await _fetchCurrentUser();
      login(user, token);
    } else {
      throw Exception('Could not retrieve token');
    }
  }

  Future<User?> partialUpdateUser(
      {required String userId,
      required PatchedUserRequest patchedUserRequest}) async {
    final result = await partialUpdate(
      id: userId,
      patchedUserRequest: patchedUserRequest,
    );

    if (result != null) {
      emit(
        state.copyWith(user: result),
      );
    }
    return result;
  }

  Future<void> reload() async {
    final user = await _fetchCurrentUser();
    emit(
      state.copyWith(
        user: user,
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();
}
