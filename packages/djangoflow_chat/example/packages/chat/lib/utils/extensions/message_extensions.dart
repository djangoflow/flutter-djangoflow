import 'package:chat/configurations/configurations.dart';
import 'package:djangoflow_chat/utils/extensions/message_extension.dart';
import 'package:openapi/openapi.dart' as openapi;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import 'room_user_extensions.dart';

extension MessageToChatMessage on openapi.Message {
  types.Message toChatMesage(Map<String, openapi.RoomUser> users) {
    final author = users[roomUserId];
    final reactions = this.reactions ?? <openapi.Message>[];
    // TODO this needs to be come from actual message object
    // Which is array of Message with is_reaction = true
    final metadata = {
      'reactions': reactions.toReactionsMapWithCount(),
    };
    if (images != null && images!.isNotEmpty) {
      final firstImage = images?.first;
      if (firstImage?.image != null) {
        return types.ImageMessage(
            id: id!,
            metadata: metadata,
            uri: firstImage!.image!,
            name: firstImage.name ?? '',
            size: firstImage.size ?? 0,
            height: firstImage.height?.toDouble(),
            width: firstImage.width?.toDouble(),
            createdAt: created?.millisecondsSinceEpoch,
            author: author?.toChatUser() ?? kAnonymousChatUser);
      }
    }
    return types.TextMessage(
      id: id!,
      text: body ?? '',
      createdAt: created?.millisecondsSinceEpoch,
      author: author?.toChatUser() ?? kAnonymousChatUser,
      metadata: metadata,
    );
  }
}
