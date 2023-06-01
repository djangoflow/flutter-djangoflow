import 'package:djangoflow_openapi/djangoflow_openapi.dart';

extension MessageListExtension on List<Message> {
  /// Returns a map of reactions with count in a [Message.reactions] list
  Map<String, int> toReactionsMapWithCount() {
    var map = <String, int>{};
    forEach((element) {
      if (map.containsKey(element.body)) {
        map[element.body!] = map[element.body]! + 1;
      } else {
        map[element.body!] = 1;
      }
    });

    return map;
  }

  /// Returns a list of message ids that are not seen by the current user
  List<String> get unseenMessageIds =>
      where((message) => message.isSeenByMe != true && message.id != null)
          .map((e) => e.id!)
          .toList(growable: false);
}
