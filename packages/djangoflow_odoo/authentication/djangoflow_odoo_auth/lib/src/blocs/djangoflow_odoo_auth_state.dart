import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

part 'djangoflow_odoo_auth_state.freezed.dart';
part 'djangoflow_odoo_auth_state.g.dart';

enum AuthStatus { initial, unauthenticated, authenticated, error }

@freezed
class DjangoflowOdooAuthState with _$DjangoflowOdooAuthState {
  const factory DjangoflowOdooAuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    String? errorMessage,
    String? baseUrl,
    String? database,
    @SessionConverter() OdooSession? session,
    List<String>? dbList,
  }) = _DjangoflowOdooAuthState;

  factory DjangoflowOdooAuthState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowOdooAuthStateFromJson(json);
}

class SessionConverter
    implements JsonConverter<OdooSession?, Map<String, dynamic>?> {
  const SessionConverter();

  @override
  OdooSession? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OdooSession.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(OdooSession? session) => session?.toJson();
}
