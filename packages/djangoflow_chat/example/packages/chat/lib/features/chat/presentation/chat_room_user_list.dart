import 'package:chat/configurations/configurations.dart';
import 'package:chat/features/app/app.dart';
import 'package:chat/features/profile/profile.dart';
import 'package:chat/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:openapi/openapi.dart';

import 'package:progress_builder/progress_builder.dart';

class ChatRoomsUserList extends StatelessWidget {
  const ChatRoomsUserList({
    super.key,
    required this.roomId,
    this.onAddUsersPressed,
  });

  final String roomId;
  final Future<void> Function()? onAddUsersPressed;

  @override
  Widget build(BuildContext context) =>
      BlocProvider<ChatRoomsUsersNamesListBloc>(
        create: (context) => ChatRoomsUsersNamesListBloc()
          ..load(
            ChatRoomsUsersNamesListFilter(roomPk: roomId),
          ),
        child: ListViewBlocBuilder<ChatRoomsUsersNamesListBloc, UserName,
            ChatRoomsUsersNamesListFilter>(
          headerBuilder: (context, state) {
            final totalMembers = state.data?.length;

            return ListHeader(
              text:
                  '${totalMembers ?? ''} Member${totalMembers != null && totalMembers > 1 ? 's' : ''}',
              trailing: onAddUsersPressed != null
                  ? CircularProgressBuilder(
                      action: (_) => onAddUsersPressed!.call(),
                      builder: (context, action, error) => IconButton(
                        icon: const Icon(CupertinoIcons.person_add_solid),
                        onPressed: (state is! Loading) ? action : null,
                      ),
                    )
                  : null,
            );
          },
          itemBuilder: (context, _, __, item) => ListTile(
            leading: SizedBox(
              height: kPadding * 5,
              width: kPadding * 5,
              child: UserAvatar(
                imageLink: null,
                placeHolder: PlaceholderText(
                  text: item.displayName?.toInitialString() ?? '',
                ),
              ),
            ),
            title: Row(
              children: [
                Flexible(
                  child: Text(
                    item.displayName ?? '- private -',
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
          emptyBuilder: (context, _) => Container(),
          loadingBuilder: (context, _) => const CircularProgressIndicator(),
        ),
      );
}
