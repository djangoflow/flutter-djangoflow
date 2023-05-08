import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:djangoflow_app_links/djangoflow_app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/app/app.dart';
import 'features/authentication/authentication.dart';
import 'configurations/configurations.dart';

// project specific
class ChatAppBuilder extends AppBuilder {
  ChatAppBuilder({
    super.key,
    super.onDispose,
    required AppRouter appRouter,
    required AppLinksRepository appLinksRepository,
    final String? initialDeepLink,
  }) : super(
          onInitState: (context) {
            final env = context.read<AppCubit>().state.environment;

            // TODO check if came from initial RemoteMessage

            // TODO update baseUrl based on state
          },
          repositoryProviders: [
            RepositoryProvider<AppLinksRepository>.value(
              value: appLinksRepository,
            ),
            // provide more reporsitories like DjangoflowFCMRepository etc
          ],
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit.instance,
            ),
            BlocProvider<AuthCubit>(
              create: (context) => AuthCubit.instance,
            ),
            BlocProvider<AppLinksCubit>(
              create: (context) => AppLinksCubit(
                null,
                context.read<AppLinksRepository>(),
              ),
              lazy: false,
            ),
            // TODO FCMBloc, RemoteConfigBloc etc can go here
          ],
          // listeners: [
          // TODO DjangoflowFCMBlocTokenListener, DjangoflowFCMBlocMessageListener
          // ],
          builder: (context) => LoginListenerWrapper(
            initialUser: context.read<AuthCubit>().state.user,
            onLogin: (context, user) {
              // TODO get and save fcm token
              // use DjangoflowFCMBloc to get token
              // TODO update analytics user related properties
              // TODO update ErrorReporters user properties
            },
            onLogout: (context) {
              // TODO remove Analytics user properties
              // TODO remove ErrorReporoters user properties

              // Upon logout all the routes will be pushed and
              // HomeRoute will be pushed so and then the AuthGuard will
              // Redirect to the loginRoute
              appRouter.pushAndPopUntil(
                const HomeRoute(),
                predicate: (route) => false,
              );
            },
            child: AppCubitConsumer(
              listenWhen: (previous, current) =>
                  previous.environment != current.environment,
              listener: (context, state) async {
                final authCubit = context.read<AuthCubit>();
                // logout when env changes
                if (authCubit.state.token != null) {
                  await authCubit.logout();
                }

                // TODO setup base url for env
                // ApiRepository.instance.updateBaseUrl(isSandbox? sandBoxBaseurl: liveBaseUrl)
                // setup environment for error reporters
                // ErrorReporter.instance.updateEnv(describeEnum(state));
              },
              builder: (context, appState) => MaterialApp.router(
                debugShowCheckedModeBanner: false,
                scaffoldMessengerKey:
                    DjangoflowAppSnackbar.scaffoldMessengerKey,
                title: kAppTitle,
                routeInformationParser: RouteParser(
                  appRouter.matcher,
                  includePrefixMatches: true,
                ),
                theme: AppTheme.light,
                darkTheme: AppTheme.dark,
                themeMode: appState.themeMode,
                locale: Locale(appState.locale, ''),
                supportedLocales: const [
                  Locale('en', ''),
                ],
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                routerDelegate: appRouter.delegate(
                  initialDeepLink: initialDeepLink, // only for Android and iOS
                  // if initialDeepLink found then don't provide initialRoutes
                  initialRoutes: kIsWeb || initialDeepLink != null
                      ? null
                      : [
                          SplashRoute(backgroundColor: Colors.white),
                        ],
                  // List of global navigation obsersers here
                  // Firebase Screen event observer
                  // SentryNavigationObserver
                  // navigatorObservers: () => {RouteObserver()},
                ),
                builder: (context, child) => AppResponsiveLayoutBuilder(
                  background: Container(
                    color: Colors.black87, // use theme color
                  ),
                  child: SandboxBanner(
                    isSandbox: appState.environment == AppEnvironment.sandbox,
                    child: child != null
                        ? kIsWeb
                            ? child
                            : AppLinksCubitListener(
                                listenWhen: (previous, current) =>
                                    current != null,
                                listener: (context, appLink) {
                                  final path = appLink?.path;
                                  if (path != null) {
                                    appRouter.navigateNamed(
                                      path,
                                      onFailure: (failure) {
                                        appRouter.navigate(const HomeRoute());
                                      },
                                    );
                                  }
                                },
                                child: child,
                              )
                        : const Offstage(),
                  ),
                ),
              ),
            ),
          ),
        );
}
