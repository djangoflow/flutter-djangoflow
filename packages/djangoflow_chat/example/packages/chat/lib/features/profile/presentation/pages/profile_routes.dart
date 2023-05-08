import 'package:chat/configurations/router/router.dart';
import 'package:chat/features/profile/profile.dart';

const profileRoutes = [
  AutoRoute(
    path: '',
    page: ProfilePage,
    initial: true,
    meta: {
      'showBottomNav': true,
    },
  ),
  AutoRoute(
    page: ProfileEditPage,
    path: 'edit',
  ),
];
