import 'package:openapi/openapi.dart';

extension MessageListExtension on List<Message> {
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

  List<String> get unseenMessageIds =>
      where((message) => message.isSeenByMe != true && message.id != null)
          .map((e) => e.id!)
          .toList(growable: false);
}
