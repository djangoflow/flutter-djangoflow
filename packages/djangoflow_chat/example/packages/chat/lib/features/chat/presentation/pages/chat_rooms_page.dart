import 'dart:math';

import 'package:chat/configurations/configurations.dart';
import 'package:chat/features/app/app.dart';
import 'package:chat/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:openapi/openapi.dart';
import 'package:progress_builder/progress_builder.dart';

class ChatRoomsPage extends StatelessWidget {
  const ChatRoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: [
          CircularProgressBuilder(
            action: (_) {
              final randomRoomNumber = Random().nextInt(1000);
              return context.read<ChatRoomsListBloc>().create(
                    roomRequest: RoomRequest(
                      title: 'Room $randomRoomNumber',
                      description: 'Description for room $randomRoomNumber',
                      isPublic: true,
                    ),
                  );
            },
            builder: (context, action, error) => IconButton(
              icon: const Icon(Icons.add),
              onPressed: action,
            ),
          ),
        ],
      ),
      body: ListViewBlocBuilder<ChatRoomsListBloc, Room, ChatRoomsListFilter>(
        withRefreshIndicator: true,
        emptyBuilder: (_, __) => const Center(
          child: Text('No chat rooms found'),
        ),
        errorBuilder: (_, __) => const Center(
          child: Text('Failed to load chat rooms'),
        ),
        loadingBuilder: (_, __) => const Center(
          child: ListTileShimmer(),
        ),
        itemBuilder: (context, state, index, chatRoom) {
          final lastMessage = chatRoom.lastMessage;

          final lastMessageBody = lastMessage?.body;
          final isImage =
              lastMessage?.images != null && lastMessage!.images!.isNotEmpty;
          return Container(
            key: ValueKey(chatRoom.id),
            margin: const EdgeInsets.symmetric(
              vertical: kPadding,
              horizontal: kPadding * 2,
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kPadding),
              ),
              tileColor: theme.colorScheme.primary.withOpacity(.1),
              title: Text(chatRoom.title),
              subtitle: ((lastMessageBody.isNotNullOrEmpty) || isImage == true)
                  ? Text('"${isImage == true ? "Picture" : lastMessageBody}"')
                  : null,
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    chatRoom.modified?.toHourMinute() ?? '',
                    style: textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: kPadding / 2,
                  ),
                  if ((chatRoom.messageNewCount ?? 0) > 0)
                    Container(
                      padding: const EdgeInsets.all(kPadding / 2),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(kPadding),
                      ),
                      child: Text(
                        chatRoom.messageNewCount.toString(),
                        style: textTheme.labelSmall,
                      ),
                    )
                ],
              ),
              onTap: () => chatRoom.id != null
                  ? context.router
                      .push(ChatMessagesListRoute(roomId: chatRoom.id!))
                      .then((value) {
                      final chatRoomsListBloc =
                          context.read<ChatRoomsListBloc>();
                      final filter = chatRoomsListBloc.state.filter;

                      return chatRoomsListBloc.reload(
                        filter?.copyWith(
                          offset: 0,
                        ),
                      );
                    })
                  : null,
            ),
          );
        },
      ),
    );
  }
}
