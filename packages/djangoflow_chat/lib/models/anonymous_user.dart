// ignore: depend_on_referenced_packages
import 'package:openapi/openapi.dart';

/// The [User] class represents a user in the chat system as Anonymous
class AnynomousUser extends User {
  AnynomousUser() : super(id: '__anonymous__');
}
