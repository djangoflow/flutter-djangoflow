import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toHourMinute() {
    final DateFormat formatter = DateFormat('hh:mm');
    return formatter.format(this);
  }
}
