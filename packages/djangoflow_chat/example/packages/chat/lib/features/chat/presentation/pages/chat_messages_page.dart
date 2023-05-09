import 'package:chat/configurations/configurations.dart';
import 'package:chat/features/app/data/api_repository/api_repository.dart';
import 'package:chat/utils/utils.dart';
import 'package:djangoflow_chat/djangoflow_chat.dart';
import 'package:djangoflow_chat/models/anonymous_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as flutter_chat_ui;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatMessagesListPage extends StatelessWidget {
  const ChatMessagesListPage({super.key, @pathParam required this.roomId});

  final String roomId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return BlocProvider<ChatCubit>(
      key: ValueKey(roomId),
      create: (context) =>
          ChatCubit(ApiRepository.instance.chat, roomId: roomId)..loadData(),
      child: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, chatState) {
          final chatCubit = context.read<ChatCubit>();
          final messages = chatState.messages
              .map((e) => e.toChatMesage(chatState.roomUsers))
              .toList(growable: false)
              .whereType<types.Message>()
              .toList();

          final child = chatState.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : flutter_chat_ui.Chat(
                  theme: flutter_chat_ui.DefaultChatTheme(
                    backgroundColor: scheme.surface,
                    messageInsetsVertical: kPadding,
                    messageInsetsHorizontal: kPadding * 2,
                    inputPadding: const EdgeInsets.all(kPadding * 2),
                    userAvatarTextStyle: theme.textTheme.titleSmall!.copyWith(
                      color: scheme.onSecondary,
                    ),
                    inputTextDecoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: kPadding,
                        horizontal: kPadding * 2,
                      ),
                    ),
                    inputContainerDecoration: BoxDecoration(
                      color: scheme.surfaceTint.withOpacity(.10),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(kPadding),
                        topRight: Radius.circular(kPadding),
                      ),
                    ),
                    receivedMessageBodyTextStyle: theme.textTheme.bodyMedium!,
                    sentMessageBodyTextStyle: theme.textTheme.bodyMedium!,
                    inputBackgroundColor: scheme.surface,
                    inputTextStyle: theme.textTheme.bodyMedium!,
                    inputTextColor: scheme.onSurface,
                    secondaryColor: scheme.secondaryContainer,
                    primaryColor: scheme.primaryContainer,
                    userAvatarNameColors: [scheme.secondary],
                  ),
                  messages: messages,
                  user: (chatState.me ?? AnynomousUser()).toChatUser(),
                  showUserNames: true,
                  showUserAvatars: true,
                  onSendPressed: (messageText) => chatCubit.sendTextMessage(
                      roomId: roomId, text: messageText.text),
                  onEndReached: () =>
                      chatCubit.loadMoreMessages(roomId: roomId),
                  isAttachmentUploading: chatState.uploadingImage,
                );

          return Scaffold(
            appBar: AppBar(
              title: Text(chatState.room?.title ?? chatState.roomId),
              leading: const AutoLeadingButton(),
            ),
            body: child,
          );
        },
      ),
    );
  }
}
