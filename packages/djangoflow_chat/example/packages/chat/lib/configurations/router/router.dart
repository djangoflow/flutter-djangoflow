import 'package:chat/configurations/router/auth_guard.dart';
import 'package:chat/features/app/app.dart';
import 'package:chat/features/authentication/presentation/pages/login_page.dart';
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
    RedirectRoute(path: '/', redirectTo: '/home'),
    AutoRoute(
      page: HomePage,
      path: '/home',
      guards: [AuthGuard],
      children: [
        AutoRoute(
          path: 'profile',
          page: ProfileRouterPage,
          children: profileRoutes,
        ),
      ],
    ),
    AutoRoute(
      path: '/splash',
      page: SplashPage,
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
    ),
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
