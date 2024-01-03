// freezed class for AuthState with String? token and T? user with json serialization
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@Freezed(genericArgumentFactories: true, copyWith: true)
sealed class AuthState with _$AuthState {
  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated({required String token}) =
      _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;

  const AuthState._();

  bool get isAuthenticated => this is _Authenticated;

  String? get token => map(
        initial: (_) => null,
        authenticated: (state) => state.token,
        unauthenticated: (_) => null,
      );

  bool get isUnauthenticated => this is _Unauthenticated;

  bool get isInitial => this is _Initial;
}
