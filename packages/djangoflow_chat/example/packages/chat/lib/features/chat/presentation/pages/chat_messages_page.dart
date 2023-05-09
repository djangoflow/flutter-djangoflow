import 'package:chat/configurations/configurations.dart';
import 'package:chat/features/app/data/api_repository/api_repository.dart';
import 'package:chat/features/authentication/blocs/auth_cubit/auth_cubit.dart';
import 'package:chat/utils/utils.dart';
import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_chat/blocs/chat_websocket_cubit/chat_websocket_cubit.dart';
import 'package:djangoflow_chat/blocs/chat_websocket_cubit/chat_websocket_state.dart';
import 'package:djangoflow_chat/djangoflow_chat.dart';
import 'package:djangoflow_chat/models/anonymous_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as flutter_chat_ui;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:openapi/openapi.dart';

class ChatMessagesListPage extends StatefulWidget with AutoRouteWrapper {
  const ChatMessagesListPage({super.key, @pathParam required this.roomId});

  final String roomId;

  @override
  Widget wrappedRoute(BuildContext context) {
    final token = context.read<AuthCubit>().state.token;
    final env = context.read<AppCubit>().state.environment;

    return MultiBlocProvider(
      key: ValueKey(roomId),
      providers: [
        BlocProvider<ChatWebsocketCubit>(
          create: (context) => ChatWebsocketCubit(
            AppDomain.getCurrentWsUrl(env),
            token,
            roomId: roomId,
          )..connect(),
        ),
        BlocProvider<ChatCubit>(
          create: (context) =>
              ChatCubit(ApiRepository.instance.chat, roomId: roomId)
                ..loadData(),
        ),
      ],
      child: this,
    );
  }

  @override
  State<ChatMessagesListPage> createState() => _ChatMessagesListPageState();
}

class _ChatMessagesListPageState extends State<ChatMessagesListPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context.read<ChatWebsocketCubit>().connect();
    } else {
      context.read<ChatWebsocketCubit>().disconnect();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final websocketConnectionStateMessage = context.select(
      (ChatWebsocketCubit c) => c.state.connectionStateMessage,
    );
    return BlocListener<ChatWebsocketCubit, ChatWebsocketState>(
      listenWhen: (previous, current) => previous.message != current.message,
      listener: (context, state) {
        final chatCubit = context.read<ChatCubit>();
        final data = state.message;
        if (data != null) {
          for (final u in data['users'] ?? []) {
            final user = RoomUser.fromJson(u);
            chatCubit.addRoomUser(user);
          }
          for (final m in data['messages'] ?? []) {
            final message = Message.fromJson(m);
            chatCubit.addMessage(message);
          }
        }
      },
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
                      roomId: widget.roomId, text: messageText.text),
                  onEndReached: () =>
                      chatCubit.loadMoreMessages(roomId: widget.roomId),
                  isAttachmentUploading: chatState.uploadingImage,
                );

          return Scaffold(
            appBar: AppBar(
              title: Text(chatState.room?.title ?? chatState.roomId),
              leading: const AutoLeadingButton(),
            ),
            body: Column(
              children: [
                if (websocketConnectionStateMessage != null)
                  Container(
                    color: scheme.surface,
                    child: Text(websocketConnectionStateMessage),
                  ),
                Expanded(child: child),
              ],
            ),
          );
        },
      ),
    );
  }
}
