import 'package:chat/configurations/router/router.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class HomePage extends StatelessWidget with AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => UpgradeAlert(
        child: this,
      );

  @override
  Widget build(BuildContext context) => AutoTabsRouter(
        routes: const [
          BooksRouterRoute(),
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
          icon: Icon(Icons.book),
          label: 'Books',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ];
}
