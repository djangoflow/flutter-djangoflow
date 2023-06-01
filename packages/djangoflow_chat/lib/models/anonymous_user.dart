import 'package:djangoflow_openapi/djangoflow_openapi.dart';

/// The [RoomUser] class represents a user in the chat system as Anonymous
class AnynomousUser extends RoomUser {
  AnynomousUser() : super(id: '__anonymous__');
}
