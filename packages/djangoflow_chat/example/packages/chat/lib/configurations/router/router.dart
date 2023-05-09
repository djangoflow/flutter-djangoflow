import 'package:chat/configurations/router/auth_guard.dart';
import 'package:chat/features/app/app.dart';
import 'package:chat/features/authentication/presentation/pages/login_page.dart';
import 'package:chat/features/chat/presentation/pages/chat_messages_page.dart';
import 'package:chat/features/chat/presentation/pages/chat_rooms_page.dart';
import 'package:chat/features/profile/profile.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

export 'package:auto_route/auto_route.dart';
export 'auth_guard.dart';
export 'route_parser.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  deferredLoading: true,
  routes: <AutoRoute>[
    AutoRoute(
      path: '/splash',
      page: SplashPage,
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
    AutoRoute(
      page: HomePage,
      path: '/',
      guards: [AuthGuard],
      children: [
        AutoRoute(
          path: 'chats',
          page: ChatRoomsPage,
          meta: {
            'showBottomNav': true,
          },
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileRouterPage,
          children: profileRoutes,
        ),
      ],
    ),
    AutoRoute(path: '/chats/:roomId', page: ChatMessagesListPage),
    // Or redirect to home
    AutoRoute(path: '*', page: UnknownRoutePage),
  ],
)
// extend the generated private router
class $AppRouter {}

Route<T> modalSheetBuilder<T>(
        BuildContext context, Widget child, CustomPage<T> page) =>
    ModalBottomSheetRoute(
      settings: page,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: (MediaQuery.of(context).size.height / 10) * 7,
      ),
      builder: (context) => child,
    );
