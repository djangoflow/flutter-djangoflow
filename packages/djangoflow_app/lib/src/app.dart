import 'dart:async';

import 'package:auto_route/auto_route.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'analytics/analytics_route_observer.dart';
import 'analytics/app_analytics.dart';
import 'bloc/app_cubit.dart';
import 'bloc/bloc_exception_observer.dart';
import 'router/parser.dart';

// typedef RemoteMessageCallback = Function(
//     BuildContext context, StackRouter router, RemoteMessage? message);

typedef AppLifecycleCallback = Function(
    BuildContext context, StackRouter router, AppLifecycleState state);

typedef AppStateCallback = Function(
    BuildContext context, StackRouter router, AppState state);
typedef AppStateBuilder = Function(BuildContext context, Widget? widget,
    AppState state, RootStackRouter router);

class App extends StatefulWidget {
  final RootStackRouter Function() routerBuilder;
  final List<PageRouteInfo>? initialRoutes;
  final List<NavigatorObserver> navigatorObservers;
  final bool includePrefixMatches;

  final AppStateCallback? onFirstRun;
  final AppStateCallback? onStart;

  final String title;
  final ThemeData brightTheme;
  final ThemeData? darkTheme;

  // final RemoteMessageCallback? onMessage;
  // final RemoteMessageCallback? onNotificationTap;

  final AppStateBuilder? builder;

  final List<BlocProvider> providers;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final AppLifecycleCallback? onAppLifecycleStateChange;
  final String? Function(String? location)? routeLocationRewriter;

  const App({
    required this.routerBuilder,
    required this.title,
    required this.brightTheme,
    Key? key,
    this.builder,
    this.darkTheme,
    this.includePrefixMatches = true,
    this.initialRoutes,
    this.navigatorObservers = const [],
    this.onFirstRun,
    this.onStart,
    // this.onMessage,
    // this.onNotificationTap,
    this.providers = const [],
    this.scaffoldMessengerKey,
    this.onAppLifecycleStateChange,
    this.routeLocationRewriter,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();

  static Future<void> runGuarded({
    required App app,
    required Function(Object exception, StackTrace? stackTrace) onException,
    Function? onInit,
    String? sentryDSN,
  }) async =>
      runZonedGuarded(
        () async {
          WidgetsFlutterBinding.ensureInitialized();
          final packageInfo = await PackageInfo.fromPlatform();

          AppCubit.packageInfo = packageInfo;

          if (!kDebugMode && sentryDSN != null) {
            await SentryFlutter.init(
              (options) => options
                ..dsn = sentryDSN
                ..release = '${packageInfo.version}+${packageInfo.buildNumber}',
            );
          }

          FlutterError.onError = (details, {bool forceReport = false}) {
            debugPrint('>>> ${details.exception}, ${details.stack}');
            onException(details.exception, details.stack);
            if (!kDebugMode) {
              Sentry.captureException(
                details.exception,
                stackTrace: details.stack,
              );
            }
          };

          if (!kDebugMode) {
            ErrorWidget.builder = (FlutterErrorDetails error) {
              Zone.current.handleUncaughtError(error.exception, error.stack!);

              return const Offstage();
            };
          }
          await onInit?.call();
          // TODO (alexis): consider doing what AppRepository init did

          final storage = await HydratedStorage.build(
            storageDirectory: kIsWeb
                ? HydratedStorage.webStorageDirectory
                : await getTemporaryDirectory(),
          );
          HydratedBlocOverrides.runZoned(() => runApp(app),
              blocObserver: BlocExceptionObserver(onException: onException),
              storage: storage);
        },
        (exception, stackTrace) async {
          debugPrint('>>> $exception, $stackTrace');

          onException(exception, stackTrace);

          if (!kDebugMode) {
            await Sentry.captureException(exception, stackTrace: stackTrace);
          }
        },
      );
}

class _AppState extends State<App> with WidgetsBindingObserver {
  // StreamSubscription<RemoteMessage>? _messagingSubscription;
  // StreamSubscription<RemoteMessage>? _appOpenMessageSubscription;
  late RootStackRouter _router;

  @override
  void initState() {
    // _messagingSubscription =
    //     FirebaseMessaging.onMessage.listen(_onMessageReceived);
    // _setupInteractedNotification();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      AppAnalytics.instance.initATT();
    });
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _router = widget.routerBuilder();
    widget.onStart?.call(context, _router, AppCubit.instance.state);
  }

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<AppCubit>.value(value: AppCubit.instance),
          ...widget.providers
        ],
        child: BlocBuilder<AppCubit, AppState>(
          bloc: AppCubit.instance,
          builder: (context, state) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            scaffoldMessengerKey: widget.scaffoldMessengerKey,
            title: widget.title,
            routeInformationParser: RouteParser(_router.matcher,
                includePrefixMatches: widget.includePrefixMatches,
                locationRewriter: widget.routeLocationRewriter),
            theme: state.brightness == Brightness.light
                ? widget.brightTheme
                : widget.darkTheme ?? widget.brightTheme,
            routerDelegate: _router.delegate(
              initialRoutes: widget.initialRoutes,
              navigatorObservers: () => [
                AutoRouteObserver(),
                AnalyticsRouteObserver(),
                ...widget.navigatorObservers,
              ],
            ),
            builder: (context, child) => widget.builder != null
                ? widget.builder!(context, child, state, _router)
                : child,
            supportedLocales: const [
              Locale('en', ''),
            ],
            locale: Locale(state.locale, ''),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          ),
        ),
      );

  // Future<void> _setupInteractedNotification() async {
  //   RemoteMessage? initialMessage =
  //       await FirebaseMessaging.instance.getInitialMessage();
  //   _handleNotificationTap(initialMessage);
  //   _appOpenMessageSubscription =
  //       FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);
  // }
  //
  // void _handleNotificationTap(RemoteMessage? message) =>
  //     widget.onNotificationTap?.call(context, _router, message);
  //
  // void _onMessageReceived(RemoteMessage message) =>
  //     widget.onMessage?.call(context, _router, message);

  @override
  didChangeAppLifecycleState(AppLifecycleState state) =>
      widget.onAppLifecycleStateChange?.call(context, _router, state);

  // @override
  // void dispose() {
  //   _messagingSubscription?.cancel();
  //   _appOpenMessageSubscription?.cancel();
  //   super.dispose();
  // }
}
