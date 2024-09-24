// lib/utils/id_generator.dart
import 'dart:math';

class IdGenerator {
  static int generateTemporaryId() {
    // Use a negative number to distinguish from server-generated IDs
    return -DateTime.timestamp().millisecondsSinceEpoch -
        Random().nextInt(1000);
  }

  static bool isTemporaryId(int id) {
    return id < 0;
  }
}
