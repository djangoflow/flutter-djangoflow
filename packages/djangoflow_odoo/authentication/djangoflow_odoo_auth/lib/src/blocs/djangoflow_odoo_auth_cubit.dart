import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import 'package:djangoflow_odoo_auth/src/repositories/djangoflow_odoo_auth_repository.dart';
import 'package:djangoflow_odoo_auth/src/blocs/djangoflow_odoo_auth_state.dart';

class DjangoflowOdooAuthCubit extends HydratedCubit<DjangoflowOdooAuthState> {
  DjangoflowOdooAuthCubit(this._repository)
      : super(const DjangoflowOdooAuthState()) {
    if (state.baseUrl != null && state.session != null) {
      checkAuthStatus();
    }
    _repository.sessionStream.listen(_handleSessionChange);
  }
  final DjangoflowOdooAuthRepository _repository;

  void _handleSessionChange(OdooSession session) {
    debugPrint('Session Changed : ${session.toJson()}');
    if (session.id.isEmpty || session.userId == 0) {
      emit(
        state.copyWith(
          status: AuthStatus.unauthenticated,
          database: null,
          errorMessage: null,
          session: null,
          dbList: null,
          baseUrl: null,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: AuthStatus.authenticated,
          session: session,
          database: session.dbName,
        ),
      );
    }
  }

  Future<void> checkAuthStatus() async {
    final storedSession = state.session;
    if (state.baseUrl != null) {
      _repository.initializeClient(
        state.baseUrl!,
        session: storedSession,
      );
      final isValid = await _repository.validateSession();
      if (isValid) {
        emit(
          state.copyWith(
            status: AuthStatus.authenticated,
          ),
        );
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

  void setBaseUrl(String url) {
    _repository.initializeClient(url);
    emit(state.copyWith(baseUrl: url));
  }

  void setDatabase(String database) {
    emit(state.copyWith(database: database));
  }

  Future<void> login(String username, String password) async {
    if (state.baseUrl == null || state.database == null) {
      throw Exception('Base URL and Database must be set before login');
    }
    try {
      final session =
          await _repository.login(state.database!, username, password);
      if (session != null && session.id.isNotEmpty && session.userId != 0) {
        emit(
          state.copyWith(
            status: AuthStatus.authenticated,
            session: session,
          ),
        );
      } else {
        throw Exception('Failed to login');
      }

      // The session change will be handled by the session stream listener
    } catch (e) {
      if (e is OdooSessionExpiredException) {
        throw Exception('Session Expired');
      } else if (e is OdooException) {
        throw Exception('Failed to login, please check your credentials.');
      }
      rethrow;
    }
  }

  Future<void> logout() async {
    await _repository.logout();
    emit(
      state.copyWith(
        status: AuthStatus.unauthenticated,
        session: null,
        dbList: null,
        errorMessage: null,
        database: null,
      ),
    );
  }

  Future<void> fetchDbList() async {
    try {
      final dbList = await _repository.getDatabases();
      emit(state.copyWith(dbList: dbList));
    } catch (e) {
      throw Exception('Failed to get database list: $e');
    }
  }

  Future<void> loginWithSessionId(String sessionId) async {
    if (state.baseUrl == null) {
      throw Exception('Base URL must be set before login');
    }
    try {
      final session =
          await _repository.loginWithSessionId(state.baseUrl!, sessionId);
      _repository.initializeClient(state.baseUrl!, session: session);
      emit(
        state.copyWith(
          status: AuthStatus.authenticated,
          session: session,
          database: session.dbName,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: AuthStatus.unauthenticated,
        ),
      );
      if (e is OdooSessionExpiredException) {
        throw Exception('Session Expired');
      } else if (e is OdooException) {
        throw Exception('Failed to login, please check your credentials.');
      }
      rethrow;
    }
  }

  @override
  DjangoflowOdooAuthState fromJson(Map<String, dynamic> json) =>
      DjangoflowOdooAuthState.fromJson(json);

  @override
  Map<String, dynamic> toJson(DjangoflowOdooAuthState state) => state.toJson();
}
