import 'package:openapi/openapi.dart';

extension ReactionListToMapExtension on List<Message> {
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
}
