import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:djangoflow_bloc_extensions/djangoflow_bloc_extensions.dart';
import 'package:djangoflow_chat/constants.dart';
import 'package:djangoflow_chat/models/anonymous_user.dart';
import 'package:djangoflow_openapi/djangoflow_openapi.dart';

import 'package:djangoflow_chat/blocs/chat_cubit/chat_state.dart';
export 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> with SafeEmitMixin<ChatState> {
  ChatCubit(
    this._chatApi, {
    required this.roomId,
    required this.myId,
    this.defaultChatPageSize = kDefaultPageSize,
  }) : super(ChatState(roomId: roomId));

  /// The [ChatApi] instance
  final ChatApi _chatApi;

  /// The default page size for pagination
  final int defaultChatPageSize;

  /// The [Room] id
  final int roomId;

  /// The current logged in user's id
  final int myId;

  /// Loads the [Room], [RoomUser]s and [Message] as well, this needs to be called at the start of the chat
  /// to load the initial data
  Future<void> loadData() async {
    startLoading();
    final room = (await _chatApi.chatRoomsRetrieve(id: roomId.toString())).data;
    final result =
        (await _chatApi.chatRoomsMembersRetrieve(id: roomId.toString()))
            .data
            ?.members;
    final roomUsers = Map<int, User>.fromEntries(
      (result ?? []).map(
        (e) => MapEntry(e.id ?? 0, e),
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

  /// Load messages, automatically load more messages for pagination
  Future<void> loadMoreMessages({
    required int roomId,
    bool reload = false,
  }) async {
    final messages = ((await _chatApi.chatRoomsMessagesList(
          roomId: roomId,
          limit: defaultChatPageSize,
          offset: reload ? 0 : state.messages.length,
        ))
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

    // final seenIds = messages.unseenMessageIds;

    // final reactionIds = <String>[];
    // for (final reactionMessage in messages) {
    //   if (reactionMessage.reactions != null &&
    //       reactionMessage.reactions!.isNotEmpty) {
    //     reactionIds.addAll(
    //       reactionMessage.reactions!.unseenMessageIds,
    //     );
    //   }
    // }

    // if (seenIds.isNotEmpty || reactionIds.isNotEmpty) {
    //   markMessagesAsSeen(
    //     roomId: roomId,
    //     messageIds: [...seenIds, ...reactionIds],
    //   );
    // }
  }

  /// Send text message
  Future<ChatMessage?> sendTextMessage({
    required String text,
  }) async {
    final result = (await _chatApi.chatRoomsMessagesCreate(
      roomId: roomId,
      chatMessageRequest: ChatMessageRequest(
        message: text,
      ),
    ))
        .data;

    return result;
  }

  /// Send image message
  // Future<void> uploadImageToMessage({
  //   required String roomId,
  //   required MultipartFile image,
  // }) async {
  //   // upload image
  //   await _chatApi.chatImagesCreate(
  //     roomId: roomId,
  //     image: image,
  //   );
  // }

  /// Add a [RoomUser] to `roomUsers`
  // void addRoomUser(RoomUser user) {
  //   final roomUsers = Map<String, RoomUser>.from(state.roomUsers);
  //   roomUsers[user.id ?? '__anonymous__'] = user;
  //   emit(
  //     state.copyWith(
  //       roomUsers: roomUsers,
  //       me: user.isMe == true ? user : _getMe(roomUsers),
  //     ),
  //   );
  // }

  /// Returns the current user
  User _getMe(Map<int, User> roomUsers) =>
      roomUsers.values.firstWhereOrNull(
        (roomUser) => roomUser.id == myId,
      ) ??
      AnynomousUser();

  /// Add a [Message] to `messages`
  void addMessage(ChatMessage message) {
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
    // if (message.roomId != null &&
    //     message.id != null &&
    //     message.isSeenByMe != true) {
    //   markMessagesAsSeen(messageIds: [message.id!], roomId: message.roomId!);
    //   final unseenReactionIds = message.reactions?.unseenMessageIds;
    //   if (unseenReactionIds.isNotNullOrEmpty) {
    //     markMessagesAsSeen(
    //       messageIds: unseenReactionIds!,
    //       roomId: message.roomId!,
    //     );
    //   }
    // }
  }

  /// Mark messages as seen, need to provide a [roomId] and a list of [messageIds]
  // Future<MessageSeen?> markMessagesAsSeen({
  //   required int roomId,
  //   required List<String> messageIds,
  // }) async {
  //   final result = (await _chatApi.chatRoomsMessagesSeenCreate(
  //     roomPk: roomId,
  //     messageSeenRequest: MessageSeenRequest(messageIds: messageIds),
  //   ))
  //       .data;

  //   return result;
  // }

  /// React to a message with a [reactionBody]
  /// Currently one user can react once, so if the user already reacted to a message
  /// the reaction will be removed instead
  /// If the user did not react to the message yet, the reaction will be added
  // Future<void> reactToAMessage({
  //   /// The reaction body, e.g. 'like emoji'
  //   required String reactionBody,

  //   /// The message id to react to
  //   required String messageId,

  //   /// The reaction metadata, e.g. `{ 'like emoji': 1 }`
  //   required Map<String, int> reactionMetadata,
  // }) async {
  //   if (reactionMetadata.containsKey(reactionBody)) {
  //     final message = (await _chatApi.chatRoomsMessagesRetrieve(
  //       id: messageId,
  //       roomPk: state.roomId,
  //     ))
  //         .data;

  //     final messageCurrentReactions = message?.reactions ?? [];
  //     final existingReaction = (messageCurrentReactions.firstWhereOrNull(
  //       (element) => element.body == reactionBody && element.isMe == true,
  //     ));
  //     if (existingReaction != null) {
  //       if (existingReaction.id != null) {
  //         await _removeReaction(messageId: existingReaction.id!);
  //       } else {
  //         throw Exception('Could not find message id for reaction');
  //       }
  //     } else {
  //       await _addReaction(
  //         messageId: messageId,
  //         reactionBody: reactionBody,
  //       );
  //     }
  //   } else {
  //     await _addReaction(
  //       messageId: messageId,
  //       reactionBody: reactionBody,
  //     );
  //   }
  // }

  /// Private method to add a reaction to a message
  // Future<void> _addReaction({
  //   required String messageId,
  //   required String reactionBody,
  // }) async {
  //   await _chatApi.chatRoomsMessagesCreate(
  //     roomPk: state.roomId,
  //     messageRequest: MessageRequest(
  //       body: reactionBody,
  //       isReaction: true,
  //       parentId: messageId,
  //     ),
  //   );
  // }

  // /// Private method to remove a reaction from a message
  // Future<void> _removeReaction({required String messageId}) async {
  //   await _chatApi.chatRoomsMessagesDestroy(
  //     roomPk: state.roomId,
  //     id: messageId,
  //   );
  // }

  /// Dispatches loading state, helpful for displaying loading indicator
  void startLoading() => emit(state.copyWith(loading: true));

  /// Dispatches loading state, helpful for displaying loading indicator
  void stopLoading() => emit(state.copyWith(loading: false));

  /// Dispatches loading state for image upload, helpful for displaying loading indicator
  // void startImageUploading() => emit(state.copyWith(uploadingImage: true));

  /// Dispatches loading state for image upload, helpful for displaying loading indicator
  // void stopImageUploading() => emit(state.copyWith(uploadingImage: false));
}
