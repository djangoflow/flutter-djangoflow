import 'package:chat/configurations/router/router.dart';
import 'package:chat/features/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upgrader/upgrader.dart';

class HomePage extends StatelessWidget with AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => UpgradeAlert(
        child: BlocProvider<ChatRoomsListBloc>(
          create: (context) => ChatRoomsListBloc()
            ..load(
              const ChatRoomsListFilter(),
            ),
          child: this,
        ),
      );

  @override
  Widget build(BuildContext context) => AutoTabsRouter(
        routes: const [
          ChatRoomsRoute(),
          ProfileRouterRoute(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          // https://github.com/Milad-Akarie/auto_route_library/issues/981#issuecomment-1052004915
          final showBottomNav =
              context.topRouteMatch.meta['showBottomNav'] == true;

          return Column(
            children: [
              Expanded(child: child),
              if (showBottomNav)
                BottomNavigationBar(
                  currentIndex: tabsRouter.activeIndex,
                  onTap: (value) => tabsRouter.setActiveIndex(value),
                  items: items,
                ),
            ],
          );
        },
      );

  List<BottomNavigationBarItem> get items => const [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          activeIcon: Icon(Icons.chat_bubble),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ];
}
