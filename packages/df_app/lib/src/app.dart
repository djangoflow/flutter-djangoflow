import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material;
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'analytics/analytics_repository.dart';
import 'router/parser.dart';

class App extends StatefulWidget {
  final Function(BuildContext, StackRouter)? onFirstRun;
  final List<PageRouteInfo>? initialRoutes;
  final List<NavigatorObserver> navigatorObservers;
  final RootStackRouter router;
  final String title;
  final ThemeData? fallbackTheme;
  final bool includePrefixMatches;
  final Function(RemoteMessage? message)? onMessage;
  final Function(RemoteMessage? message)? onNotificationTap;

  const App({
    Key? key,
    this.onFirstRun,
    this.initialRoutes,
    required this.router,
    required this.title,
    this.includePrefixMatches = true,
    this.fallbackTheme,
    this.navigatorObservers = const [],
    this.onMessage,
    this.onNotificationTap
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  StreamSubscription<RemoteMessage>? _messagingSubscription;
  StreamSubscription<RemoteMessage>? _appOpenMessageSubscription;

  @override
  void initState() {
    _messagingSubscription =
        FirebaseMessaging.onMessage.listen(_onMessageReceived);
    _setupInteractedNotification();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      AnalyticsRepository.instance.initATT();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider<AppCubit>.value(value: AppCubit.instance),
      BlocProvider<UserCubit>.value(value: UserCubit.instance),
    ],
    child: BlocBuilder<AppCubit, AppState>(
      bloc: AppCubit.instance,
      builder: (context, appState) => BlocListener<UserCubit, User?>(
        listenWhen: (prev, next) => next?.id != prev?.id,
        listener: _userCubitListener,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: AppSnackbar.scaffoldMessengerKey,
          title: widget.title,
          routeInformationParser: RouteParser(
            widget.router.matcher,
            includePrefixMatches: widget.includePrefixMatches,
          ),
          theme: appState.theme ?? widget.fallbackTheme,
          routerDelegate: widget.router.delegate(
            initialRoutes: widget.initialRoutes,
            navigatorObservers: () => [
              AppRouteObserver(),
            ],
          ),
          builder: (context, widget) => ResponsiveAppWrapper(
            child: appState is AppStarted &&
                appState.environment == AppEnvironment.sandbox
                ? material.Banner(
              location: BannerLocation.topStart,
              message: 'sandbox',
              color: Colors.orange,
              child: widget,
            )
                : widget!,
          ),
          supportedLocales: const [
            Locale('en', ''),
          ],
          locale: appState.locale,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ),
      ),
    ),
  );


  void _onMessageReceived(RemoteMessage message) => widget.onMessage?.call();

  Future<void> _setupInteractedNotification() async {
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();
    _handleNotificationTap(initialMessage);
    _appOpenMessageSubscription =
        FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);
  }

  void _handleNotificationTap(RemoteMessage? message) => widget.onNotificationTap?.call(message);

  @override
  void dispose() {
    _messagingSubscription?.cancel();
    _appOpenMessageSubscription?.cancel();
    super.dispose();
  }
}
