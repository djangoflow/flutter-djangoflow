import 'dart:async';

import 'package:chat/features/authentication/authentication.dart';

import 'router.dart';

bool get isAuthenticated => AuthCubit.instance.state.token != null;

class AuthGuard extends AutoRedirectGuard {
  late StreamSubscription<AuthState> _subscription;

  AuthGuard() {
    _subscription = AuthCubit.instance.stream.listen(
      (state) {
        // Don't reevaluate if only token updated but not user object
        // Without this reevaulate gets called twice and pushes routes twice
        if (state.token != null && state.user != null) {
          reevaluate();
        } else if (state.token == null && state.user == null) {
          reevaluate(
              strategy:
                  const ReevaluationStrategy.removeAllAndPush(HomeRoute()));
        }
      },
    );
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async => isAuthenticated;
}
