import 'package:openapi/openapi.dart';

extension RoomUserToUserExtension on RoomUser {
  /// Converts a [RoomUser] to a [User]
  User toUser() => User(
        id: id ?? '__anonymous__',
        firstName: name ?? 'Anonymous',
        avatar: image,
      );
}
