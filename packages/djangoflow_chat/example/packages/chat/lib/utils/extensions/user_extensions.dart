import 'package:chat/configurations/configurations.dart';
import 'package:openapi/openapi.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

extension UserExtensions on User {
  String get name => firstName ?? kAnonymousUserName;
  types.User toChatUser() => types.User(
        id: id ?? kAnonymousUserId,
        firstName: name,
        imageUrl: avatar,
        lastName: lastName,
      );
}
