import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:djangoflow_chat/constants.dart';
import 'package:djangoflow_chat/utils/extensions/message_extension.dart';
import 'package:djangoflow_chat/utils/extensions/room_user_extension.dart';
import 'package:djangoflow_chat/utils/extensions/string_extensions.dart';
import 'package:openapi/openapi.dart';

import '../../models/anonymous_user.dart';
import 'chat_state.dart';
export 'chat_state.dart';

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
      (result.data ?? []).map(
        (e) => MapEntry(e.id!, e),
      ),
    );

    emit(
      state.copyWith(
        loading: true,
        roomUsers: roomUsers,
        me: _getMe(roomUsers),
        room: room,
      ),
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

    emit(
      state.copyWith(
        loading: false,
        messages: reload ? chatMessages : [...state.messages, ...chatMessages],
      ),
    );

    final seenIds = messages.unseenMessageIds;

    final reactionIds = <String>[];
    for (final reactionMessage in messages) {
      if (reactionMessage.reactions != null &&
          reactionMessage.reactions!.isNotEmpty) {
        reactionIds.addAll(
          reactionMessage.reactions!.unseenMessageIds,
        );
      }
    }

    if (seenIds.isNotEmpty || reactionIds.isNotEmpty) {
      markMessageAsSeen(
          roomId: roomId, messageIds: [...seenIds, ...reactionIds]);
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

  /// Add a [RoomUser] to `roomUsers`
  void addRoomUser(RoomUser user) {
    final roomUsers = Map<String, RoomUser>.from(state.roomUsers);
    roomUsers[user.id ?? '__anonymous__'] = user;
    emit(
      state.copyWith(
        roomUsers: roomUsers,
        me: user.isMe == true ? user.toUser() : _getMe(roomUsers),
      ),
    );
  }

  User _getMe(Map<String, RoomUser> roomUsers) =>
      roomUsers.values
          .firstWhereOrNull(
              (roomUser) => roomUser.isMe == true && roomUser.isActive == true)
          ?.toUser() ??
      AnynomousUser();

  /// Add a [Message] to `messages`, additionally marks it as seen as well
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
    // Mark message and reactions as seen
    if (message.roomId != null &&
        message.id != null &&
        message.isSeenByMe != true) {
      markMessageAsSeen(messageIds: [message.id!], roomId: message.roomId!);
      final unseenReactionIds = message.reactions?.unseenMessageIds;
      if (unseenReactionIds.isNotNullOrEmpty) {
        markMessageAsSeen(
          messageIds: unseenReactionIds!,
          roomId: message.roomId!,
        );
      }
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
