import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

part 'djangoflow_odoo_auth_state.freezed.dart';
part 'djangoflow_odoo_auth_state.g.dart';

enum AuthStatus { initial, unauthenticated, authenticated }

@freezed
class DjangoflowOdooAuthState with _$DjangoflowOdooAuthState {
  const factory DjangoflowOdooAuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    String? errorMessage,
    String? baseUrl,
    String? database,
    @OdooSessionConverter() OdooSession? session,
    List<String>? dbList,
  }) = _DjangoflowOdooAuthState;

  factory DjangoflowOdooAuthState.fromJson(Map<String, dynamic> json) =>
      _$DjangoflowOdooAuthStateFromJson(json);
}

class OdooSessionConverter
    implements JsonConverter<OdooSession, Map<String, dynamic>> {
  const OdooSessionConverter();

  @override
  OdooSession fromJson(Map<String, dynamic> json) => OdooSession(
        id: json['id'] as String,
        userId: json['userId'] as int,
        partnerId: json['partnerId'] as int,
        companyId: json['companyId'] as int,
        allowedCompanies: (json['allowedCompanies'] as List<dynamic>)
            .map((e) => (id: e['id'] as int, name: e['name'] as String))
            .toList(),
        userLogin: json['userLogin'] as String,
        userName: json['userName'] as String,
        userLang: json['userLang'] as String,
        userTz: json['userTz'] as String,
        isSystem: json['isSystem'] as bool,
        dbName: json['dbName'] as String,
        serverVersion: json['serverVersion'] as String,
      );

  @override
  Map<String, dynamic> toJson(OdooSession session) => {
        'id': session.id,
        'userId': session.userId,
        'partnerId': session.partnerId,
        'companyId': session.companyId,
        'allowedCompanies': session.allowedCompanies
            .map((company) => {'id': company.id, 'name': company.name})
            .toList(),
        'userLogin': session.userLogin,
        'userName': session.userName,
        'userLang': session.userLang,
        'userTz': session.userTz,
        'isSystem': session.isSystem,
        'dbName': session.dbName,
        'serverVersion': session.serverVersion,
      };
}
