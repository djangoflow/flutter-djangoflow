import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import '../repositories/djangoflow_odoo_auth_repository.dart';
import 'djangoflow_odoo_auth_state.dart';

class DjangoflowOdooAuthCubit extends HydratedCubit<DjangoflowOdooAuthState> {
  final DjangoflowOdooAuthRepository _repository;

  DjangoflowOdooAuthCubit(this._repository)
      : super(const DjangoflowOdooAuthState()) {
    if (state.baseUrl != null && state.session != null) {
      checkAuthStatus();
    }
    _repository.sessionStream.listen(_handleSessionChange);
  }

  void _handleSessionChange(OdooSession session) {
    if (session.id.isEmpty || session.userId == 0) {
      logout();
    } else {
      emit(state.copyWith(
        status: AuthStatus.authenticated,
        session: session,
      ));
    }
  }

  Future<void> checkAuthStatus() async {
    final storedSession = state.session;
    if (storedSession != null && state.baseUrl != null) {
      await _repository.initializeClient(state.baseUrl!,
          session: storedSession);
      final isValid = await _repository.validateSession();
      if (isValid) {
        emit(state.copyWith(
          status: AuthStatus.authenticated,
        ));
      } else {
        emit(
          state.copyWith(
            status: AuthStatus.unauthenticated,
            session: null,
          ),
        );
      }
    } else {
      emit(
        state.copyWith(
          status: AuthStatus.unauthenticated,
          session: null,
        ),
      );
    }
  }

  Future<void> setBaseUrl(String url) async {
    await _repository.initializeClient(url);
    emit(state.copyWith(baseUrl: url));
  }

  Future<void> setDatabase(String database) async {
    emit(state.copyWith(database: database));
  }

  Future<void> login(String username, String password) async {
    if (state.baseUrl == null || state.database == null) {
      emit(state.copyWith(
          status: AuthStatus.error,
          errorMessage: 'Base URL or database not set'));
      return;
    }
    try {
      final session =
          await _repository.login(state.database!, username, password);
      emit(state.copyWith(
        status: AuthStatus.authenticated,
        session: session,
      ));
      // The session change will be handled by the session stream listener
    } catch (e) {
      emit(
          state.copyWith(status: AuthStatus.error, errorMessage: e.toString()));
    }
  }

  Future<void> logout() async {
    await _repository.logout();
    emit(state.copyWith(
      status: AuthStatus.unauthenticated,
      baseUrl: null,
      database: null,
      errorMessage: null,
      session: null,
    ));
  }

  @override
  DjangoflowOdooAuthState fromJson(Map<String, dynamic> json) =>
      DjangoflowOdooAuthState.fromJson(json);

  @override
  Map<String, dynamic> toJson(DjangoflowOdooAuthState state) => state.toJson();
}
