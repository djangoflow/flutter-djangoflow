import 'dart:math';

import 'package:chat/configurations/router/router.dart';
import 'package:chat/features/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:openapi/openapi.dart';
import 'package:progress_builder/progress_builder.dart';

class ChatRoomsPage extends StatelessWidget {
  const ChatRoomsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Chats'),
          actions: [
            CircularProgressBuilder(
              action: (_) => context.read<ChatRoomsListBloc>().create(
                  roomRequest:
                      RoomRequest(title: 'Room ${Random().nextInt(100)}')),
              builder: (context, action, error) => IconButton(
                icon: const Icon(Icons.add),
                onPressed: action,
              ),
            ),
          ],
        ),
        body: ListViewBlocBuilder<ChatRoomsListBloc, Room, ChatRoomsListFilter>(
          emptyBuilder: (_, __) => const Center(
            child: Text('No chat rooms found'),
          ),
          errorBuilder: (_, __) => const Center(
            child: Text('Failed to load chat rooms'),
          ),
          loadingBuilder: (_, __) => const Center(
            child: CircularProgressIndicator(),
          ),
          itemBuilder: (context, state, index, chatRoom) => ListTile(
            title: Text(chatRoom.title),
            subtitle: Text(chatRoom.description ?? ''),
            onTap: () => chatRoom.id != null
                ? context.router
                    .push(ChatMessagesListRoute(roomId: chatRoom.id!))
                : null,
          ),
        ),
      );
}
