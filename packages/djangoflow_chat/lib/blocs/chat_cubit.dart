import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:djangoflow_chat/constants.dart';
import 'package:openapi/openapi.dart';

import 'chat_state.dart';
export 'chat_state.dart';

extension RoomUserToChatUser on RoomUser {
  User toChatUser() => User(
        id: id ?? '__anonymous__',
        firstName: name ?? 'Anonymous',
        avatar: image,
      );
}

extension ReactionListToMap on List<Message> {
  Map<String, int> toMapWithCount() {
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

class ChatCubit extends Cubit<ChatState> {
  final ChatApi _chatApi;
  final int defaultChatPageSize;

  ChatCubit(
    this._chatApi, {
    required String roomId,
    this.defaultChatPageSize = kDefaultPageSize,
  }) : super(ChatState(roomId: roomId));

  Future<void> loadData(String roomId) async {
    startLoading();
    final room = (await _chatApi.chatRoomsRetrieve(id: roomId)).data;
    final result = await _chatApi.chatRoomsUsersList(roomPk: roomId);
    final roomUsers = Map<String, RoomUser>.fromEntries(
        (result.data ?? []).map((e) => MapEntry(e.id!, e)));

    emit(
      state.copyWith(
          loading: true, users: roomUsers, me: _getMe(roomUsers), room: room),
    );

    loadMoreMessages(roomId: roomId, reload: true);
  }

  Future<void> loadMoreMessages(
      {required String roomId, bool reload = false}) async {
    final messages = ((await _chatApi.chatRoomsMessagesList(
                roomPk: roomId,
                limit: defaultChatPageSize,
                offset: reload ? 0 : state.messages.length))
            .data
            ?.results ??
        []);
    final chatMessages = messages;

    emit(state.copyWith(
      loading: false,
      messages: reload ? chatMessages : [...state.messages, ...chatMessages],
    ));

    final seenIds = messages
        .where(
            (e) => e.roomId == roomId && e.isSeenByMe == false && e.id != null)
        .map((e) => e.id as String)
        .toList(growable: false);
    final reactionIds = <String>[];
    for (final reactionMessage in messages) {
      if (reactionMessage.reactions != null &&
          reactionMessage.reactions!.isNotEmpty) {
        reactionIds.addAll(
          reactionMessage.reactions!
              .map((e) => e.id)
              .whereType<String>()
              .toList(growable: false),
        );
      }
    }

    if (seenIds.isNotEmpty || reactionIds.isNotEmpty) {
      _chatApi.chatRoomsMessagesSeenCreate(
        roomPk: roomId,
        messageSeenRequest:
            MessageSeenRequest(messageIds: [...seenIds, ...reactionIds]),
      );
    }
  }

  Future<Message?> sendTextMessage(
      {required String roomId, required String text}) async {
    final result = (await _chatApi.chatRoomsMessagesCreate(
      roomPk: roomId,
      messageRequest: MessageRequest(
        body: text,
      ),
    ))
        .data;

    return result;
  }

  Future<void> uploadImageToMessage(
      {required String roomId, required MultipartFile image}) async {
    // upload image
    await _chatApi.chatImagesCreate(
      roomId: roomId,
      image: image,
    );
  }

  void addRoomUser(RoomUser user) {
    final users = Map<String, RoomUser>.from(state.users);
    users[user.id ?? '__anonymous__'] = user;
    emit(state.copyWith(
        users: users,
        me: user.isMe == true ? user.toChatUser() : _getMe(users)));
  }

  User _getMe(Map<String, RoomUser> users) =>
      users.values
          .firstWhereOrNull(
              (roomUser) => roomUser.isMe == true && roomUser.isActive == true)
          ?.toChatUser() ??
      anonymousUser;

  void addMessage(Message message) {
    final i = state.messages.indexWhere((e) => e.id == message.id);

    if (i < 0) {
      emit(state.copyWith(messages: [message, ...state.messages]));
    } else {
      final messages = state.messages.toList();
      messages.removeAt(i);
      messages.insert(i, message);
      emit(state.copyWith(messages: messages));
    }
    // Mark message as seen
    if (message.roomId != null &&
        message.id != null &&
        message.isSeenByMe != true) {
      markMessageAsSeen(messageIds: [message.id!], roomId: message.roomId!);
      message.reactions?.forEach(
        (reaction) {
          if (reaction.roomId != null &&
              reaction.id != null &&
              reaction.isSeenByMe != true) {
            markMessageAsSeen(
                messageIds: [reaction.id!], roomId: reaction.roomId!);
          }
        },
      );
    }
  }

  Future<MessageSeen?> markMessageAsSeen({
    required String roomId,
    required List<String> messageIds,
  }) async {
    final result = (await _chatApi.chatRoomsMessagesSeenCreate(
      roomPk: roomId,
      messageSeenRequest: MessageSeenRequest(messageIds: messageIds),
    ))
        .data;

    return result;
  }

  Future<void> reactToAMessage({
    required String reactionBody,
    required String messageId,
    required Map<String, int> reactionMetadata,
  }) async {
    if (reactionMetadata.containsKey(reactionBody)) {
      final message = (await _chatApi.chatRoomsMessagesRetrieve(
        id: messageId,
        roomPk: state.roomId,
      ))
          .data;

      final messageCurrentReactions = message?.reactions ?? [];
      final existingReaction = (messageCurrentReactions.firstWhereOrNull(
          (element) => element.body == reactionBody && element.isMe == true));
      if (existingReaction != null) {
        if (existingReaction.id != null) {
          await _removeReaction(messageId: existingReaction.id!);
        } else {
          throw Exception('Could not find message id for reaction');
        }
      } else {
        await _addReaction(
          messageId: messageId,
          reactionBody: reactionBody,
        );
      }
    } else {
      await _addReaction(
        messageId: messageId,
        reactionBody: reactionBody,
      );
    }
  }

  Future<void> _addReaction(
      {required String messageId, required String reactionBody}) async {
    await _chatApi.chatRoomsMessagesCreate(
      roomPk: state.roomId,
      messageRequest: MessageRequest(
        body: reactionBody,
        isReaction: true,
        parentId: messageId,
      ),
    );
  }

  Future<void> _removeReaction({required String messageId}) async {
    await _chatApi.chatRoomsMessagesDestroy(
      roomPk: state.roomId,
      id: messageId,
    );
  }

  void startLoading() => emit(state.copyWith(loading: true));

  void stopLoading() => emit(state.copyWith(loading: false));

  void startImageUploading() => emit(state.copyWith(uploadingImage: true));

  void stopImageUploading() => emit(state.copyWith(uploadingImage: false));
}
