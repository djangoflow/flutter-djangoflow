import 'package:openapi/openapi.dart';

class AnynomousUser extends User {
  const AnynomousUser() : super(id: '__anonymous__');
}
