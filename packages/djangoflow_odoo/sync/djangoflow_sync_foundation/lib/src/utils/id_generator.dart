// lib/utils/id_generator.dart
import 'dart:math';

class IdGenerator {
  // Use a negative number to distinguish from server-generated IDs
  static int generateTemporaryId() =>
      -DateTime.timestamp().millisecondsSinceEpoch - Random().nextInt(1000);

  static bool isTemporaryId(int id) => id < 0;
}
