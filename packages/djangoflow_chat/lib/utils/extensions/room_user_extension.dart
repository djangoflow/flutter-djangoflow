import 'package:openapi/openapi.dart';

extension RoomUserToUserExtension on RoomUser {
  User toUser() => User(
        id: id ?? '__anonymous__',
        firstName: name ?? 'Anonymous',
        avatar: image,
      );
}
