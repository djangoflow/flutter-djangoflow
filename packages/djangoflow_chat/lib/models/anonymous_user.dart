import 'package:openapi/openapi.dart';

class AnynomousUser extends User {
  AnynomousUser() : super(id: '__anonymous__');
}
